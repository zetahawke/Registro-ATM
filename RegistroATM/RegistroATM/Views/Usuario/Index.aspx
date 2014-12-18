<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<RegistroATM.Models.Usuario>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Inicio
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
       %> 
       <center>
    <h2>Inicio</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Nombre
            </th>
            <th>
                Apellido
            </th>
            <th>
                Rut
            </th>
            <th>
                Usuario1
            </th>
            <th>
                Contraseña
            </th>
            <th>
                Privilegio
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
               <%if(Session["TipoCuenta"].ToString() != "Tecnico")
          {
          
            %>
            
                <%if (Session["TipoCuenta"].ToString() != "Visualizador")
                  { %>
                <%: Html.ActionLink("Modificar  ", "Edit", new { id=item.Usuario1 }) %> |
                <%: Html.ActionLink("Eliminar", "Delete", new { id=item.Usuario1 })%> |
                <% }%>
                 <%: Html.ActionLink("Detalles", "Details", new { id=item.Usuario1 })%> 
            </td>  <% } %>
            <td>
                <%: item.Nombre %>
            </td>
            <td>
                <%: item.Apellido %>
            </td>
            <td>
                <%: item.Rut %>
            </td>
            <td>
                <%: item.Usuario1 %>
            </td>
            <td>
                <%: item.Contraseña %>
            </td>
            <td>
                <%: item.Privilegio %>
            </td>
        </tr>
    
    <% } %>

    </table>
    </center>

    <%if(Session["TipoCuenta"].ToString() == "Administrador") {%>
    <p>
        <%: Html.ActionLink("Ingresar Nuevo Usuario", "Create") %>
    </p>
     <% }%>

    <%
       }
        else{
    %>
    <p>
        Inicie Sesión para ver este contenido o no tiene los privilegios necesarios.
    </p>
    <%
    } %>
</asp:Content>

