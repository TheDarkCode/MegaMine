﻿using MegaMine.Core.Common;
using Microsoft.AspNet.Mvc;

namespace MegaMine.Web.Controllers
{
    public class HomeController : Controller
    {
        public  IActionResult Index()
        {
            ViewBag.EnvironmentName = SiteSettings.EnvironmentName;
            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
