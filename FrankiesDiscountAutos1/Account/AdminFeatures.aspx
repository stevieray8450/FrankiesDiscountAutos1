<%@ Page Title="Admin Features" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminFeatures.aspx.cs" Inherits="FrankiesDiscountAutos1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <customControls:Header runat="server" heading="Admin Features"></customControls:Header>

    <div class="row">
        <h2>Cars Database Administration</h2>
            <span class="list-group"><a href="CarsInsert.aspx">Post a new car</a></span>
            <span class="list-group"><a href="CarsInsert.aspx">Post a new car</a></span>
    </div>

    <div class="row">
        <h2>Site Administration</h2>
            <span class="list-group"><a href="CreateRoles.aspx">Create user roles</a></span>
    </div>

       <customControls:Footer runat="server"></customControls:Footer>

    </asp:Content>
