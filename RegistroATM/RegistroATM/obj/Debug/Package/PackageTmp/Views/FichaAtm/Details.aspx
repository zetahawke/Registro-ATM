<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.FichaATM>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Detalles Ficha
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
    <h2>Detalles Ficha</h2>

    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">Numero Atm</div>
        <div class="display-field"><%: Model.NumeroAtm %></div>
        
        <div class="display-label">ETV</div>
        <div class="display-field"><%: Model.ETV %></div>
        
        <div class="display-label">Banco Atm</div>
        <div class="display-field"><%: Model.BancoAtm %></div>
        
        <div class="display-label">Marca Atm</div>
        <div class="display-field"><%: Model.MarcaAtm %></div>
        
        <div class="display-label">Datos De Red</div>
        <div class="display-field"><%: Model.DatosDeRed %></div>
        
        <div class="display-label">Digito Verificador</div>
        <div class="display-field"><%: Model.DigitoVerificador %></div>
        
        <div class="display-label">Modelo Atm</div>
        <div class="display-field"><%: Model.ModeloAtm %></div>
        
        <div class="display-label">Numero De Serie</div>
        <div class="display-field"><%: Model.NumeroDeSerie %></div>
        
        <div class="display-label">EMV</div>
        <div class="display-field"><%: Model.EMV %></div>
        
        <div class="display-label">Depositario Efectivo</div>
        <div class="display-field"><%: Model.DepositarioEfectivo %></div>
        
        <div class="display-label">Depositario Sobre</div>
        <div class="display-field"><%: Model.DepositarioSobre %></div>
        
        <div class="display-label">Lector Libreta</div>
        <div class="display-field"><%: Model.LectorLibreta %></div>
        
        <div class="display-label">Jitter</div>
        <div class="display-field"><%: Model.Jitter %></div>
        
        <div class="display-label">Tamaño HDD</div>
        <div class="display-field"><%: Model.TamañoHDD %></div>
        
        <div class="display-label">Tipo HDD</div>
        <div class="display-field"><%: Model.TipoHDD %></div>
        
        <div class="display-label">Ram</div>
        <div class="display-field"><%: Model.Ram %></div>
        
        <div class="display-label">S.O</div>
        <div class="display-field"><%: Model.SO %></div>
        
    </fieldset>
    </center>
    <p>

        <%: Html.ActionLink("Modificar", "Edit", new { id=Model.NumeroAtm }) %> |
        <%: Html.ActionLink("Regresar a la lista", "Index") %>
    </p>
      <%
}
           catch { %>
           <p>
        Ficha No Encontrada
        </p>
           <%}
    
     
                }
               else { 
                %> 
                <p>Debe Iniciar Sesión para visualizar el contenido de la página ó, no tiene los privilegios necesarios.</p>
                <%
               } %>

</asp:Content>

