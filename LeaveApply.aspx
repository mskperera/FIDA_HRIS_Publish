<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" EnableEventValidation="false" ValidateRequest="false" AutoEventWireup="true" CodeBehind="LeaveApply.aspx.cs" Inherits="Smarter_HRIS.LeaveApply" %>

<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="css/sComponentStyles.css" rel="stylesheet" />
    <link href="css/sTabPage.css" rel="stylesheet" />
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

    <style>
        .labelleaveapplication {
            width: 200px
        }
    </style>




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
                <li><a href="#_page_4">Leave History Details</a></li>
            </ul>

            <div class="frames">
                <%-- Apply Leaves Tab --%>
                <div class="frame" id="_page_1">



                    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend class="trans">Leave Application</legend>
                            <div class="grid">
                                <div class="row">
                                    <asp:Panel ID="pnlNotify0" runat="server"></asp:Panel>
                                </div>
                                <table class="auto-style1">


                                    <tr>
                                        <td class="auto-style2">

                                            <label class="labelleaveapplication">Leave Registration Year </label>
                                        </td>
                                        <td class="auto-style4-fg-cyan"></td>
                                        <td class="auto-style3">

                                            <asp:DropDownList ID="drp_LeaveRegYear" runat="server" Width="213px" AutoPostBack="true" OnSelectedIndexChanged="drp_LeaveRegYear_SelectedIndexChanged" />

                                        </td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style2">

                                            <label class="labelleaveapplication">Reason For Leave </label>
                                        </td>
                                        <td class="auto-style4-fg-cyan"></td>
                                        <td class="auto-style3">
                                            <label>
                                                <asp:TextBox ID="txtreason" runat="server" Width="500px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2 ">

                                            <label class="labelleaveapplication">
                                                Leave Type

                                            </label>
                                        </td>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style3">

                                            <asp:DropDownList ID="drpLeavetype" runat="server" Width="213px" AutoPostBack="true" OnSelectedIndexChanged="drpLeavetype_SelectedIndexChanged">
                                            </asp:DropDownList>

                                        </td>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label class="labelleaveapplication">Leave Category </label>

                                        </td>
                                        <td class="auto-style4"></td>
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
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label10" runat="server" Text="Work Covering Person "></asp:Label>
                                            </label>
                                        </td>
                                        <td class="auto-style4"></td>
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
                                    <tr>

                                        <td style="padding-bottom: 21px;" colspan="3">
                                            <asp:GridView ID="grdworkcovering" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="7" AutoGenerateColumns="False" CellSpacing="1">
                                                <Columns>
                                                    <asp:BoundField DataField="CoveringPerson" HeaderText="Covering Person" HeaderStyle-Width="160" />
                                                    <asp:BoundField DataField="Designation" HeaderText="Designation" HeaderStyle-Width="160" />
                                                    <asp:BoundField DataField="MobNo" HeaderText="Mobile No" HeaderStyle-Width="160" />
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


                                        </td>

                                        <td colspan="2">
                                            <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <label class="labelleaveapplication">Leave application date </label>

                                        </td>
                                        <td class="auto-style6"></td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblAppDate" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style10"></td>
                                        <td class="auto-style8">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label class="labelleaveapplication">From Date &amp; Time  </label>

                                        </td>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style3">
                                            <label>
                                                <%--<asp:TextBox ID="txtFromDate" runat="server" Width="186px"></asp:TextBox>--%>
                                                <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />

                                            </label>


                                        </td>
                                        <td class="auto-style9">
                                            <label>
                                                <%--<asp:TextBox ID="txtFromTime" runat="server" Width="172px"></asp:TextBox>--%>
                                                <input type="time" id="txtFromTime" runat="server" name="usr_time" />
                                            </label>

                                        </td>

                                    </tr>

                                    <tr>
                                        <td class="auto-style2">
                                            <label class="labelleaveapplication">ToDate &amp; Time </label>

                                        </td>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style3">
                                            <label>
                                                <%--<asp:TextBox ID="txtToDate" runat="server" Width="183px"></asp:TextBox>--%>
                                                <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                                                <%--<input type="time" id="txtToDate" runat="server" name="usr_time"/>--%>
                                                <br />

                                            </label>
                                        </td>
                                        <td class="auto-style9">
                                            <label>
                                                <%--<asp:TextBox ID="txtToTime" runat="server" Width="169px"></asp:TextBox>--%>
                                                <input type="time" id="txtToTime" runat="server" name="usr_time" />
                                            </label>
                                        </td>
                                        <td>

                                            <asp:Label ID="lblErrorMsg" runat="server" CssClass="trans"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label>
                                                <asp:Label ID="Label6" runat="server" Text="Days  "></asp:Label>
                                                <asp:TextBox ID="txtDate" runat="server" OnTextChanged="txtDate_TextChanged" Width="88px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style3">
                                            <label>
                                                <asp:Label ID="Label8" runat="server" Text=" Hours  "></asp:Label>
                                                <asp:TextBox ID="txtHours" runat="server" Width="111px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td class="auto-style9">
                                            <label>
                                                <asp:Label ID="Label9" runat="server" Text="Minutes  "></asp:Label>
                                                <asp:TextBox ID="txtMins" runat="server" Width="120px"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>


                                </table>

                            </div>
                            <br />
                            <br />
                            <div style="width: 50%;">
                                <asp:Button ID="Button2" CssClass="large info LeaveValidationBtn" runat="server" OnClick="Button2_Click" Text="Validate" />
                                <asp:Button ID="Button1"  CssClass="LeaveSumitBtn" runat="server" Text="Submit" OnClick="Button1_Click" />


                            </div>

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
                                                            <asp:BoundField ControlStyle-CssClass="trans" DataField="LevelName" HeaderText="Level Name" />
                                                            <asp:BoundField ControlStyle-CssClass="trans" DataField="NameWithInitials" HeaderText="Supervisor Name" />
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
                                <div class="panel-header bg-cyan fg-white trans">
                                    Filteration
                                </div>
                                <div class="panel-content">
                                    <div class="grid">
                                        <div class="row">
                                            <div class="span4">
                                                <table>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:Label ID="Label11" runat="server" Text="From Date"></asp:Label></td>
                                                        <td>
                                                            <input type="date" id="txtFromDateHistory" runat="server" name="txtCheckInDate" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label12" runat="server" Text="To Date"></asp:Label></td>
                                                        <td>
                                                            <input type="date" id="txtToDateHistory" runat="server" name="txtCheckInDate" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="span3">
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPending" runat="server" />
                                                        <span class="check"></span>
                                                        <span class="trans">Pending Leaves </span>
                                                    </label>
                                                </div>
                                                <br />
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkApproved" runat="server" />
                                                        <span class="check"></span>
                                                        <span class="trans">Approved Leaves</span>
                                                    </label>
                                                </div>
                                                <br />
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkRejected" runat="server" />
                                                        <span class="check"></span>
                                                        <span class="trans">Rejected Leaves
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="span2">
                                                <button class="shortcut success" id="bttnFilter" runat="server" onserverclick="bttnFilter_click">
                                                    <i class="icon-search"></i>
                                                    <span>Filter
                                                    </span>
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
                                <div class="panel-header bg-cyan fg-white trans">
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
                                                    <span>Filter</span>

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

                <div class="frame" id="_page_4">
                    <legend>Employee Leave History</legend>
                    <asp:Label ID="lblEmpID" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <div class="grid">
                                <div class="row">
                                    <%-- <div class="span2">
                                        <label>Employee Name</label>
                                    </div>--%>
                                    <%-- <div class="input-control password warning-state span4" style="margin-left: 12px;">
                                        <asp:TextBox ID="txtSearch1" runat="server"></asp:TextBox>
                                    </div>--%>
                                    <div class="span2" style="margin-left: 40px;">
                                        <label>From Date</label>
                                        <label>To Date</label>
                                    </div>
                                    <div class="span3">
                                        <input type="date" id="txtFromDate1" runat="server" name="txtFrmDate" style="width: 198px;" />
                                        <input type="date" id="txtToDate1" runat="server" name="txtToDate" style="width: 198px;" />
                                    </div>
                                    <div class="span2">
                                        <asp:Button ID="bttnSearch1" runat="server" Text="search" CssClass="warning" OnClick="bttnSearch_Click" Style="margin-bottom: 4px;" />
                                        <asp:Button ID="btnExport" runat="server" Text="Download" CssClass="success" OnClick="ExportToPDF" Visible="false" />

                                        <script type="text/javascript">
                                            $(function () {
                                                $("[id*=btnExport]").click(function () {
                                                    //  $("[id*=hfGridHtml]").val($("#Grid").html());
                                                    $('#<%=hfGridHtml.ClientID %>').val($('#<%=Grid.ClientID %>').html());
                                                });
                                            });
                                        </script>
                                    </div>
                                </div>

                                <div class="row" id="Grid" runat="server">
                                    <br />
                                    <div class="span8">
                                        <asp:Label ID="Label51" runat="server"></asp:Label>
                                    </div>
                                    <div class="span5">
                                        <asp:Label ID="fromDate1" runat="server"></asp:Label><br />
                                    </div>
                                    <div class="row">
                                        <div class="span13">
                                            <asp:Panel ID="pnlLeaveBalance1" runat="server"></asp:Panel>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="span13" id="PendingLeaves1" runat="server">
                                            <asp:Panel ID="pnlPendingLeaves" runat="server"></asp:Panel>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="span13" id="ApprovedLeaves" runat="server">
                                            <asp:Panel ID="pnlApprovedLeaves" runat="server"></asp:Panel>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="span13" id="RejectedLeaves" runat="server">
                                            <asp:Panel ID="pnlRejectedLeaves" runat="server"></asp:Panel>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="span13" id="CancelledLeaves" runat="server">
                                            <asp:Panel ID="pnlCancelledLeaves" runat="server"></asp:Panel>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <asp:HiddenField ID="EmpID1" runat="server" />
                            <asp:HiddenField ID="hfGridHtml" runat="server" />
                        </ContentTemplate>
                        <%-- <Triggers>
                            <asp:PostBackTrigger ControlID="btnExport" />
                        </Triggers>--%>
                    </asp:UpdatePanel>
                </div>

            </div>
        </div>
        <br />
        <br />
        <%--        <script type="text/javascript">  
            $(document).ready(
                function () {
                $.ajax({
                    type: "POST",
                    url: "HRIS_Service.asmx/Tranlation",
                    data: "{'Paragraph':'employee'}",
                    contentType: "application/json",
                    datatype: "json",
                    success: function (responseFromServer) {
                        alert(responseFromServer.d)
                    }
                });
                }
             
            );
        </script>--%>

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>



    </div>
</asp:Content>
