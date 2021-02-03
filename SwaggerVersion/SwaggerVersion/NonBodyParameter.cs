using Microsoft.OpenApi.Models;

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