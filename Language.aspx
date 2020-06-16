<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Language.aspx.cs" Inherits="Smarter_HRIS.Language" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/metro-bootstrap.css" rel="stylesheet">
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet">
    <link href="css/iconFont.css" rel="stylesheet">
    <link href="css/docs.css" rel="stylesheet">
    <link href="js/prettify/prettify.css" rel="stylesheet">

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>
    <script src="js/metro/metro-datepicker.js"></script>
    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
<%--    <script src="js/ga.js"></script>--%>

</head>
<body class="metro">
    <form id="form1" runat="server">
    <div>


        <div class="container text-center">
            <div>
                <img src="Images/productERP.png" />
            </div>
       <div class="grid">
        <div class="row">
            <div class="offset3">
                <div class="tile-group six">
                <div class="tile-group-title fg-black"></div>

                <a class="tile double double-vertical bg-lightRed" data-click="transform" href="Login.aspx">
                <div class="tile-content icon">
                    <span class="icon-grid-view"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size:25px">ENGLISH</div>
                </div>
                </a>

                <a class="tile double double-vertical bg-yellow" data-click="transform" href="#">
                
                    <div class="tile-content icon">
                    <span class="icon-grid-view"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size:30px">සිංහල</div>
                </div>
                </a>

                </div>
            </div>
        </div>
    </div>
   </div>

    
    </div>
    </form>
</body>
</html>
