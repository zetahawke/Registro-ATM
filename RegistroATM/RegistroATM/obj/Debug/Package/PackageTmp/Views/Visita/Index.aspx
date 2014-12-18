<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<RegistroATM.Models.Visita>>" %>

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

    <% if (Session["Estado"].ToString().Equals("Abierta") && Session["TipoCuenta"].ToString() != "Tecnico")
       {       
       %> 
       <center>
    <h2>Inicio</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID Visita
            </th>
            <th>
                Fecha
            </th>
            <th>
                Hora Inicio
            </th>
            <th>
                Hora Fin
            </th>
            <th>
                Numero Atm
            </th>
            <th>
                Nombre Tecnico
            </th>
            <th>
                Estatus Inicial
            </th>
            <th>
                Estatus Final
            </th>
            <th>
                Direccion
            </th>
            <th>
                Comentario
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
                <%: Html.ActionLink("Modificar  ", "Edit", new { id=item.ID_Visita }) %> |
                <%: Html.ActionLink("Eliminar", "Delete", new { id=item.ID_Visita })%> |
                <% }%>
                 <%: Html.ActionLink("Detalles", "Details", new { id=item.ID_Visita })%> 
            </td>  <% } %>
            <td>
                <%: item.ID_Visita %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Fecha) %>
            </td>
            <td>
                <%: item.HoraInicio %>
            </td>
            <td>
                <%: item.HoraFin %>
            </td>
            <td>
                <%: item.ATM %>
            </td>
            <td>
                <%: item.NombreTecnico %>
            </td>
            <td>
                <%: item.EstatusInicial %>
            </td>
            <td>
                <%: item.EstatusFinal %>
            </td>
            <td>
                <%: item.Direccion %>
            </td>
            <td>
                <%: item.Comentario %>
            </td>
           
        </tr>
    
    <% } %>

    </table>
    </center>

    <%if (Session["TipoCuenta"].ToString() == "Tecnico")
      { %>
    <p>
        <%: Html.ActionLink("Ingresar Visita", "Create")%>
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

