<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogiAssignToShifts.aspx.cs" Inherits="Smarter_HRIS.LogiAssignToShifts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign To Shifts</title>
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
            $('#<%= txtShiftName.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetShiftNames",
                        data: "{ 'ShiftName': '" + request.term + "' }",
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
     <script type="text/javascript">
         $(function () {
             $('#<%= txtSearchEmp.ClientID %>').autocomplete({
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
            $('#<%= txtSearchShift.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetShiftNames",
                        data: "{ 'ShiftName': '" + request.term + "' }",
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
            <legend>Assign To Shifts</legend>
            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
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
                                <label>Shift Name</label>
                                <label>From Date</label>
                                <label>To Date</label>
                                <label>Is Active Shift</label>
                                <br />
                                <%--<asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />--%>
                            </div>
                            <div class="span5">
                                <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                                <asp:TextBox ID="txtShiftName" runat="server"></asp:TextBox><br />
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
                        </div>
                        <div class="row">
                            <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                                <i class="icon-enter"></i>
                                Assign
                            </button>
                            <button class="shortcut warning" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                                <i class="icon-remove"></i>
                                Delete
                            </button>
                        </div>
                        <div class="row">
                            <legend>Search Assigned Shifts</legend>
                            <div class="span3">
                                <label>Employee Name</label>
                                <label>Shift<small class="fg-red">&nbsp;&nbsp;&nbsp;*optional</small></label>
                                <label>From Date</label>
                                <label>To Date</label>
                                <button class="shortcut primary" runat="server" id="bttnSearch" onserverclick="bttnSearch_click">
                                    <i class="icon-search"></i>
                                    Search
                                </button>
                                <asp:Panel ID="pnlSearch" runat="server"></asp:Panel>
                            </div>
                            <div class="span3">
                                <asp:TextBox ID="txtSearchEmp" runat="server"></asp:TextBox><br />
                                <asp:TextBox ID="txtSearchShift" runat="server"></asp:TextBox><br />
                                <input type="date" id="txtSearchFromDate" runat="server" name="txtSearchFromDate" /><br />
                                <input type="date" id="txtSearchToDate" runat="server" name="txtSearchToDate" /><br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="span8">
                                <label>Detailed Grid</label>
                            <asp:GridView ID="grdSearch" runat="server" AutoGenerateColumns="False" CellPadding="7" Width="100%" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="EmpName" HeaderText="Name" />
                                    <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                                    <asp:BoundField DataField="FromDate" HeaderText="Assigned Date" DataFormatString="{0:MM/dd/yyyy}" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            </div>
                            <div class="span4">
                                <label>Shift vs Month</label>
                                <asp:GridView ID="grdSearch1" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                                        <asp:BoundField DataField="Year" HeaderText="Year" />
                                        <asp:BoundField DataField="Month" HeaderText="Month" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                            </div>
                        </div>
                        
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
