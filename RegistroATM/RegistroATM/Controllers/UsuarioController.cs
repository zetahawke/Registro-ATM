using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RegistroATM.Models;

namespace RegistroATM.Controllers
{
    public class UsuarioController : Controller
    {
        UsuariosEntities usu = new UsuariosEntities();
        //
        // GET: /Usuario/

        public ActionResult Index()
        {
            return View(usu.Usuario.ToList());
        }

        //
        // GET: /Usuario/Details/5

        public ActionResult Details(string id)
        {
            return View(usu.Usuario.SingleOrDefault(x => x.Usuario1.Equals(id)));
        }

        //
        // GET: /Usuario/Create

        public ActionResult Create()
        {
            return View();           
        } 

        //
        // POST: /Usuario/Create

        [HttpPost]
        public ActionResult Create(Usuario u)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    usu.AddToUsuario(u);
                    usu.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    return View(u);
                }
            }
            catch
            {
                return View(u);
            }
        }
        
        //
        // GET: /Usuario/Edit/5
 
        public ActionResult Edit(string id)
        {
            var UsuarioEdit = usu.Usuario.SingleOrDefault(x => x.Usuario1 == id);
            return View(UsuarioEdit);
        }

        //
        // POST: /Usuario/Edit/5

        [HttpPost]
        public ActionResult Edit(string id, Usuario u)
        {
            u = usu.Usuario.SingleOrDefault(x => x.Usuario1 == id);
            try
            {
                // TODO: Add update logic here
                UpdateModel(u);
                usu.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(u);
            }
        }

        //
        // GET: /Usuario/Delete/5
 
        public ActionResult Delete(string id)
        {
            try
            {
                return View(usu.Usuario.SingleOrDefault(x => x.Usuario1.Equals(id)));
            }
            catch 
            {
                return RedirectToAction("Index");
            }
        }

        //
        // POST: /Usuario/Delete/5

        [HttpPost]
        public ActionResult Delete(string id, Usuario u)
        {
            try
            {


                u = usu.Usuario.SingleOrDefault(x => x.Usuario1.Equals(id));
                try
                {
                    // TODO: Add delete logic here
                    usu.DeleteObject(u);
                    usu.SaveChanges();
                    return RedirectToAction("Index");
                }
                catch
                {
                    return View();
                }
            }
            catch {
                return RedirectToAction("Index");
            }
        }
    }
}
