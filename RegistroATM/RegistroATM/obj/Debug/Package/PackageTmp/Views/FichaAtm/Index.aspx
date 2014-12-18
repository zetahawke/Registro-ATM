<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<RegistroATM.Models.FichaATM>>" %>

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

    <% if (Session["Estado"].ToString().Equals("Abierta"))
       {       
       %> 
    <center><h2>Inicio</h2>

    <table id = "tabla">
        <tr>
            <th></th>
            <th>
                Numero Atm
            </th>
            <th>
                ETV
            </th>
            <th>
                Banco Atm
            </th>
            <th>
                Marca Atm
            </th>
            <th>
                Datos De Red
            </th>
            <th>
                Digito Verificador
            </th>
            <th>
                Modelo Atm
            </th>
            <th>
                Numero De Serie
            </th>
            <th>
                EMV
            </th>
            <th>
                Depositario Efectivo
            </th>
            <th>
                Depositario Sobre
            </th>
            <th>
                Lector Libreta
            </th>
            <th>
                Jitter
            </th>
            <th>
                Tamaño HDD
            </th>
            <th>
                Tipo HDD
            </th>
            <th>
                Ram
            </th>
            <th>
                S.O
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
                <%: Html.ActionLink("Modificar  ", "Edit", new { id=item.NumeroAtm }) %> |
                <%: Html.ActionLink("Eliminar", "Delete", new { id=item.NumeroAtm })%> |
                <% }%>
                 <%: Html.ActionLink("Detalles", "Details", new { id=item.NumeroAtm })%> 
            </td>  <% } %>
            <td>
                <%: item.NumeroAtm %>
            </td>
            <td>
                <%: item.ETV %>
            </td>
            <td>
                <%: item.BancoAtm %>
            </td>
            <td>
                <%: item.MarcaAtm %>
            </td>
            <td>
                <%: item.DatosDeRed %>
            </td>
            <td>
                <%: item.DigitoVerificador %>
            </td>
            <td>
                <%: item.ModeloAtm %>
            </td>
            <td>
                <%: item.NumeroDeSerie %>
            </td>
            <td>
              <%: item.EMV %>
            </td>
            <td>
                <%: item.DepositarioEfectivo %>
            </td>
            <td>
                <%: item.DepositarioSobre %>
            </td>
            <td>
                <%: item.LectorLibreta %>
            </td>
            <td>
                <%: item.Jitter %>
            </td>
            <td>
                <%: item.TamañoHDD %>
            </td>
            <td>
                <%: item.TipoHDD %>
            </td>
            <td>
                <%: item.Ram %>
            </td>
            <td>
                <%: item.SO %>
            </td>
          
        </tr>
    
    <% } %>

    </table>
    </center>

    <p>
        <%: Html.ActionLink("Ingresar Nueva Ficha", "Create") %>
    </p>

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

