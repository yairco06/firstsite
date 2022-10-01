<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="firstsite.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style%20sheets/about.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="container">
        <section>
            <h1 class="hidden">אודותינו</h1>          
            <i class="fa fa-arrow-down fa-1x bounce"></i> 
        </section>
        <section><p class="hidden">המטרה שלנו היא לגרום לאנשים להרחיב את הידע שלהם באופן חוויתי</p></section>
        <section><p class="hidden">באתר תוכלו לבחור נושא שמעניין אתכם ולקבל עובדה על הנושא</p></section>
        <section><p class="hidden">:מאחל לכם שהייה נעימה ומקווה שתהנו</p></section>
        <section><p class="hidden">המפתח יאיר </p></section>
    </div>
    <script src="javascripts/about.js"></script>

</asp:Content>
