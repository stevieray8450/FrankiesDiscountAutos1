<%@ Page Title="Welcome to Frankie's Discount Autos!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FrankiesDiscountAutos1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <customControls:Header runat="server" heading="Welcome to Frankie's Discount Autos!"></customControls:Header>

    <div class="row">
        <div class="col-md-4">
            <h2>Our Mission</h2>
            <p>
                Frankie's Discount Autos is here to serve our customers in selecting, financing, and owning the right vehicle for any purpose.
                Our certified sales team and dedicated financiers are guaranteed to help you find your new vehicle for the right price!.
            </p>

        </div>
        <div class="col-md-4">
            <h2>Our Team</h2>
            <p>
                At Frankie's Discount Autos, we understand the unnecssary pressure that most find uncomfortable. Our business is proud to guarantee a no-hassle,
                no pressure shopping experience.
            </p>
            <p>
                Meet our friendly team of salesmen and saleswomen that are thrilled to introduce you to our latest and greatest:
                <a class="btn btn-default" href="OurTeam.aspx">Meet the Team</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our Cars</h2>
            <p>
                Explore the cars currently being showcased at Frankie's Discount Autos. Our vehicles are in full-repair, well maintained, and 
                road-ready. 
            </p>
            <p>
                Please contact us with any questions regarding our vehicles.
            </p>
            <p>
                <a class="btn btn-default" href="Contact.aspx">Contact Us</a>
            </p>
        </div>

    <customcontrols:footer runat="server"></customcontrols:footer>

    </div>

    </asp:Content>
