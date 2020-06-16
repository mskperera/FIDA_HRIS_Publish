<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogiDashboard.aspx.cs" Inherits="Smarter_HRIS.LogiDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR Dashboard</title>
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
                                <%--<li><a href="CreateUsersHR.aspx">Create Users</a></li>
                                <li><a href="#">Change Password</a></li>--%>
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
            <div class="grid">
            <div class="row">
                <div class="tile-group six">
                    <div class="tile-group-title fg-black">HR</div>

                    <%--<a class="tile double bg-red" data-click="transform" href="EmpAssignToGroup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-download"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Add an Employee</div>
                        </div>
                    </a>--%>

                    <%--<a class="tile double bg-red" data-click="transform" href="LogiAssignToShifts.aspx">
                        <div class="tile-content icon">
                            <span class="icon-download"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign to Shifts</div>
                        </div>
                    </a>--%>

                    <a class="tile double bg-emerald" data-click="transform" href="LogiAssignToShifts.aspx">
                        <div class="tile-content icon">
                            <span class="icon-enter"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign to Shifts</div>
                        </div>
                    </a>

                    <a class="tile double bg-amber" data-click="transform" href="LogiAssignRosterByDay.aspx">
                        <div class="tile-content icon">
                            <span class="icon-loop"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Roster Assign By Day</div>
                        </div>
                    </a>

                    <a class="tile double bg-steel" data-click="transform" href="LogiAssignRosterByPattern.aspx">
                        <div class="tile-content icon">
                            <span class="icon-loop"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Roster Assign By Pattern</div>
                        </div>
                    </a>
                    <%--
                    <a class="tile double bg-green" data-click="transform" href="AssigntoHoliday.aspx">
                        <div class="tile-content icon">
                            <span class="icon-enter"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign To Holiday</div>
                        </div>
                    </a>

                    <a class="tile double bg-magenta" data-click="transform" href="LeaveCancelSearch.aspx">
                        <div class="tile-content icon">
                            <span class="icon-cancel"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Leave Cancel</div>
                        </div>
                    </a>

                    <a class="tile bg-violet" data-click="transform" href="OTApproval.aspx">
                        <div class="tile-content icon">
                            <span class="icon-auction"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Daily OT Approvals</div>
                        </div>
                    </a>

                    <a class="tile double bg-darkCyan" data-click="transform" href="OTApprovalbySession.aspx">
                        <div class="tile-content icon">
                            <span class="icon-auction"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">OT Approvals by Sessions</div>
                        </div>
                    </a>

                    <a class="tile bg-indigo" data-click="transform" href="RegisterUsersDashboard.aspx">
                        <div class="tile-content icon">
                            <span class="icon-plus"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Register Users for Dashboard</div>
                        </div>
                    </a>--%>

                </div>
            </div>

            


        </div>
    </div>


        </div>
    
    <%--</div>--%>
    </form>
</body>
</html>
