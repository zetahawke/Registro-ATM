<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.Usuario>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Eliminar Usuario
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<% 
                string tipocuenta;
                if(Session["Estado"] == null){
                        Session["Estado"] = "Cerrada";
                }
                if(Session["Estado"].ToString() == "Cerrada"){
                tipocuenta = "";
                }

                if (Session["TipoCuenta"] != null)
                {
                    tipocuenta = Session["TipoCuenta"].ToString();
                    
                    switch(tipocuenta){
                        case "Tecnico":
                            Session["NombreTecnico"] = "";
                            break;
                            
                        case "Visualizador":
                            Session["NombreVisualizador"] = "";
                            break;
                                             
                        case "Administrador":
                            Session["NombreAdministrador"] = "";
                            break;
                    }
                    
                }
                else {
                    Session["TipoCuenta"] = "";
                    Session["NombreTecnico"] = "";
                    Session["NombreVisualizador"] = "";
                    Session["NombreAdministrador"] = "";
                }             
    %>

    <% if (Session["Estado"].ToString().Equals("Abierta") && Session["TipoCuenta"].ToString().Equals("Administrador"))
       {
           try
           {    
       %> 
       <center>
    <h2>Eliminar Usuario</h2>

    <h3>¿Estás seguro que quieres eliminar este usuario?</h3>
    <fieldset>
        <legend>Fields</legend>
                
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre%></div>
        
        <div class="display-label">Apellido</div>
        <div class="display-field"><%: Model.Apellido%></div>
        
        <div class="display-label">Rut</div>
        <div class="display-field"><%: Model.Rut%></div>
        
        <div class="display-label">Usuario1</div>
        <div class="display-field"><%: Model.Usuario1%></div>
        
        <div class="display-label">Contraseña</div>
        <div class="display-field"><%: Model.Contraseña%></div>
        
        <div class="display-label">Privilegio</div>
        <div class="display-field"><%: Model.Privilegio%></div>
        <br />
        <p><input id="BotonEliminar" type="submit" value="Eliminar Usuario" /></p>
        
    </fieldset>
    </center>
    <% using (Html.BeginForm())
       { %>
        <p>
		    <%: Html.ActionLink("Regresar a la lista", "Index")%>
        </p>
    <% } %>

    <%
}
           catch { %>
           <p>
        Usuario No Encontrado;
        </p>
           <%}
       }
        else{
    %>
    <p>
        Inicie Sesión para ver este contenido o no tiene los privilegios necesarios.
    </p>
    <%
    } %>

</asp:Content>

