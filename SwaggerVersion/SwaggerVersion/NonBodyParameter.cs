using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SwaggerVersion
{
    public class NonBodyParameter : OpenApiParameter
    {
        /// <summary>
        /// Default.
        /// </summary>
        public object Default { get; set; }
    }
}