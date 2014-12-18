<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.Usuario>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Modificar Usuario
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <% if (Session["Estado"] == null)
   {
       Session["Estado"] = "Cerrada";
      
   } 
     %>
    
     <% 
    string tipocuenta = "";

    if (Session["Estado"].ToString().Equals("Abierta") && Session["TipoCuenta"].ToString().Equals("Administrador"))
    {
       %>
       <center><h2>Modificar Usuario</h2></center>
       <%      
    if (Session["Estado"].ToString() == "Cerrada")
    {
        tipocuenta = "";
    }

    if (Session["TipoCuenta"] != null)
    {
        tipocuenta = Session["TipoCuenta"].ToString();
    }
    else
    {
        Session["TipoCuenta"] = 0;
        Session["NombreTecnico"] = "";
    }
                
    %>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        <center>
        <fieldset>
            <legend>Campos</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Apellido) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Apellido) %>
                <%: Html.ValidationMessageFor(model => model.Apellido) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Rut) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Rut) %>
                <%: Html.ValidationMessageFor(model => model.Rut) %>
            </div>
            
            <div class="editor-label">
                <label id="Usuario1">Usuario</label>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Usuario1) %>
                <%: Html.ValidationMessageFor(model => model.Usuario1) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Contraseña) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Contraseña) %>
                <%: Html.ValidationMessageFor(model => model.Contraseña) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Privilegio) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.Privilegio,
                    new[] 
                    { 
                        new SelectListItem {Value = "Administrador", Text = "Administrador"}, 
                        new SelectListItem {Value = "Visualizador", Text = "Visualizador"},
                        new SelectListItem {Value = "Tecnico", Text = "Tecnico"}
                    }
                    , "Seleccione...")%> 
                <%: Html.ValidationMessageFor(model => model.Privilegio) %>
            </div>
            
            <p>
                <input id="BotonGuardar" type="submit" value="Guardar Cambios" />
            </p>
        </fieldset>
        </center>
    <% } %>

    <div>
        <%: Html.ActionLink("Regresar a la lista", "Index") %>
    </div>
    
      <%
    }
               else { 
                %> 
                <p>Debe Iniciar Sesión para visualizar el contenido de la página ó, no tiene los privilegios necesarios.</p>
                <%
               } %>

</asp:Content>

