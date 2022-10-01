<%@ Page Title="Main" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="firstsite.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="style%20sheets/Default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <section class="hidden">  
        <div class="container">
          <p class="title">
<<<<<<< HEAD
            <span id="welcome1" class="title-word title-word-1 animate__zoomIn" runat="server">ברוכים</span>
            <span id="welcome2" class="title-word title-word-2" runat="server">הבאים</span>
=======
            <span class="title-word title-word-1 animate__zoomIn">ברוכים</span>
            <span class="title-word title-word-2">הבאים</span>
>>>>>>> origin/master
          </p>
          <i class="fa fa-arrow-down fa-3x bounce"></i>
      </div>
    </section>
    <section class="hidden p-style">
        <p>?הידעת</p>
    </section>    
    <section class="hidden p-style">
        <p>לורם איפסום</p>
    </section>    
    <section class="hidden p-style">
        <p>לורם איפסום</p>
    </section>
    <script type="text/javascript">
        const observer = new IntersectionObserver((entries) => {
            entries.forEach((entry) => {
                console.log('%c' + entry, 'background-color: black; color: red;');
                if (entry.isIntersecting) {
                    entry.target.classList.add('show');
                } else {
                    entry.target.classList.remove('show');
                }
            });
        });

        const hiddenElements = document.querySelectorAll(".hidden");
        hiddenElements.forEach((element) => observer.observe(element));

    </script>
</asp:Content>
