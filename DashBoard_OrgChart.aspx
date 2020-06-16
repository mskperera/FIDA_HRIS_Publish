<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard_OrgChart.aspx.cs" Inherits="Smarter_HRIS.DashBoard_OrgChart" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dashboard</title>
    <!-- bootstrap 3.0.2 -->
    <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="css1/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="css1/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="css1/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="css1/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="css1/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="css1/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="css1/AdminLTE.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        #OTSum {
            background-color: Salmon;
        }

        #OTSummary {
            background-color: orange;
        }
    </style>
    <style>
        .center {
  position:relative;
  /*margin-left: auto;
  margin-right:auto;*/
  bottom:25px;
  right: 16px;
}
    </style>

    <%-- Google charts --%>
    <script type="text/javascript" src="js/jQuery-1.8.3.js"></script>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["orgchart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            $.ajax({
                type: "POST",
                url: "DashBoard_OrgChart.aspx/GetChartData",
                data: "{ 'value': '<%= drpCompany.SelectedValue %>' }",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                //  type: "POST",
                success: function (r) {
                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Entity');
                    data.addColumn('string', 'ParentEntity');
                    data.addColumn('string', 'ToolTip');
                    for (var i = 0; i < r.d.length; i++) {
                        var Structure_Id = r.d[i][0].toString();
                        var StructureName = r.d[i][1];
                        var EmpCount = r.d[i][2];
                        var OrganizationID = r.d[i][3] != null ? r.d[i][3].toString() : '';
                        data.addRows([[{
                            v: Structure_Id,
                            f: StructureName + '<div>(<span>' + EmpCount + '</span>)</div>'
                        }, OrganizationID, EmpCount]]);
                    }
                    var chart = new google.visualization.OrgChart($("#chart")[0]);
                    chart.draw(data, { allowHtml: true });
                },
                failure: function (r) {
                    alert(r.d);
                },
                error: function (r) {
                    alert(r.d);
                }
            });
        }
    </script>

    <style>
        .google-visualization-orgchart-table {
            border-collapse: separate !important;
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>

</head>
<body class="skin-blue">
    <form id="form1" runat="server">
        <div>

            <!-- header logo: style can be found in header.less -->
            <header class="header">

                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-right">
                        <ul class="nav navbar-nav">
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="glyphicon glyphicon-user"></i>
                                    <span>
                                        <asp:Label runat="server" ID="lblsession1"></asp:Label>
                                        <i class="caret"></i></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header bg-light-blue">
                                        <img src="Images/Profile/1/emp2.png" runat="server" id="headerimg" class="img-circle" alt="User Image" />
                                        <p>
                                            <asp:Label ID="lblUser" runat="server"></asp:Label>
                                            <small>
                                                <asp:Label ID="lblJoinDate" runat="server"></asp:Label>
                                                <%--Member since Nov. 2012--%></small>
                                        </p>
                                    </li>

                                    <li class="user-footer">
                                        <%--<div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>--%>
                                        <div class="pull-right">
                                            <a href="DashboardLogin.aspx" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <%-- Header --%>
            <div class="wrapper row-offcanvas row-offcanvas-left">
                <!-- Left side column. contains the logo and sidebar -->
                <aside class="left-side sidebar-offcanvas">
                    <!-- sidebar: style can be found in sidebar.less -->
                    <section class="sidebar">
                        <!-- Sidebar user panel -->
                        <div class="user-panel">
                            <div class="pull-left image">
                                <img src="img/avatar3.png" runat="server" id="SideImage" class="img-circle" alt="User Image" />
                            </div>
                            <div class="pull-left info">
                                <p>
                                    <asp:Label ID="lblSideName" runat="server"></asp:Label>
                                </p>

                                <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                            </div>
                        </div>
                        <ul class="sidebar-menu">
                            <li>
                                <a href="Dashboard_Main.aspx">
                                    <i class="fa fa-dashboard"></i><span>Dashboard</span>
                                </a>
                            </li>
                            <li>
                                <a href="DashBoard_HR.aspx">
                                    <i class="fa fa-th"></i><span>HR Dashboard</span> <%--<small class="badge pull-right bg-green">new</small>--%>
                                </a>
                            </li>
                            <li class="active">
                                <a href="DashBoard_OrgChart.aspx">
                                    <i class="fa fa-list"></i><span>Organization Chart</span> <%--<small class="badge pull-right bg-green">new</small>--%>
                                </a>
                            </li>
                            <li  class="active">
                                <a href="DashBoard_Custom.aspx">
                                    <i class="fa fa-camera"></i><span>Custom Dashboard</span> <%--<small class="badge pull-right bg-green">new</small>--%>
                                </a>
                            </li>

                        </ul>
                    </section>
                    <!-- /.sidebar -->
                </aside>

                <!-- Right side column. Contains the navbar and content of the page -->
                <aside class="right-side">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>Organization Chart
                       <%-- <small>Control panel</small>--%>
                        </h1>
                        <ol class="breadcrumb">
                            <%--<input type="date" id="txtFromDate" runat="server" name="FromDate" />
                        <input type="date" id="txtToDate" runat="server" name="ToDate" />
                        <asp:Button ID="bttnRefresh" runat="server" Text="refresh"></asp:Button>
                        &nbsp;--%>
                            <asp:Label>Select Company : </asp:Label>
                            <asp:DropDownList ID="drpCompany" runat="server" Style="margin-right: 5px;"></asp:DropDownList>
                            <button class="btn btn-primary btn-sm" id="bttnRefresh" runat="server" title="Search" onserverclick="bttnRefresh_click" style="margin-right: 5px;" type="button"><i class="fa fa-search"></i></button>
                            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                            <li class="active">Dashboard</li>
                            <%--  onserverclick="bttnRefresh_click"--%>
                        </ol>

                    </section>
                    <section class="content" id="sect1">
                        <div class="row">
                            <div id="chart">
                            </div>
                        </div>
                        
                    </section>
                </aside>
                <!-- /.right-side -->
               
            </div>
             <div  style="height:100%; width:100%;"><img src="Images/developers.jpg" style="position:page; float:right; right:0px; bottom:0px; z-index:2;"/></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="js1/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="js1/bootstrap.min.js" type="text/javascript"></script>
        <!-- Morris.js charts -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="js1/plugins/morris/morris.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="js1/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="js1/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="js1/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <!-- jQuery Knob Chart -->
        <script src="js1/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="js1/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- datepicker -->
        <script src="js1/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="js1/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="js1/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="js1/AdminLTE/app.js" type="text/javascript"></script>

        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="js1/AdminLTE/dashboard.js" type="text/javascript"></script>

        <!-- AdminLTE for demo purposes -->
        <script src="js1/AdminLTE/demo.js" type="text/javascript"></script>
    </form>
</body>
</html>
