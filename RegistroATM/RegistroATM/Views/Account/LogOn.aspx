<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<RegistroATM.Models.LogOnModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Iniciar sesión
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
   <center> <h2>Iniciar sesión</h2></center>
   
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true, "No se ha iniciado la sesión. Corrija los errores e inténtelo de nuevo.") %>
        <div>
        <center>
            <fieldset>
                <legend>Información de cuenta</legend>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.UserName) %>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(m => m.UserName) %>
                    <%: Html.ValidationMessageFor(m => m.UserName) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.LabelFor(m => m.Password) %>
                </div>
                <div class="editor-field">
                    <%: Html.PasswordFor(m => m.Password) %>
                    <%: Html.ValidationMessageFor(m => m.Password) %>
                </div>
                
                <div class="editor-label">
                    <%: Html.CheckBoxFor(m => m.RememberMe) %>
                    <%: Html.LabelFor(m => m.RememberMe) %>
                </div>
                
                <br />
                <p>
                    <input id="BotonIniciarSesion" type="submit" value="Iniciar sesión" />
                </p>
            </fieldset>
            </center>
        </div>
    <% } %>
</asp:Content>
