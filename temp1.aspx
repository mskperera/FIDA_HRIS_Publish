<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp1.aspx.cs" Inherits="Smarter_HRIS.temp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selection</title>
    <link href="css/metro-bootstrap.css" rel="stylesheet"/>
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet"/>
    <link href="css/iconFont.css" rel="stylesheet"/>
    <link href="css/docs.css" rel="stylesheet"/>
    <link href="js/prettify/prettify.css" rel="stylesheet"/>

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <script src="js/ga.js"></script>

    <link href="Styles/jquery-ui.css" rel="stylesheet" />
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>

    <script src="Content/Datepicker/js/bootstrap-datepicker.js"></script>
    <script src="Content/Datepicker/js/bootstrap-datepicker.min.js"></script>
    <link href="Content/Datepicker/css/bootstrap-datepicker3.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker3.standalone.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="Content/Datepicker/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet" />
    <script src="Content/Datepicker/locales/bootstrap-datepicker.en-GB.min.js"></script>
    
    <%--<script type="text/javascript">
        $(function () {
            $('#<%= txtSearchEmp.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>--%>
</head>
<body class="metro">
    <form id="form1" runat="server">
    <div>
       
        <div class="container">
            <div class="grid">
                <div class="text-center">
                    <div>
                        <%--<img src="Images/productERP.png" />--%>
                        <img src="Images/SmartHRIS0.png" />
                    </div>
                    <legend>Selection</legend>
                <div class="row">
                    <div class="offset2">

                    <a class="tile double double-vertical bg-darkCyan" data-click="transform" href="DashboardLogin.aspx">
                        <div class="tile-content icon">
                            <span class="icon-dashboard"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Dashboard</div>
                        </div>
                    </a>

                      <%--         <a class="tile double double-vertical bg-red" data-click="transform" href="<%= System.Web.Configuration.WebConfigurationManager.AppSettings["AdminURL"] %>">
                        <div class="tile-content icon">
                            <span class="icon-cog"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Admin Panel</div>
                        </div>
                    </a>--%>

                    <a class="tile double double-vertical bg-red" data-click="transform" href="Login.aspx">
                        <div class="tile-content icon">
                            <span class="icon-user-3"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Self Service Portal</div>
                        </div>
                    </a>

                    <a class="tile double double-vertical bg-green" data-click="transform" href="LoginHR.aspx">
                        <div class="tile-content icon">
                            <span class="icon-calculate"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">HR Panel</div>
                        </div>
                    </a>
                    </div>
                </div>
                    <a href="http://www.smarthris.com/" target="_blank">www.smarthris.com</a>
                 <%--   <a class="image-button bg-darkGreen fg-white image-left" href="DashboardLogin.aspx">
                        Dashboard
                        <i class="icon-dashboard bg-green fg-white"></i>
                    </a>--%>
                </div>
            </div>
        </div>
    </div>
        
    </form>
</body>
</html>
