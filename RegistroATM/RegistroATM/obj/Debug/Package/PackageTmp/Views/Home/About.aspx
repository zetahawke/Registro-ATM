<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Acerca de nosotros
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Acerca de</h2>
    <p>
        Incluya aquí el contenido.
    </p>

     <form action="<%: Url.Action("Upload") %>" enctype="multipart/form-data" method="post">
                    <label for="descripcion">Descripción del fichero:</label>
                    <input type="text" id="descripcion" name="descripcion" />
                    <br />
                    <label for="fichero">Fichero:</label>
                    <input type="file" name="fichero" size="40">
                    <br />
                    <input type="submit" value="Enviar" />
                </form>
</asp:Content>
