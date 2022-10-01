<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="firstsite.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>כניסת משתמשים</title>
    <link href="style%20sheets/LoginStyle.css" rel="stylesheet" />
    <meta charset="utf-8" lang="he" dir="rtl"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
        <div>
            <div class="lgnContents">
                <br />
		        <asp:TextBox runat="server" ID="TxtUserName" cssClass="input" placeholder="שם משתמש"/>
                <%--input and label for username--%>
		        <br />
		        <br />

		        <asp:TextBox runat="server" ID="TxtPassword" TextMode="Password" CssClass="input" placeholder="סיסמה"/>
                
                <%--input and label for password--%>
                <br />
                <br />
                <asp:Button ID="submit" runat="server" Text="כניסה" OnClick="Login_Check"/>
                <asp:Button ID="Button1" runat="server" Text="הצג סיסמה" onClick="Button1_Click"/>
                <br />
                </div>
                <br />
            <p runat="server" id="message"></p>
            <br />
            <a href="/Register.aspx">-להרשמה</a>
        </div>
</asp:Content>
