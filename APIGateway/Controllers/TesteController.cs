using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Pedido.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TesteController : ControllerBase
    {
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return Ok(new[] { "Item 1", "Item 2" });
        }
    }
}