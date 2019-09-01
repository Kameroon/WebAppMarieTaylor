<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApp_Mare_Telor_Tutorial.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
   
     <div class="form-group">
        <label>Nom de l'évènement :</label>
        <asp:TextBox runat="server" ID="txtEventName" Cssclass="form-control"/>
     </div>
     <div class="form-group">
        <label>Date de l'évènement :</label>
        <asp:Calendar runat="server" ID="calendarEvents" />
     </div>
  
     <div class="form-group">
        <asp:Button runat="server" ID="btnSubmit" Text="Ajouter un évènement" 
            CssClass="btn btn-primary btn-large" OnClick="btnSubmit_Click"/>
     </div>
    <%--<br />
    <br /><br /><br />--%>
    <h3>Repeteur d'évènements</h3>
     <div class="message">
        <asp:Repeater runat="server" ID="rptEvents">
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %>
                    <span><%# DataBinder.Eval(Container.DataItem, "EventName") %></span>
                </h3>
            </ItemTemplate>
        </asp:Repeater>
     </div>
</asp:Content>
