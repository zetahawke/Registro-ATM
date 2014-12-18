<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.Visita>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Ingresar Visitas
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

    <% if (Session["Estado"].ToString().Equals("Abierta") && Session["TipoCuenta"].ToString().Equals("Tecnico"))
       {       
       %> 
       <script src="<%= Url.Content("~/Scripts/jquery-1.9.1.js") %>" language="javascript" type="text/javascript"></script>
       <script src="<%= Url.Content("~/Scripts/jquery-ui-1.10.3.custom.min.js") %>" type="text/javascript"></script>

       <script language="javascript" type="text/javascript">
        $(document).ready(function () {
        $("#HoraInicio").val(new Date().toLocaleTimeString());
        var tipo = "<%=Session["TipoCuenta"].ToString() %>";
        $("#Fecha").val(new Date().toLocaleDateString());

        var nombre ="<%=Session["Tec"].ToString() %>";
        $("#NombreTecnico").val(""+nombre);
                      
        $("#AgregarVisita").click(function () {
            
            $("#HoraFin").val(new Date().toLocaleTimeString());

            var fecha = parseInt(new Date().toLocaleDateString());
            var hora = parseInt(new Date().toLocaleTimeString());
            var mill = parseInt(new Date().getMilliseconds());
            $("#ID_Visita").val(parseInt(fecha + "" + hora + "" + mill));

            var sds = $("#ID_Visita").val().toString();
            $("#eidi").val(sds);
            $("#FotoMenu").val("/IMG/"+ "ID_" + sds + "_" + "/FotoMenu_ID_" + sds + ".jpg");
            $("#FotoVoucher").val("/IMG/"+ "ID_" + sds + "_" + "/FotoVoucher_ID_" + sds + ".jpg");
        });
    });
</script>




    <h2>Ingresar Visita</h2>
    
    <% using (Html.BeginForm("Create", "Visita", FormMethod.Post, new { enctype = "multipart/form-data", method = "post" }))
       {%>
        <%: Html.ValidationSummary(true)%>
        <center>
        <fieldset>
            <legend>Campos</legend>
            
            <div class="editor-field">
                <%: Html.HiddenFor(model => model.ID_Visita)%>
                <%: Html.ValidationMessageFor(model => model.ID_Visita)%>
            </div>
            
            <div class="editor-field">
                <%: Html.HiddenFor(model => model.Fecha)%>
                <%: Html.ValidationMessageFor(model => model.Fecha)%>
            </div>
            
            <div class="editor-field">
                <%: Html.HiddenFor(model => model.HoraInicio)%>
                <%: Html.ValidationMessageFor(model => model.HoraInicio)%>
            </div>
            
            <div class="editor-field">
                <%: Html.HiddenFor(model => model.HoraFin)%>
                <%: Html.ValidationMessageFor(model => model.HoraFin)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ATM)%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.ATM,
                new[]
                {
                    new SelectListItem{ Value = "0", Text = " " }
                },
                "escoger opción")%>
                <%: Html.ValidationMessageFor(model => model.ATM)%>
            </div>
            
            <script type="text/javascript">
                $(document).ready(function () {
                    var modelo = "";
                    $.ajax({
                        type: 'POST',
                        url: '<%= Url.Content("~/WebService.asmx/ObtenerModelos")%>',
                        data: "{'Usuario':'" + "Roy Cruz" + "'}",
                        contentType: 'application/json; utf-8',
                        dataType: 'json',
                        success: function (data) {
                            var datos = $.parseJSON(data.d);
                            $("#ATM").empty();
                            $.each(datos, function (Modelo) {
                                $("#ATM").append($('<option>').text(this.Modelo).attr('value', this.Modelo));
                            });

                        },
                        error: function (data) {
                            $("#dvAlerta > span").text("Error al llenar el combo");
                        }
                    });

                });
            </script>

            <div id="dvAlerta"><span></span></div>



            <div class="editor-label">
                <%: Html.LabelFor(model => model.NombreTecnico)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NombreTecnico)%>
                <%: Html.ValidationMessageFor(model => model.NombreTecnico)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.EstatusInicial)%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.EstatusInicial,
                        new[] 
                        { 
                            new SelectListItem {Value = "Operativo", Text = "Operativo"}, 
                            new SelectListItem {Value = "No Operativo", Text = "No Operativo"}
                        }
                        , "Seleccione...")%>
                <%: Html.ValidationMessageFor(model => model.EstatusInicial)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.EstatusFinal)%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.EstatusFinal,
                        new[] 
                        { 
                            new SelectListItem {Value = "Operativo", Text = "Operativo"}, 
                            new SelectListItem {Value = "No Operativo", Text = "No Operativo"}
                        }
                        , "Seleccione...")%>
                <%: Html.ValidationMessageFor(model => model.EstatusFinal)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Direccion)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Direccion)%>
                <%: Html.ValidationMessageFor(model => model.Direccion)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Comentario)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Comentario)%>
                <%: Html.ValidationMessageFor(model => model.Comentario)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FotoMenu)%>
            </div>
            <div class="editor-field">
                <input class="SubirImagen" type="hidden" id="eidi" name="eidi" />
                <input class="SubirImagen" type="file" name="foto" size="40">
                <%: Html.HiddenFor(model => model.FotoMenu)%>
                <%: Html.ValidationMessageFor(model => model.FotoMenu)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FotoVoucher)%>
            </div>
            <div class="editor-field">
                <input class="SubirImagen" type="file" name="foto2" size="40">
                <%: Html.HiddenFor(model => model.FotoVoucher)%>
                <%: Html.ValidationMessageFor(model => model.FotoVoucher)%>
            </div>
            
            <p>
                <input id="AgregarVisita" type="submit" value="Ingresar Visita" />
       
            </p>
        </fieldset>
        </center>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar a la lista", "Index") %>
    </div>
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

