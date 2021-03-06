﻿// <auto-generated/>
// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ValuesController.cs" company="NCSolution">
//   Copyright 2018
// </copyright>
// <summary>
//   The values controller.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace NCS.PaperGeneration.ApiService.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Net.Http;
    using System.Web.Http;

    /// <summary>
    /// The values controller.
    /// </summary>
    public class ValuesController : ApiController
    {
        
        /// <summary>
        /// The get.
        /// </summary>
        /// <returns>
        /// The IEnumerable
        /// </returns>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        /// <summary>
        /// The get.
        /// </summary>
        /// <param name="id">
        /// The id.
        /// </param>
        /// <returns>
        /// The <see cref="string"/>.
        /// </returns>
        public string Get(int id)
        {
            return "value";
        }
        
        /// <summary>
        /// The post.
        /// </summary>
        /// <param name="value">
        /// The value.
        /// </param>
        public void Post([FromBody]string value)
        {
        }

        /// <summary>
        /// The put.
        /// </summary>
        /// <param name="id">
        /// The id.
        /// </param>
        /// <param name="value">
        /// The value.
        /// </param>
        public void Put(int id, [FromBody]string value)
        {
        }

        /// <summary>
        /// The delete.
        /// </summary>
        /// <param name="id">
        /// The id.
        /// </param>
        public void Delete(int id)
        {
        }
    }
}
