using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;

namespace RegistroATM.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "ASP.NET MVC";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Upload(string descripcion, HttpPostedFileBase fichero)
        {
            fichero.SaveAs(Path.Combine(@"c:\inetpub\Archivos\", Path.GetFileName(fichero.FileName)));

            return RedirectToAction("Index", "Home");
        }
    }


}
