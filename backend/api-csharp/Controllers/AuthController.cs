using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("[controller]")]
public class AuthController : ControllerBase
{
    [HttpGet("status")]
    public IActionResult Status() => Ok(new { mensaje = "C# API funcionando" });
}
