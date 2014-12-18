using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using RegistroATM.Models;

namespace RegistroATM.Controllers
{

    [HandleError]
    public class AccountController : Controller
    {
        UsuariosEntities usu = new UsuariosEntities();
        public IFormsAuthenticationService FormsService { get; set; }
        public IMembershipService MembershipService { get; set; }

        protected override void Initialize(RequestContext requestContext)
        {
            if (FormsService == null) { FormsService = new FormsAuthenticationService(); }
            if (MembershipService == null) { MembershipService = new AccountMembershipService(); }

            base.Initialize(requestContext);
        }

        // **************************************
        // URL: /Account/LogOn
        // **************************************

        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string user = model.UserName;
                    string pass = model.Password;
                    string tipo = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Privilegio.ToString();

                    switch (tipo)
                    {
                        case "Tecnico":
                            FormsService.SignIn(model.UserName, model.RememberMe);
                            Session["TipoCuenta"] = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Privilegio.ToString();
                            Session["Tec"] = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Nombre.ToString() + " " + usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Apellido.ToString();
                            Session["Estado"] = "Abierta";
                            return RedirectToAction("Index", "Home");
                            break;

                        case "Administrador":
                            FormsService.SignIn(model.UserName, model.RememberMe);
                            Session["TipoCuenta"] = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Privilegio.ToString();
                            Session["NombreAdministrador"] = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Nombre.ToString() + " " + usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Apellido.ToString(); ;
                            Session["Estado"] = "Abierta";
                            return RedirectToAction("Index", "Home");
                            break;

                        case "Visualizador":
                            FormsService.SignIn(model.UserName, model.RememberMe);
                            Session["TipoCuenta"] = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Privilegio.ToString();
                            Session["NombreVisualizador"] = usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Nombre.ToString() + " " + usu.Usuario.SingleOrDefault(x => x.Nombre == user && x.Contraseña == pass).Apellido.ToString(); ;
                            Session["Estado"] = "Abierta";
                            return RedirectToAction("Index", "Home");
                            break;
                    }

                }
                else
                {
                    return View(model);
                }
            }
            catch
            {
                Session["Estado"] = "Cerrada";
                Session["TipoCuenta"] = "";
                ModelState.AddModelError("", "El nombre de usuario o la contraseña especificados son incorrectos.");
            }
            // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
            return View(model);
        }

        // **************************************
        // URL: /Account/LogOff
        // **************************************

        public ActionResult LogOff()
        {
            FormsService.SignOut();
            Session["Estado"] = "Cerrada";
            Session["TipoCuenta"] = null;
            Session["NombreTecnico"] = null;
            Session["NombreAdministrador"] = null;
            Session["NombreVisualizador"] = null;
            return RedirectToAction("Index", "Home");
        }

        // **************************************
        // URL: /Account/Register
        // **************************************

        public ActionResult Register()
        {
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View();
        }

        [HttpPost]
        public ActionResult Register(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                // Intento de registrar al usuario
                MembershipCreateStatus createStatus = MembershipService.CreateUser(model.UserName, model.Password, model.Email);

                if (createStatus == MembershipCreateStatus.Success)
                {
                    FormsService.SignIn(model.UserName, false /* createPersistentCookie */);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", AccountValidation.ErrorCodeToString(createStatus));
                }
            }

            // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View(model);
        }

        // **************************************
        // URL: /Account/ChangePassword
        // **************************************

        [Authorize]
        public ActionResult ChangePassword()
        {
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View();
        }

        [Authorize]
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordModel model)
        {
            if (ModelState.IsValid)
            {
                if (MembershipService.ChangePassword(User.Identity.Name, model.OldPassword, model.NewPassword))
                {
                    return RedirectToAction("La contraseña ha sido cambiada correctamente");
                }
                else
                {
                    ModelState.AddModelError("", "La contraseña actual es incorrecta o la nueva contraseña no es válida.");
                }
            }

            // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View(model);
        }

        // **************************************
        // URL: /Account/ChangePasswordSuccess
        // **************************************

        public ActionResult ChangePasswordSuccess()
        {
            return View();
        }

    }
}
