﻿using System.Reflection;
using System.Web.Http;
using Autofac;
using Autofac.Integration.WebApi;
using Autofac.Integration.SignalR;
using BusinessLayer.Repositories;
using BusinessLayer.DTOs;
using Microsoft.AspNet.SignalR;
using BusinessLayer.PushService;

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


            //builder.RegisterGeneric(typeof(Repository<>)).AsSelf();

            builder
                .RegisterGeneric(typeof(Repository<>))
                .As(typeof(IRepository<>))
                .InstancePerDependency();

            builder.RegisterType<Push>()
                .As<IPush>();

            var conatiner = builder.Build();
            conatiner.Resolve<IPush>();
            config.DependencyResolver = new AutofacWebApiDependencyResolver(conatiner);



            // SignalR Hub configurations .. 
            var HubBuilder = new ContainerBuilder();
            HubBuilder.RegisterHubs(Assembly.GetExecutingAssembly());

            HubBuilder
                .RegisterGeneric(typeof(Repository<>))
                .As(typeof(IRepository<>))
                .InstancePerDependency();

            HubBuilder.RegisterType<Push>()
                .As<IPush>();

            var hubContainer = HubBuilder.Build();
            GlobalHost.DependencyResolver = new AutofacDependencyResolver(hubContainer);
        }
    }
}
