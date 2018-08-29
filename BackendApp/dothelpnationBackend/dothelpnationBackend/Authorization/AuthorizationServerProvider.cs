using System;
using System.Collections.Generic;
using System.Linq;
using DataAccessLayer.DataContext;
using System.Security.Claims;
using Microsoft.Owin.Security;
using System.Security.Principal;
using Microsoft.Owin.Security.OAuth;
using System.Threading.Tasks;
using DataAccessLayer.Entities;

namespace dothelpnationBackend.Authorization
{
    public class AuthorizationServerProvider : OAuthAuthorizationServerProvider
    {
        dynamic BasicApplicationClient = new { Id = "dothelpnation" , Secret = "**dothelpmobile" , RedirectUrl = (object)null };
        dothelpnationMySqlContext _context = new dothelpnationMySqlContext();
        user access_request;

        public override Task ValidateClientRedirectUri(OAuthValidateClientRedirectUriContext context)
        {
            context.Validated(BasicApplicationClient.RedirectUrl);
            return Task.FromResult(0);
        }

        public override Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            string clientId;
            string clientSecret;

            if (context.TryGetBasicCredentials(out clientId, out clientSecret) ||
                context.TryGetFormCredentials(out clientId, out clientSecret))
            {
                if (clientId == BasicApplicationClient.Id && clientSecret == BasicApplicationClient.Secret)
                {
                    context.Validated();
                }
            }
                return Task.FromResult(0);
        }

        public override Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {
            var identity = new ClaimsIdentity(context.Options.AuthenticationType);
            identity.AddClaim(new Claim("sub", context.UserName));

            // username mapped for Email
            access_request = _context.users.Where(x => x.email == context.UserName && x.password == context.Password).FirstOrDefault();

            if (access_request != null)
            {
                identity.AddClaim(new Claim("role", "Employee"));
                identity.AddClaim(new Claim("guid", access_request.id.ToString()));
                var props = new AuthenticationProperties(new Dictionary<string, string>
                {
                    {
                        "UserName" , access_request.name
                    },
                    {
                        "IsTokenIssued" , true.ToString()
                    },
                });
                var ticket = new AuthenticationTicket(identity, props);
                context.Validated(ticket);
            }
            else
            {
                context.SetError("invalid_grant", "The user name or password is incorrect");
                return Task.FromResult(0);
            }
            return Task.FromResult<object>(null);
        }


        public override Task GrantClientCredentials(OAuthGrantClientCredentialsContext context)
        {
            var identity = new ClaimsIdentity(new GenericIdentity(context.ClientId, OAuthDefaults.AuthenticationType),
                context.Scope.Select(x => new Claim("urn:oauth:scope", x)));
            context.Validated(identity);
            return Task.FromResult(0);
        }


        public override Task TokenEndpoint(OAuthTokenEndpointContext context)
        {
            foreach (KeyValuePair<string , string> property in context.Properties.Dictionary)
            {
                context.AdditionalResponseParameters.Add(property.Key, property.Value);
            }

            return Task.FromResult<object>(null);
        }


        public override Task GrantRefreshToken(OAuthGrantRefreshTokenContext context)
        {
            return base.GrantRefreshToken(context);
        }
    }
}