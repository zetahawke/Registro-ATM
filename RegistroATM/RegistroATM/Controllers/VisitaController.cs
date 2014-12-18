using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RegistroATM.Models;
using System.IO;
namespace RegistroATM.Controllers
{
    public class VisitaController : Controller
    {

        VisitaEntities vis = new VisitaEntities();
        //
        // GET: /Visita/

        public ActionResult Index()
        {
            return View(vis.Visita.ToList());
        }

        //
        // GET: /Visita/Details/5

        public ActionResult Details(int id)
        {
            Session["FotoMenu"] = vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id)).FotoMenu.ToString();
            Session["FotoVoucher"] = vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id)).FotoVoucher.ToString();
            return View(vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id)));
        }

        //
        // GET: /Visita/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Visita/Create

        [HttpPost]
        public ActionResult Create(Visita vi, int eidi, HttpPostedFileBase foto, HttpPostedFileBase foto2)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    vis.AddToVisita(vi);
                    vis.SaveChanges();

                    string folderName = @"C:\blog\registro\IMG/";
                    string pathString = System.IO.Path.Combine(folderName, "ID_" + eidi + "_");
                    System.IO.Directory.CreateDirectory(pathString);
                    foto.SaveAs(@"C:\blog\registro\IMG/" + "ID_" + eidi + "_" + "/FotoMenu_ID_" + eidi + ".jpg");
                    foto2.SaveAs(@"C:\blog\registro\IMG/" + "ID_" + eidi + "_" + "/FotoVoucher_ID_" + eidi + ".jpg");
                    return RedirectToAction("Index");
                        
                }
                else
                {
                    return View(vi);
                }
            }
            catch
            {
                return View(vi);
            }
        }

        
        //
        // GET: /Visita/Edit/5
 
        public ActionResult Edit(int id)
        {
            var VisitaEdit = vis.Visita.SingleOrDefault(x => x.ID_Visita == id);
            return View(VisitaEdit);
        }

        //
        // POST: /Visita/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, Visita vi, HttpPostedFileBase foto, HttpPostedFileBase foto2)
        {
            vi = vis.Visita.SingleOrDefault(x => x.ID_Visita == id);
            try
            {
                // TODO: Add update logic here
                UpdateModel(vi);
                vis.SaveChanges();

                foto.SaveAs(@"C:\blog\registro\IMG/" + "ID_" + id + "_" + "/FotoMenu_ID_" + id + ".jpg");
                foto2.SaveAs(@"C:\blog\registro\IMG/" + "ID_" + id + "_" + "/FotoVoucher_ID_" + id + ".jpg");
                return RedirectToAction("Index");
            }
            catch
            {
                return View(vi);
            }
        }

        //
        // GET: /Visita/Delete/5
 
        public ActionResult Delete(int id)
        {
            Session["FotoMenu"] = vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id)).FotoMenu.ToString();
            Session["FotoVoucher"] = vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id)).FotoVoucher.ToString();
            return View(vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id)));
        }

        //
        // POST: /Visita/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, Visita vi)
        {
            vi = vis.Visita.SingleOrDefault(x => x.ID_Visita.Equals(id));
            try
            {
                // TODO: Add delete logic here
                vis.DeleteObject(vi);
                vis.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
