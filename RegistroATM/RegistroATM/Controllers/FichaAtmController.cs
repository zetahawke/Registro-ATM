using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RegistroATM.Models;

namespace RegistroATM.Controllers
{
    public class FichaAtmController : Controller
    {
        FichasATMEntities ficha = new FichasATMEntities();
        //
        // GET: /FichaAtm/

        public ActionResult Index()
        {
            return View(ficha.FichaATM.ToList());
        }

        //
        // GET: /FichaAtm/Details/5

        public ActionResult Details(int id)
        {
            return View(ficha.FichaATM.SingleOrDefault(x => x.NumeroAtm.Equals(id)));
        }

        //
        // GET: /FichaAtm/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /FichaAtm/Create

        [HttpPost]
        public ActionResult Create(FichaATM fi)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    ficha.AddToFichaATM(fi);
                    ficha.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    return View(fi);
                }
            }
            catch
            {
                return View(fi);
            }
        }
        
        //
        // GET: /FichaAtm/Edit/5
 
        public ActionResult Edit(int id)
        {
            var FichaEdit = ficha.FichaATM.SingleOrDefault(x => x.NumeroAtm == id);
            return View(FichaEdit);
        }

        //
        // POST: /FichaAtm/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FichaATM fi)
        {
            fi = ficha.FichaATM.SingleOrDefault(x => x.NumeroAtm == id);
            try
            {
                // TODO: Add update logic here
                UpdateModel(fi);
                ficha.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(fi);
            }
        }

        //
        // GET: /FichaAtm/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View(ficha.FichaATM.SingleOrDefault(x => x.NumeroAtm.Equals(id)));
        }

        //
        // POST: /FichaAtm/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FichaATM fi)
        {
            fi = ficha.FichaATM.SingleOrDefault(x => x.NumeroAtm.Equals(id));
            try
            {
                // TODO: Add delete logic here
                ficha.DeleteObject(fi);
                ficha.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
