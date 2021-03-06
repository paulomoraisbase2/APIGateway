﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Catalogo.API.V2.Controllers
{
    [ApiController]
    [ApiVersion("2.0")]
    [Route("api/[controller]")]
    public class TesteController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            "teste", "sdfas", "sdf", "asdfa", "fasdf", "fdsaf", "fadsf", "fdaf", "fsdfa", "asdf"
        };

        [HttpGet]
        public IEnumerable<object> Get()
        {
            var rng = new Random();
            return Enumerable.Range(1, 5).Select(index => new
            {
                tes = DateTime.Now.AddDays(index),
                asd = rng.Next(-20, 55),
                fsdaf = Summaries[rng.Next(Summaries.Length)]
            })
            .ToArray();
        }
    }
}