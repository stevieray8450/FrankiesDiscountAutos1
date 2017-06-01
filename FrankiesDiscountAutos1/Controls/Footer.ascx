<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="FrankiesDiscountAutos.controls.Footer" %>

<style>
    footer.bg4 {
        background-color: #000000;
        color: #ffffff;
    }

    footer {
        color: white;
        position: fixed;
        bottom: 0;
        width: 100%;
        z-index: 999999;
    }

    footer a:hover {
        color: white;
    }

    footer a
    {
        color: red;
    }
    
    footer.container-fluid {
        padding-top: 50px;
        padding-bottom: 50px;
    }

</style>

<div class="navbar navbar-fixed-bottom">
    <footer class="container-fluid bg4 text-center">
        <p>Website made by <a href="http://www.github.com/stevieray8450">Steve Boniface</a></p>
    </footer>
</div>