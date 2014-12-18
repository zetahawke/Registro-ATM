<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.Visita>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Eliminar Visita
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
    <h2>Eliminar Visita</h2>

    <h3>¿Estás seguro que quieres eliminar esta visita?</h3>
    <fieldset>
        <legend>Campos</legend>
        
        <div id="Izquierda">
        <div class="display-label">Foto Menu</div>
        <div class="display-field"><img class="magnify" alt="Foto Menu" id="Imagen1" /> </div>
        

        <div class="display-label">Foto Voucher</div>
        <div class="display-field"><img class="magnify" alt="Foto Voucher" id="Imagen2" /> </div>
        </div>

         <script src="<%= Url.Content("~/Scripts/jquery-1.9.1.js") %>" language="javascript" type="text/javascript"></script>
          <script src="<%= Url.Content("~/Scripts/jquery-ui-1.10.3.custom.min.js") %>" type="text/javascript"></script>
           <script src="<%= Url.Content("~/Scripts/jquery.magnifier.js")%>" type="text/javascript"></script>
           <script src="<%= Url.Content("~/Scripts/jquery.imageWarp.js")%>" type="text/javascript"></script>
          <script language="javascript" type="text/javascript">
              $(document).ready(function () {
                var foto1 = "<%=Session["FotoMenu"].ToString() %>";
                var foto2 = "<%=Session["FotoVoucher"].ToString() %>";

                var lol1 = "<%= Url.Content("~"+ Session["FotoMenu"].ToString()) %>";
                var lol2 = "<%= Url.Content("~"+ Session["FotoVoucher"].ToString()) %>";

                $("#Imagen1").attr("src", lol1);
                $("#Imagen2").attr("src", lol2);


              });
          </script>

        <div id="Derecha">
        <div class="display-label">ID Visita</div>
        <div class="display-field"><%: Model.ID_Visita %></div>
        
        <div class="display-label">Fecha</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.Fecha) %></div>
        
        <div class="display-label">Hora Inicio</div>
        <div class="display-field"><%: Model.HoraInicio %></div>
        
        <div class="display-label">Hora Fin</div>
        <div class="display-field"><%: Model.HoraFin %></div>
        
        <div class="display-label">Numero Atm</div>
        <div class="display-field"><%: Model.ATM%></div>
        
        <div class="display-label">Nombre Tecnico</div>
        <div class="display-field"><%: Model.NombreTecnico %></div>
        
        <div class="display-label">Estatus Inicial</div>
        <div class="display-field"><%: Model.EstatusInicial %></div>
        
        <div class="display-label">Estatus Final</div>
        <div class="display-field"><%: Model.EstatusFinal %></div>
        
        <div class="display-label">Direccion</div>
        <div class="display-field"><%: Model.Direccion %></div>
        
        <div class="display-label">Comentario</div>
        <div class="display-field"><%: Model.Comentario %></div>
        </div>

         </center>
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <center><input id"BotonEliminar" type="submit" value="Eliminar Visita" /></center>
		    <%: Html.ActionLink("Regresar a la lista", "Index") %>
        </p>
    <% } %>

    <%
}
           catch { %>
           <p>
        Visita no encontrada
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


