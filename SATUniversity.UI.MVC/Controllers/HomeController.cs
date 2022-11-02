using Microsoft.AspNetCore.Mvc;
using SATUniversity.UI.MVC.Models;
using System.Diagnostics;

namespace SATUniversity.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Courses()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }

        public IActionResult Scheduling()
        {
            return View();
        }

        public IActionResult HouseSorting()
        {
            return View();
        }


        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}