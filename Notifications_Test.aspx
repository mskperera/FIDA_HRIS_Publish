<%@ Page Title="" Language="C#" EnableEventValidation="true" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Notifications_Test.aspx.cs" Inherits="Smarter_HRIS.Notifications_Test" %>

<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--<link rel="stylesheet" href="Styles/default.css" type="text/css"/>--%>
    <link href="Styles/dcalendar.picker.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 211px;
        }

        .auto-style3 {
            width: 271px;
        }

        .auto-style4 {
            width: 30px;
        }

        .auto-style5 {
            width: 211px;
            height: 31px;
        }

        .auto-style6 {
            width: 30px;
            height: 31px;
        }

        .auto-style7 {
            width: 271px;
            height: 31px;
        }

        .auto-style8 {
            height: 31px;
        }

        .auto-style9 {
            width: 223px;
        }

        .auto-style10 {
            height: 31px;
            width: 223px;
        }
    </style>
    <script>
        $(function () {
            $("#datepicker1").datepicker();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div class="container">
        <br />
        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Apply Leave</a></li>
                <li><a href="#_page_2">Leave History</a></li>
                <li><a href="#_page_3">Leave Approvals</a></li>
            </ul>

            <div class="frames">
                <%-- Apply Leaves Tab --%>
                <div class="frame" id="_page_1">
                    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>


                            <%--<h1 class="fg-cobalt">
                    <a href="#" onclick="history.go(-1);"><i class="icon-arrow-left-3 fg-cobalt smaller"></i></a>
                     Leave Application
            </h1>

        <br />--%>
                            <%--<asp:Label ID="Label11" runat="server"></asp:Label>--%>
                            <legend>Leave Application</legend>

                            <div class="grid">
                                <div class="row">
                                    <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
                                </div>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label2" class="fg-cyan" runat="server" Text="Reason For Leave "></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4-fg-cyan">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <%--<div class="input-control textarea">
            <textarea id="txtreason" runat="server"></textarea>
        </div>--%>
                                                <asp:TextBox ID="txtreason" runat="server" Width="500px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label1" class="fg-cyan" runat="server" Text="Leave Type         " ViewStateMode="Disabled"></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <asp:DropDownList ID="drpLeavetype" runat="server" Width="213px" AutoPostBack="true" OnSelectedIndexChanged="drpLeavetype_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </label>
                                        </td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label7" class="fg-cyan" runat="server" Text="Leave Category         " ViewStateMode="Disabled"></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <asp:DropDownList ID="drpLeaveCategory" runat="server" Width="213px" AutoPostBack="true" OnSelectedIndexChanged="drpLeaveCategory_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </label>
                                        </td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <label>
                                                <asp:Label ID="Label3" class="fg-cyan" runat="server" Text="Leave application date "></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style6">:</td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblAppDate" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style10"></td>
                                        <td class="auto-style8">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label4" class="fg-cyan" runat="server" Text="From Date &amp; Time  :"></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <%--<asp:TextBox ID="txtFromDate" runat="server" Width="186px"></asp:TextBox>--%>
                                                <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                                                <%--<input class="form-control" runat="server" id="txtFromDate" type="text"/>--%>
        &nbsp;<%--<asp:Calendar ID="ClFromDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="16px" Width="188px" CellPadding="1" DayNameFormat="Shortest">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>--%>
                                            </label>


                                            <%-- <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="16px" NextPrevFormat="ShortMonth" Width="16px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>--%>

                
                                        </td>
                                        <td class="auto-style9">
                                            <label>
                                                <%--<asp:TextBox ID="txtFromTime" runat="server" Width="172px"></asp:TextBox>--%>
                                                <input type="time" id="txtFromTime" runat="server" name="usr_time" />
                                            </label>
                                            <%--<MKB:TimeSelector ID="TimeSelector1" runat="server"></MKB:TimeSelector>--%>
                                        </td>
                                        <%--<td>
                <asp:Label ID="Label12" class="fg-lightGreen" runat="server" Text="00:00"></asp:Label>
            </td>--%>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label5" class="fg-cyan" runat="server" Text="ToDate &amp; Time "></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <%--<asp:TextBox ID="txtToDate" runat="server" Width="183px"></asp:TextBox>--%>
                                                <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                                                <%--<input type="time" id="txtToDate" runat="server" name="usr_time"/>--%>
                                                <br />
                                                <%--<asp:Calendar ID="clToDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="16px" Width="188px" CellPadding="1" DayNameFormat="Shortest">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>--%>
                                            </label>
                                        </td>
                                        <td class="auto-style9">
                                            <label>
                                                <%--<asp:TextBox ID="txtToTime" runat="server" Width="169px"></asp:TextBox>--%>
                                                <input type="time" id="txtToTime" runat="server" name="usr_time" />
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" class="small info" runat="server" OnClick="Button2_Click" Text="Validate" />
                                            <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label6" class="fg-cyan" runat="server" Text="Days  "></asp:Label>
                                                <asp:TextBox ID="txtDate" runat="server" OnTextChanged="txtDate_TextChanged" Width="88px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <asp:Label ID="Label8" class="fg-cyan" runat="server" Text=" Hours  "></asp:Label>
                                                <asp:TextBox ID="txtHours" runat="server" Width="111px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td class="auto-style9">
                                            <label>
                                                <asp:Label ID="Label9" class="fg-cyan" runat="server" Text="Minutes  "></asp:Label>
                                                <asp:TextBox ID="txtMins" runat="server" Width="120px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label10" class="fg-cyan" runat="server" Text="Work Covering Person "></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <label>
                                                <asp:DropDownList ID="drpCoveringPerson" runat="server" Width="200px">
                                                </asp:DropDownList>
                                            </label>
                                        </td>
                                        <td class="auto-style9">
                                            <asp:Button ID="Button3" class="small info" runat="server" OnClick="Button3_Click" Text="ADD" Width="115px" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>

                                </table>

                            </div>
                            <asp:GridView ID="grdworkcovering" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="7" AutoGenerateColumns="False" CellSpacing="1">
                                <Columns>
                                    <asp:BoundField DataField="NameWithInitials" HeaderText="Name" />
                                    <asp:BoundField DataField="Name" HeaderText="Designation" />
                                    <asp:BoundField DataField="MobNo" HeaderText="Mobile No" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            <br />
                            <br />
                            <asp:Button ID="Button1" Class="large info" runat="server" Text="Submit" OnClick="Button1_Click" /><br />
                            <br />
                            <div class="grid">
                                <div class="row">
                                    <div class="span10">
                                        <asp:Panel ID="pnlLeaveBalance" runat="server"></asp:Panel>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="span10">
                                        <div class="accordion with-marker" data-role="accordion" data-closeany="true">
                                            <div class="accordion-frame">
                                                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-list"></i>Reporting Hierarchy</a>
                                                <div class="content">
                                                    <asp:GridView ID="grdHierarchy" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField />
                                                            <asp:BoundField DataField="LevelName" HeaderText="Level Name" />
                                                            <asp:BoundField DataField="NameWithInitials" HeaderText="Supervisor Name" />
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <%-- Applied Leaves Tab --%>
                <div class="frame" id="_page_2">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend>Leave History</legend>
                            <%--<div class ="grid">
                        <div class ="row">
                            <div class="span2">
                                <label class="fg-amber">Pending</label>
                            </div>
                            <div class="span2">
                                <label class="fg-emerald">Approved</label>
                            </div>
                            <div class="span2">
                                <label class="fg-red">Rejected</label>
                            </div>
                        </div>
                    </div>--%>
                            <div class="panel" data-role="panel">
                                <div class="panel-header bg-cyan fg-white">
                                    Filteration
                                </div>
                                <div class="panel-content">
                                    <div class="grid">
                                        <div class="row">
                                            <div class="span4">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label11" runat="server" Text="From Date"></asp:Label></td>
                                                        <td>:
                                                            <input type="date" id="txtFromDateHistory" runat="server" name="txtCheckInDate" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label12" runat="server" Text="To Date"></asp:Label></td>
                                                        <td>:
                                                            <input type="date" id="txtToDateHistory" runat="server" name="txtCheckInDate" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="span3">
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPending" runat="server" />
                                                        <span class="check"></span>
                                                        Pending Leaves
                                                    </label>
                                                </div>
                                                <br />
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkApproved" runat="server" />
                                                        <span class="check"></span>
                                                        Approved Leaves
                                                    </label>
                                                </div>
                                                <br />
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkRejected" runat="server" />
                                                        <span class="check"></span>
                                                        Rejected Leaves
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="span2">
                                                <button class="shortcut success" id="bttnFilter" runat="server" onserverclick="bttnFilter_click">
                                                    <i class="icon-search"></i>
                                                    Filter
                                                </button>

                                            </div>
                                            <div class="span4">
                                                <img border="0" alt="W3Schools" src="img/ColorCodesLeave.jpg" width="150" height="90">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <asp:Panel ID="pnlAppliedLeaves" runat="server"></asp:Panel>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <%-- Approved Leaves --%>
                <div class="frame" id="_page_3">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend>Leave Approvals</legend>
                            <%--<div class ="grid">
                        <div class ="row">
                            <div class="span2">
                                <label class="fg-amber">Pending</label>
                            </div>
                            <div class="span2">
                                <label class="fg-emerald">Approved</label>
                            </div>
                            <div class="span2">
                                <label class="fg-red">Rejected</label>
                            </div>
                        </div>
                    </div>--%>
                            <div class="panel" data-role="panel">
                                <div class="panel-header bg-cyan fg-white">
                                    Filteration
                                </div>
                                <div class="panel-content">
                                    <div class="grid">
                                        <div class="row">
                                            <div class="span4">
                                                <asp:Label ID="Label15" runat="server" Text="From Date"></asp:Label><br />
                                                <input type="date" id="txtFromDateApproval" runat="server" name="txtCheckInDate" />
                                                <%--<table>
                                            <tr>
                                                <td><asp:Label ID="Label13" runat="server" Text="From Date"></asp:Label></td>
                                                <td>: <input type="date" id="txtFromDateApproval" runat="server" name="txtCheckInDate"/></td>
                                            </tr>
                                            <tr>
                                                <td><asp:Label ID="Label14" runat="server" Text="To Date"></asp:Label></td>
                                                <td>: <input type="date" id="txtToDateApproval" runat="server" name="txtCheckInDate"/></td>
                                            </tr>
                                        </table>--%>
                                            </div>
                                            <div class="span2">
                                                <asp:Label ID="Label14" runat="server" Text="To Date"></asp:Label><br />
                                                <input type="date" id="txtToDateApproval" runat="server" name="txtCheckInDate" />
                                            </div>
                                            <div class="span5">
                                                <button class="shortcut success" id="bttnFilterApp" runat="server" onserverclick="bttnFilterApp_click">
                                                    <i class="icon-search"></i>
                                                    Filter
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <asp:Panel ID="pnlLeaveApprovals" runat="server"></asp:Panel>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>



        <%--<br />
    <br />
    <h2 class="fg-cobalt">Available Leaves</h2>
    <br />
    <br />
    <asp:GridView ID="LeaveGridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>--%>
        <br />
        <%--<cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFromDate"></cc1:CalendarExtender>
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>--%>

        <%--<cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtToDate"></cc1:CalendarExtender>--%>
        <%-- <cc1:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server"></cc1:ToolkitScriptManager>--%>

        <br />
        <br />
        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>

    </div>
    </ContentTemplate>
        </asp:UpdatePanel>

</asp:Content>
