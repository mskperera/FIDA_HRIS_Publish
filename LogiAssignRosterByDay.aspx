<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogiAssignRosterByDay.aspx.cs" Inherits="Smarter_HRIS.LogiAssignRosterByDay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Roster By Day</title>
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
    <%--<script src="js/ga.js"></script>--%>

    <link href="Styles/jquery-ui.css" rel="stylesheet" />
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNamesLogi",
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
    </script>

    <script type="text/javascript">
        $(function () {
            $('#<%= txtByGroup.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetGroupNames",
                        data: "{ 'GroupName': '" + request.term + "' }",
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
    </script>
</head>
<body class="metro">
    <form id="form1" runat="server">
    <div>
        <%-- --------------%>
    <header>
        <div class="navigation-bar dark">
                <div class="navbar-content container">

                    <a href="#" class="element"><span class="icon-grid-view"></span> SMARTER HRIS <sup>tm</sup></a>
                    <span class="element-divider"></span>

                    <div class="no-tablet-portrait">
                        <a class="element brand" href="#"><span class="icon-undo" onclick="history.go(-1);"></span></a>
                    </div>
                    <span class="element-divider"></span>

                    <div class="no-tablet-portrait">
                        <button class="element image-button image-left" runat="server" id="bttn_Home" onserverclick="bttn_Home_click">
                            <img src="images/home.png" />
                        </button>
                    </div>
                    <span class="element-divider"></span>
                    <a class="pull-menu" href="#"></a>
                    <ul class="element-menu">
                        <%--<li>
                            <a class="" href="HRDashboard.aspx">Home</a>
                        </li>--%>

                        <li>
                            <a class="dropdown-toggle dark" href="#">Support</a>
                            <ul class="dropdown-menu dark" data-role="dropdown">
                                <li><a href="#">Help</a></li>
                                <li>
                                    <a href="#" class="dropdown-toggle">About</a>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>

                    <div class="no-tablet-portrait">
                        <span class="element-divider"></span>
                        <a class="element brand" href="#"><span class="icon-spin"></span></a>
                        <a class="element brand" href="#"><span class="icon-printer"></span></a>
                        <span class="element-divider"></span>

                        <%--<div class="element input-element">
                            <form>
                                <div class="input-control text">
                                    <input type="text" placeholder="Search..."/>
                                    <button class="btn-search"></button>
                                </div>
                            </form>
                        </div>--%>
                        <div class="element place-right">
                            <a class="dropdown-toggle dark" href="#"><span class="icon-cog"></span></a>
                            <ul class="dropdown-menu dark place-right" data-role="dropdown">
                                <li><a href="CreateUsersHR.aspx">Create Users</a></li>
                                <li><a href="#">Change Password</a></li>
                                <li><a href="LoginHR.aspx">Log Out</a></li>
                                
                            </ul>
                        </div>
                        <span class="element-divider place-right"></span>
                        <button class="element image-button image-left place-right">
                            <asp:Label ID="lblsession1" Text="Welcome to HR Panel" runat="server">  </asp:Label>
                            <%--<img src="images/live2.jpg" id="headerimg" runat="server" />--%>
                        </button>

                          <div class="times" data-role="times" style ="padding-top:10px; font-size:15px" data-style-background="bg-darkViolet" data-style-divider="fg-darkViolet" ></div
                    </div>
                </div>
            </div>
    </header>


       <%-- -----------------%>

        <div class="container">
            <legend>Assign To Roster By Day</legend>
                    <div class="input-control radio">
                        <label>
                            <input id="radioByEmp" type="radio" name="a1" runat="server" />
                            <span class="check"></span>
                            By Employee
                        </label>
                    </div>
                    <div class="input-control radio">
                        <label>
                            <input id="radioByGrp" type="radio" name="a1" runat="server" />
                            <span class="check"></span>
                            By Group
                        </label>
                    </div>
                    &nbsp;&nbsp;
                    <asp:Button ID="bttnSelect" runat="server" Text="Select" CssClass="primary" OnClick="bttnSelect_Click" />
                    <br />

                    <asp:Panel ID="pnlEmployee" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Select Employee"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByEmployee" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectEmployee" runat="server" CssClass="warning" Text="Select" OnClick="bttnSelectEmployee_click" />
                    </asp:Panel>
                    <asp:Panel ID="pnlGroup" runat="server">
                        <asp:Label ID="Label2" runat="server" Text="Select Group"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByGroup" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectGroup" runat="server" CssClass="warning" Text="Select" OnClick="bttnSelectGroup_click" />
                    </asp:Panel>

            <div class="grid">
                        <div class="row">
                            <div class="span3">
                                <label>Employee/ Group Name</label>
                                <label>From Date</label>
                                <label>To Date</label>
                                <label>Is Active Shift</label>
                                <br />
                                <%--<asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />--%>
                            </div>
                            <div class="span5">
                                <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                                <input type="date" id="txtFromDate" runat="server" name="FromDate" /><br />
                                <input type="date" id="txtToDate" runat="server" name="ToDate" /><br />
                                <div class="input-control checkbox">
                                    <label>
                                        <input type="checkbox" id="chkIsActive" runat="server" />
                                        <span class="check"></span>
                                        IsActive
                                    </label>
                                </div>
                            </div>
                            <div class="span6">
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                            </div>
                        </div>
                <div class="row">
                    <div class="span3">
                        <label>Monday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpMon1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpMon2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpMon3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpMon4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <label>Tuesday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpTue1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpTue2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpTue3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpTue4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <label>Wednesday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpWed1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpWed2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpWed3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpWed4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <label>Thursday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpThu1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpThu2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpThu3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpThu4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <label>Friday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpFri1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpFri2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpFri3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpFri4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <label>Saturday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSat1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSat2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSat3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSat4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <label>Sunday</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSun1" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSun2" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSun3" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpSun4" runat="server" Width="150px"></asp:DropDownList>
                    </div>
                </div>
                        <div class="row">
                            <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                                <i class="icon-enter"></i>
                                Assign
                            </button>
<%--                            <button class="shortcut warning" runat="server" id="bttnDelete">
                                <i class="icon-remove"></i>
                                Delete
                            </button>--%>
                        </div>
                        <br />
                        
                    </div>

            <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
        </div>
    
    </div>
    </form>
</body>
</html>
