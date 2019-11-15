using Microsoft.AspNetCore.Mvc;

namespace App
{
    [ApiController]
    public class WeatherForecastController : ControllerBase
    {
        [HttpGet("/")]
        public IActionResult Get()
        {
            return Ok(new {
                version = 1,
            });
        }
    }
}
