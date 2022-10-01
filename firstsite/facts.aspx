<<<<<<< HEAD
﻿    <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="facts.aspx.cs" Inherits="firstsite.facts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
  <link href="style%20sheets/facts.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server" >
  <table>
    <tr>
      <td>
        <a runat="server" id="history" href="factsgen.aspx?category=history" onclick="Facts_history()">
            <p class="cards">היסטוריה</p>
            <img class="cardsimg" src="images/history.png" />
        </a>
      </td>
      <td>
        <a runat="server" id="israel" href="factsgen.aspx?category=israel">
            <p class="cards">ישראל</p>
            <img class="cardsimg" src="images/Israel-Flag.png" />
        </a>
      </td>
      <td>
        <a runat="server" id="nature" href="factsgen.aspx?category=nature">
          <p class="cards">טבע</p>
          <img class="cardsimg" src="images/nature.jpeg" />
        </a>
      </td>
    </tr>
        <tr>
      <td>
        <a runat="server" id="animals" href="factsgen.aspx?category=animals">
            <p class="cards">בעלי חיים</p>
            <img class="cardsimg" src="images/animals.jpg" />
        </a>
      </td>
      <td>
        <a runat="server" id="food" href="factsgen.aspx?category=food">
            <p class="cards">אוכל</p>
            <img class="cardsimg" src="images/food.jpg" />
        </a>
      </td>
      <td>
        <a runat="server" id="hebrew" href="factsgen.aspx?category=language">
          <p class="cards">לשון</p>
          <img class="cardsimg" src="images/hebrew.jpg" />
        </a>
      </td>
    </tr>
  </table>
</asp:Content>
=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="facts.aspx.cs" Inherits="firstsite.facts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
    <link href="style%20sheets/facts.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server" >
    <div class="row">
        <div class="column">
            <div class="card">
                <img src="images/history.jpg" width="100" height="100"/>
                <h1>היסטוריה</h1>
            </div>
        </div>
        <div class="column">
            <div class="card">..</div>
        </div>
        <div class="column">
            <div class="card">..</div>
        </div>
        <div class="column">
            <div class="card">..</div>
        </div>
    </div>
</asp:Content>

>>>>>>> origin/master

