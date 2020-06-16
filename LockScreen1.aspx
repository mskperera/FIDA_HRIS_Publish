<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LockScreen1.aspx.cs" Inherits="Smarter_HRIS.LockScreen1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lock Screen (beta)</title>
    <link href="css\metro-bootstrap.css" rel="stylesheet">
    <link href="css\metro-bootstrap-responsive.css" rel="stylesheet">
    <link href="css\iconFont.css" rel="stylesheet">
    <link href="css\docs.css" rel="stylesheet">
    <link href="js\prettify\prettify.css" rel="stylesheet">

    <!-- Load JavaScript Libraries -->
    <script src="js\jquery\jquery.min.js"></script>
    <script src="js\jquery\jquery.widget.min.js"></script>
    <script src="js\jquery\jquery.mousewheel.js"></script>
    <script src="js\prettify\prettify.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js\load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js\docs.js"></script>
    <script src="js\github.info.js"></script>
</head>
<body background="Images/bg001.jpg" class="metro">
    <form id="form1" runat="server">

        <div class="grid">
            <div class="row"></div>
            <div class="row"></div>
            <div class="row">

    <div class="text-center">
        <%--<h1>Log In</h1>--%>
        <div class="times" data-role="times" data-style-background="bg-transparent" data-style-foreground="fg-gray" data-style-divider="fg-black" style="font-size: 40px"></div>
        <%--<a class="button large info" href="Login.aspx">Log In</a> <br />--%>
        <a class=" button shortcut bg-transparent fg-black" href="Login.aspx">
            <i class="icon-switch"></i>
            LogIn
        </a>
    </div>
                </div>
            </div>
        <%--<div class="grid">
            <div class="row">
                <div class="offset8">
                    <a class="tile bg-lightBlue ol-transparent" data-click="transform">
                        <div class="tile-content image">
                            <img src="images/employee_new.jpg"/>
                        </div>
                    </a>
                </div>
            </div>
        </div>--%>
    </form>
</body>
</html>
