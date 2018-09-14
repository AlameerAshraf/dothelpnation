﻿using System.Reflection;
using System.Web.Http;
using Autofac;
using Autofac.Integration.WebApi;
using Autofac.Integration.SignalR;
using BusinessLayer.Repositories;
using BusinessLayer.DTOs;

namespace dothelpnationBackend
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RegisterAutofac();
            AutoMapperConfiguration.Configure();
        }


        void RegisterAutofac()
        {
            var config = GlobalConfiguration.Configuration;
            config.Formatters.JsonFormatter
                .SerializerSettings
                .ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;

            var builder = new ContainerBuilder();

            // Register Api Controllers 
            builder.RegisterApiControllers(Assembly.GetExecutingAssembly());
            builder.RegisterWebApiFilterProvider(config);
            builder.RegisterWebApiModelBinderProvider();
            builder.RegisterHubs(Assembly.GetExecutingAssembly());


            //builder.RegisterGeneric(typeof(Repository<>)).AsSelf();

            builder
                .RegisterGeneric(typeof(Repository<>))
                .As(typeof(IRepository<>))
                .InstancePerDependency();

            var conatiner = builder.Build();
            config.DependencyResolver = new AutofacWebApiDependencyResolver(conatiner);
        }
    }
}
