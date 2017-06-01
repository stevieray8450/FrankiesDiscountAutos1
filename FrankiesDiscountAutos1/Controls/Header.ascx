<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="FrankiesDiscountAutos.controls.Header" %>

<style type="text/css">
    .auto-style1 {
        text-align: left;
        width: 1535px;
        font-size: medium;
    }

    #menuPanel a:hover {
        color: black;
    }
</style>

<script runat="server">
    public string heading = "Page Heading";
</script>

<div class="jumbotron">

    <asp:Panel ID="logoPanel" runat="server" Height="132px">
        <a href="../Default.aspx"><img alt="" class="img-responsive" src="../images/headerImage.jpg" /></a>
    </asp:Panel>

    <h1 id="myHeader" class="display-3"><%= heading %></h1>

    <asp:Panel ID="menuPanel" runat="server" ForeColor="Red" Height="33px" style="margin-top: 15px">
        <div class="auto-style1">
            <a href="../About.aspx">About Us</a> || <a href="../ContactUs.aspx">Contact Us</a> || <a href="../Cars.aspx">Our Cars</a> || <a href="../TestDrive.aspx">Test Drive</a> ||
        </div>
    </asp:Panel>
</div>






    