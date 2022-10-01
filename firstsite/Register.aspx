<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="firstsite.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style%20sheets/LoginStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
<div class="lgnContents">
                <br />
		        <asp:TextBox runat="server" ID="TxtUserName" cssClass="input" placeholder="שם משתמש"/>
                <%--input and label for username--%>
		        <br />
                <asp:TextBox runat="server" ID="TxtPassword" TextMode="Password" CssClass="input" placeholder="סיסמה"/>
                <br />
                <asp:TextBox runat="server" ID="TxtFname" cssClass="input" placeholder="שם פרטי"/>
                <br />
                <asp:TextBox runat="server" ID="TxtLname" cssClass="input" placeholder="שם משפחה"/>
                <br />

                <%--input and label for password--%>
                <br />
                <br />
                <asp:Button ID="submit" runat="server" Text="כניסה" OnClick="Register_User"/>
                <asp:Button ID="Button1" runat="server" Text="הצג סיסמה" onClick="Button1_Click"/>
                <br />
                </div>
                <br />
            <p runat="server" id="message"></p>
            <br />
            <a href="/LoginPage.aspx">-לכניסת משתמשים</a>
</asp:Content>
