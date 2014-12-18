<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.FichaATM>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Modificar Ficha
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
      <center> <h2>Modificar Ficha</h2></center>
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
        
        <fieldset>
             <legend id = "Campo">Campos</legend>
            <div id="Medio"></div>
            <div id="Iz">
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.NumeroAtm)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.NumeroAtm)%>
                    <%: Html.ValidationMessageFor(model => model.NumeroAtm)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.ETV)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.ETV)%>
                    <%: Html.ValidationMessageFor(model => model.ETV)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.BancoAtm)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.BancoAtm,
                        new[] 
                        { 
                            new SelectListItem {Value = "Falabella", Text = "Banco Falabella"}, 
                            new SelectListItem {Value = "Estado", Text = "Banco Estado"},
                            new SelectListItem {Value = "Chile", Text = "Banco de Chile"},
                            new SelectListItem {Value = "BCI", Text = "Banco Bci"},
                            new SelectListItem {Value = "Santander", Text = "Banco Santander"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.BancoAtm)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.MarcaAtm)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.MarcaAtm)%>
                    <%: Html.ValidationMessageFor(model => model.MarcaAtm)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.DatosDeRed)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.DatosDeRed)%>
                    <%: Html.ValidationMessageFor(model => model.DatosDeRed)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.DigitoVerificador)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.DigitoVerificador)%>
                    <%: Html.ValidationMessageFor(model => model.DigitoVerificador)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.ModeloAtm)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.ModeloAtm)%>
                    <%: Html.ValidationMessageFor(model => model.ModeloAtm)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.NumeroDeSerie)%>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.NumeroDeSerie)%>
                    <%: Html.ValidationMessageFor(model => model.NumeroDeSerie)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.EMV)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.EMV,
                        new[] 
                        { 
                            new SelectListItem {Value = "Tiene", Text = "Tiene"}, 
                            new SelectListItem {Value = "No Tiene", Text = "No Tiene"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.EMV)%>
                </div>

            </div>
            
            <div id="der">
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.DepositarioEfectivo)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.DepositarioEfectivo,
                        new[] 
                        { 
                            new SelectListItem {Value = "Tiene", Text = "Tiene"}, 
                            new SelectListItem {Value = "No Tiene", Text = "No Tiene"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.DepositarioEfectivo)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.DepositarioSobre)%>
                </div>
                <div class="editor-field">
                
                    <%: Html.DropDownListFor(model => model.DepositarioSobre,
                        new[] 
                        { 
                            new SelectListItem {Value = "Tiene", Text = "Tiene"}, 
                            new SelectListItem {Value = "No Tiene", Text = "No Tiene"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.DepositarioSobre)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.LectorLibreta)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.LectorLibreta,
                        new[] 
                        { 
                            new SelectListItem {Value = "Tiene", Text = "Tiene"}, 
                            new SelectListItem {Value = "No Tiene", Text = "No Tiene"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.LectorLibreta)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.Jitter)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.Jitter,
                        new[] 
                        { 
                            new SelectListItem {Value = "Tiene", Text = "Tiene"}, 
                            new SelectListItem {Value = "No Tiene", Text = "No Tiene"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.Jitter)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.TamañoHDD)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.TamañoHDD,
                        new[] 
                        { 
                            new SelectListItem {Value = "20 GB", Text = "20 GB"}, 
                            new SelectListItem {Value = "40 GB", Text = "40 GB"},
                            new SelectListItem {Value = "80 GB", Text = "80 GB"},
                            new SelectListItem {Value = "120 GB", Text = "120 GB"},
                            new SelectListItem {Value = "360 GB", Text = "360 GB"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.TamañoHDD)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.TipoHDD)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.TipoHDD,
                        new[] 
                        { 
                            new SelectListItem {Value = "IDE", Text = "IDE"}, 
                            new SelectListItem {Value = "SATA", Text = "SATA"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.TipoHDD)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.Ram)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.Ram,
                        new[] 
                        { 
                            new SelectListItem {Value = "128 MB", Text = "128 MB"}, 
                            new SelectListItem {Value = "256 MB", Text = "256 MB"},
                            new SelectListItem {Value = "512 MB", Text = "512 MB"},
                            new SelectListItem {Value = "1024 MB", Text = "1024 MB"},
                            new SelectListItem {Value = "2048 MB", Text = "2048 MB"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.Ram)%>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.SO)%>
                </div>
                <div class="editor-field">
                    <%: Html.DropDownListFor(model => model.SO,
                        new[] 
                        { 
                            new SelectListItem {Value = "Windows NT", Text = "Windows NT"}, 
                            new SelectListItem {Value = "Windows XP", Text = "Windows xp"},
                            new SelectListItem {Value = "Windows 7", Text = "Windows 7"}
                        }
                        , "Seleccione...")%>
                    <%: Html.ValidationMessageFor(model => model.SO)%>
                </div>
                <br />
                <input id="BotonGuardar" type="submit" value="Guardar Cambios" />
            </div>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar a la lista", "Index") %>
    </div>
   <%  }
               else { 
                %> 
                <p>Debe Iniciar Sesión para visualizar el contenido de la página ó, no tiene los privilegios necesarios.</p>
                <%
               } %>

</asp:Content>

