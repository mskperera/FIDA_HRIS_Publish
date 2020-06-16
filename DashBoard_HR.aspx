<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard_HR.aspx.cs" Inherits="Smarter_HRIS.DashBoard_HR" %>

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
  position:absolute;
  /*margin-left: auto;
  margin-right:auto;*/
  bottom:25px;
  right: 16px;
}
    </style>

    <%-- Google charts --%>
    <%--<script src="Scripts/jquery-1.7.1.js"></script>--%>
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>  
    <%--<script type="text/javascript" src="https://www.google.com/jsapi"></script>--%>



     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <%-- my chart 1 pie --%>


    <script type="text/javascript">           
        google.load('visualization', '1', { packages: ['corechart'] });  
    </script>  
    <script type="text/javascript">  
        $(function () {  
            $.ajax({
                data: "{ 'value': '<%= drpCompany.SelectedValue %>' }",
                type: 'POST',  
                dataType: 'json',  
                contentType: 'application/json',  
                url: 'Dashboard_HR.aspx/GetChartData2',
                //data: '{}',  
                success:  
                function (response) {  
                    drawchart5(response.d);  
                },  
  
                error: function () {  
                    alert("Error loading data!");  
                }  
            });  
        })  
        function drawchart5(dataValues) {  
            var data = new google.visualization.DataTable();  
            data.addColumn('string', 'Column Name');  
            data.addColumn('number', 'Column Value');  
            for (var i = 0; i < dataValues.length; i++) {  
                data.addRow([dataValues[i].EmployeeCity, dataValues[i].Total]);  
            }  
            new google.visualization.PieChart(document.getElementById('chart_div2')).
            draw(data, { title: "Employee Count By Work Category" });
        }  
    </script>



    <%--Job category wise--%>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">           
        google.load('visualization', '1', { packages: ['corechart'] });  
    </script>  
    <script type="text/javascript">  
        $(function () {  
            $.ajax({
                data: "{ 'value': '<%= drpCompany.SelectedValue %>' }",
                type: 'POST',  
                dataType: 'json',  
                contentType: 'application/json',  
                url: 'Dashboard_HR.aspx/GetChartData',
                //data: '{}',  
                success:  
                function (response) {  
                    drawchart(response.d);  
                },  
  
                error: function () {  
                    alert("Error loading data!");  
                }  
            });  
        })  
        function drawchart(dataValues) {  
            var data = new google.visualization.DataTable();  
            data.addColumn('string', 'Column Name');  
            data.addColumn('number', 'Column Value');  
            for (var i = 0; i < dataValues.length; i++) {  
                data.addRow([dataValues[i].EmployeeCity, dataValues[i].Total]);  
            }  
            new google.visualization.PieChart(document.getElementById('chart_div1')).
            draw(data, { title: "Employee Count By Job Category" });
        }  
    </script>  




















    <%--Gender wise--%>
    <script>
        var chartData3;
        google.load("visualization", "1", { packages: ["corechart"] });

        $(document).ready(function () {
            $.ajax({
                url: "Dashboard_HR.aspx/GetChartData3",
                data: "{ 'value': '<%= drpCompany.SelectedValue %>' }",
                datatype: "json",
                type: "POST",
                contentType: "application/json; chartset=utf-8",
                success: function (data) {
                    chartData1 = data.d;
                },
                error: function () {
                    alert("Error loading data! please try again")
                }
            }).done(function () {
                drawChart3();
            });
        });

        function drawChart3() {
            var data1 = google.visualization.arrayToDataTable(chartData1);
            var options1 = {
                title: "Employee Count By Gender",
                pieHole: 0.4,
            };

            var pieChart1 = new google.visualization.PieChart(document.getElementById('chart_div3'));
            pieChart1.draw(data1, options1);
        }
    </script>

    

</head>
<body class="skin-blue">
    <form id="form1" runat="server">
        <div>

            <!-- header logo: style can be found in header.less -->
            <header class="main-header">

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
                            <li class="active">
                                <a href="DashBoard_HR.aspx">
                                    <i class="fa fa-th"></i><span>HR Dashboard</span> <%--<small class="badge pull-right bg-green">new</small>--%>
                                </a>
                            </li>
                                <li  class="active">
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
                        <h1>HR Dashboard
                       
                        </h1>
                        <ol class="breadcrumb">
                            <%--<input type="date" id="txtFromDate" runat="server" name="FromDate" />
                        <input type="date" id="txtToDate" runat="server" name="ToDate" />
                        <asp:Button ID="bttnRefresh" runat="server" Text="refresh"></asp:Button>
                        &nbsp;--%>
                            <asp:Label>Select Company : </asp:Label>
                            <asp:DropDownList ID="drpCompany" runat="server" Style="margin-right: 5px;"></asp:DropDownList>
                          <button class="btn btn-primary btn-sm" id="bttnRefresh" runat="server" onserverclick="bttnRefresh_click" title="Search" style="margin-right: 5px;" type="button"><i class="fa fa-search"></i></button>
                            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                            <li class="active">HR Dashboard</li>
                        </ol>


                        <!-- Main content -->
                        <section class="content">

                            <!-- Main row -->
                            <div class="row">
                                <!-- Left col -->
                                <div class="row">
                                    <section class="col-lg-6 connectedSortable">

                                        <div class="box box-solid bg-green-gradient">
                                            <div class="box-header">
                                                <!-- tools box -->
                                                <div class="pull-right box-tools">
                                                    <button class="btn btn-success btn-sm pull-right" data-widget='collapse' data-toggle="tooltip" title="Collapse" style="margin-right: 5px;" type="button"><i class="fa fa-minus"></i></button>

                                                </div>
                                                <h3 class="box-title">Employee Count By Job Category
                                                </h3>
                                            </div>

                                            <div class="box-body" style="">
                                                <div id="chart_div1" style="position: relative; height: 180px"></div>
                                            </div>

                                        </div>
                                        <!-- /.box -->
                                    </section>
                                    <section class="col-lg-6 connectedSortable">

                                        <!-- Map box -->
                                        <div class="box box-solid bg-light-blue-gradient">
                                            <div class="box-header">
                                                <!-- tools box -->
                                                <div class="pull-right box-tools">
                                                    <button class="btn btn-primary btn-sm pull-right" data-widget='collapse' data-toggle="tooltip" title="Collapse" style="margin-right: 5px;" type="button"><i class="fa fa-minus"></i></button>
                                                </div>
                                                <!-- /. tools -->

                                                <%--   <i class="fa fa-smile-o"></i>--%>
                                                <h3 class="box-title">Employee Count By Work Category
                                                </h3>
                                            </div>
                                            <div class="box-body">
                                                <div id="chart_div2" style="height: 180px;"></div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="row">
                                    <section class="col-lg-6 connectedSortable">
                                        <!-- TO DO List -->
                                        <div class="box box-primary" style="height: 400px;">
                                            <div class="box-header">
                                                <i class="ion ion-clipboard"></i>
                                                <h3 class="box-title">Employee Turnover</h3>
                                                <button class="btn btn-default btn-sm pull-right" data-widget='collapse' type="button" data-toggle="tooltip" title="Collapse" style="margin-right: 5px; background-color: #eee8e8"><i class="fa fa-minus"></i></button>
                                            </div>
                                            <!-- /.box-header -->
                                            <div class="box-body">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        From:
                                                <input type="date" id="txtFromDate1" runat="server" name="FromDate" />
                                                        &nbsp;&nbsp;
                                            To:
                                                <input type="date" id="txtToDate1" runat="server" name="ToDate" />
                                                        &nbsp;
                                            <%--<button class="btn btn-success" id="btnSearch1" runat="server" onserverclick="btnSearch1_Click"><i class="fa fa-search"></i>&nbsp;Search</button>--%>
                                                        <asp:Button ID="btnSearch1" runat="server" CssClass="btn-success" Text="Search" OnClick="btnSearch1_Click" />
                                                        <br />
                                                        <br />
                                                        <asp:GridView ID="GrdAttendance1" runat="server" AutoGenerateColumns="False" Width="450px" CellPadding="7" CellSpacing="3" GridLines="None" ForeColor="#333333">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:BoundField DataField="Category" HeaderText="Category" />
                                                                <asp:BoundField DataField="Count" HeaderText="Count" />

                                                            </Columns>
                                                            <EditRowStyle BackColor="#2461BF" />
                                                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                            <RowStyle BackColor="#EFF3FB" />
                                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                        </asp:GridView>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <!-- /.box-body -->
                                            <div class="box-footer clearfix no-border">
                                                <h6>* On default it will show details for this year </h6>
                                                <%--       <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>--%>
                                                <%--<button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>--%>
                                            </div>
                                        </div>
                                        <!-- /.box -->
                                    </section>
                                    <section class="col-lg-6 connectedSortable">

                                        <div class="box box-solid bg-green-gradient">
                                            <div class="box-header">
                                                <!-- tools box -->
                                                <div class="pull-right box-tools">
                                                    <button class="btn btn-success btn-sm pull-right" data-widget='collapse' data-toggle="tooltip" title="Collapse" style="margin-right: 5px;" type="button"><i class="fa fa-minus"></i></button>

                                                </div>
                                                <h3 class="box-title">Employee Count By Gender</h3>
                                            </div>

                                            <div class="box-body" style="">
                                                <div id="chart_div3" style="position: relative; height: 180px"></div>
                                            </div>

                                        </div>
                                        <!-- /.box -->
                                    </section>
                                </div>                                                                                         
                                    </section>
                                </div>

                                
                            </div>
                            <div  style="height:100%; width:100%;"><img src="Images/developers.jpg" style="position:page; float:right; right:0px; bottom:0px; z-index:2;"/></div>
                        </section>
                </aside>
                <!-- /.right-side -->
            </div>
            
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
