<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.Usuario>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Detalles del Usuario
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
        try
           {  
       %>
       <center><h2>Detalles Usuario</h2></center>
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
    <center>
    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">Apellido</div>
        <div class="display-field"><%: Model.Apellido %></div>
        
        <div class="display-label">Rut</div>
        <div class="display-field"><%: Model.Rut %></div>
        
        <div class="display-label">Usuario</div>
        <div class="display-field"><%: Model.Usuario1 %></div>
        
        <div class="display-label">Contraseña</div>
        <div class="display-field"><%: Model.Contraseña %></div>
        
        <div class="display-label">Privilegio</div>
        <div class="display-field"><%:Model.Privilegio %></div>
        
    </fieldset>
    </center>
    <p>

        <%: Html.ActionLink("Modificar", "Edit", new { id=Model.Usuario1 }) %> |
        <%: Html.ActionLink("Regresar a la lista", "Index") %>
    </p>
     <%
}
           catch { %>
           <p>
       Usuario No Encontrado
        </p>
           <%}
    
     
                }
               else { 
                %> 
                <p>Debe Iniciar Sesión para visualizar el contenido de la página ó, no tiene los privilegios necesarios.</p>
                <%
               } %>
</asp:Content>

