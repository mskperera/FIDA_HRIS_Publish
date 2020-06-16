<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server_Error_Login.aspx.cs" Inherits="Smarter_HRIS.Server_Error_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Smart HRIS</title>
    <link href="css/metro-bootstrap.css" rel="stylesheet" />
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <%--<link href="css/metro.css" rel="stylesheet">--%>
    <%-- <link href="css/metro-icons.css" rel="stylesheet">
    <link href="css/metro-ani-icons.css" rel="stylesheet">--%>
    <link href="css/docs.css" rel="stylesheet" />
    <link href="css/iconFont.css" rel="stylesheet" />

    <link href="js/prettify/prettify.css" rel="stylesheet" />

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>
    <script src="js/metro/metro-datepicker.js"></script>
    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>
    <script src="js/jquery-1.11.1.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <script src="js/ga.js"></script>

    <link href="Styles/jquery-ui.css" rel="stylesheet" />
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    <script src="js/jquery-cookie-1.4.1/jquery.cookie.js"></script>
    <%-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>--%>

    <style>
        @media print {
            .no-print, .no-print * {
                display: none !important;
            }
        }

        .labels {
            color: grey;
            width: auto;
            display: inline-block;
        }
    </style>
</head>
<body class="metro">
    <form id="form1" runat="server">
        <div>
            <div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>

            <div>
                <h1 style="font-size: 72px; text-align: center;"><span class="mif-warning mif-ani-flash mif-ani-fast"></span>Oops !!!</h1>
                <h1 style="font-size: 50px; text-align: center; color: darkcyan">Something went wrong.</h1>
                <br /><br />
                <div align="center">
                 <asp:Label CssClass="labels" ID="Label1" runat="server"> Error : </asp:Label>
                <asp:Label CssClass="labels" ID="lblError" runat="server">  </asp:Label>
                    </div>
                <br />
                <div align="center">
                    <a href="##" onclick="history.go(-1);">Go Back To Previous Page </a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
