using Blog.Attributes;
using Microsoft.AspNetCore.Mvc;

namespace Blog.Controllers;

[ApiController]
[Route("")]
public class HomeController : Controller
{
    [HttpGet("")]
    [ApiKey]
    public IActionResult Get([FromServices] IConfiguration config)
    {
        var env = config.GetValue<string>("Env");
        return Ok(new {Status = "On", Name= "Blog", Version = "1.0.0", Environment = env});
    }
}