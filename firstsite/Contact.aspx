<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="firstsite.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <h1>צרו קשר</h1>
    <h2>:ניתן ליצור איתנו קשר באמצעות הפלטפורמות הבאות</h2>
    <a runat="server" href="https://www.instagram.com/yairco06/" rel="noopener noreferrer" target="_blank" id="instagram" class="copy">
        <img height="75" width="75" src ="images/Instagram_logo_2016.svg.jpg"/>
    </a>
        <a id="phone" class="copy" onclick="Clipboard()">
            <img height="80" width="80" src="images/phone.png" />
        </a>
    <a href="mailto:yairco1@galili-ks.org.il" enctype="text/plain" class="copy">
        <img height="75" width="75" src="images/Apple_Mail-512.png" />
    </a>
    <script src="../javascripts/contact.js"></script>
</asp:Content>
