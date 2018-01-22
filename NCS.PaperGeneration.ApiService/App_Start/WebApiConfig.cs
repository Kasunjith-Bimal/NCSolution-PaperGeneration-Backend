﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using NCS.PaperGeneration.DependencyResolution;
using Unity;

namespace NCS.PaperGeneration.ApiService
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            var container = new UnityContainer();
            IocRegister.RegisterAll(container);
            config.DependencyResolver = new UnityResolver(container);

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}