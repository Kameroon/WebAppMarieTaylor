<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApp_Mare_Telor_Tutorial.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <div>
        <label>Name :</label>
        <asp:TextBox runat="server" ID="txtName" CssClass="tsxt-box"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName"
            ErrorMessage="Vous devez saisir un nom valide." Display="Dynamic"/>
    </div>
    <div>
        <label>Email :</label>
        <asp:TextBox runat="server" ID="txtEmail" CssClass="tsxt-box"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" 
            ErrorMessage="Vous devez saisir une adresse email." />
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" 
            ErrorMessage="Vous devez saisir une adresse email valide." Display="Dynamic"
            validationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
    </div>
    <div>
        <label>Age : </label>
        <asp:TextBox runat="server" ID="txtAge" CssClass="tsxt-box"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvAge" ControlToValidate="txtAge"
            Display="Dynamic" ErrorMessage="Vous devez saisir votre âge." /> 
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="txtAge" 
            ErrorMessage="Vous devez saisir un nombre positif." Display="Dynamic" validationExpression="^[0-9]+$"/>
    </div>
    <div>
        <label>Votre couleur :</label>
        <asp:DropDownList runat="server" ID="ddlColor" CssClass="dropDownList">
            <asp:ListItem Text="Veuillez choisir une couleur" Value=""/>
            <asp:ListItem Text="Blue" Value="blue"/>
            <asp:ListItem Text="Rouge" Value="Red"/>
            <asp:ListItem Text="Blanc" Value="White"/>
            <asp:ListItem Text="Vert" Value="Green"/>
            <asp:ListItem Text="Jaune" Value="Yellow"/>
        </asp:DropDownList>        
        <asp:RequiredFieldValidator runat="server" ID="rfvDdlColor" ControlToValidate="ddlColor" ErrorMessage="Vous devez choisir une couleur." />
    </div>
     <div>
        <asp:Button runat="server" ID="btnSubmit" Text="Valider" CssClass="btn btn-primary" OnClick="btnSubmit_Click"></asp:Button>
    </div>
    <div class="message">
        <asp:Literal runat="server" ID="ltMessage"/>
    </div>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
