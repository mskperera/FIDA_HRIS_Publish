<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ManualAttendance.aspx.cs" Inherits="Smarter_HRIS.ManualAttendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 225px;
        }

        .auto-style3 {
            width: 254px;
        }

        .auto-style4 {
            width: 22px;
        }

        .auto-style5 {
            width: 225px;
            height: 21px;
        }

        .auto-style6 {
            width: 22px;
            height: 21px;
        }

        .auto-style7 {
            width: 254px;
            height: 21px;
        }

        .auto-style8 {
            height: 21px;
        }

        .auto-style9 {
            width: 225px;
            height: 44px;
        }

        .auto-style10 {
            width: 22px;
            height: 44px;
        }

        .auto-style11 {
            width: 254px;
            height: 44px;
        }

        .auto-style12 {
            height: 44px;
        }
    </style>

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

        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Apply Manual Attendance</a></li>
                <li><a href="#_page_2">Manual Attendance History</a></li>
            </ul>

            <div class="frames">
                <div class="frame" id="_page_1">
                    <%--<h1 class="fg-cobalt">
                        <a href="#" onclick="history.go(-1);"><i class="icon-arrow-left-3 fg-cobalt smaller"></i></a>
                        Apply Manual Attendance
                    </h1>--%>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend>Apply Manual Attendance</legend>
                            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                            <div class="span5">
                                <table class="auto-style1">

                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label6" runat="server" Text="Remarks"></asp:Label>
                                        </td>
                                        <td class="auto-style6">:</td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="txtRemarks" runat="server" Width="175px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style8">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <h3>Check In/Out</h3>
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">

                                            <asp:Button ID="btnCheckIn" runat="server" OnClick="Button1_Click" type="button" Text="Check In" />
                                            <%--<input id="bttnCheckIn" type="button" runat="server" onserverclick="bttnCheckIn_click" value="button" />--%>
                                            <div style="height: 50px;" />
                                        </td>
                                        <td class="auto-style10"></td>
                                        <td class="auto-style11">

                                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" />
                                            <div style="height: 50px;" />
                                        </td>
                                        <td class="auto-style13">

                                            <asp:Button ID="btnCheck" runat="server" Text="Both (In & Out)" OnClick="btnCheck_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCheckWithBreak" runat="server" Text="Include Break" OnClick="btnCheckWithBreak_Click" />
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label2" runat="server" Text="Check In Date &amp; Time "></asp:Label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <%--<asp:TextBox ID="txtCheckInDate" runat="server" Width="181px"></asp:TextBox>--%>
                                            <input type="date" id="txtCheckInDate" runat="server" name="txtCheckInDate" />
                                        </td>
                                        <td>
                                            <%--<asp:TextBox ID="txtBreakInTime" runat="server" Width="164px"></asp:TextBox>--%>
                                            <input type="time" name="checkIN" id="txtCheckInTime" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label3" runat="server" Text="Check Out Date &amp; Time"></asp:Label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <%--<asp:TextBox ID="txtCheckOutDate" runat="server" Width="179px"></asp:TextBox>--%>
                                            <input type="date" id="txtCheckOutDate" runat="server" name="txtCheckOutDate" />
                                        </td>
                                        <td>
                                            <%--<asp:TextBox ID="txtBreakOutTime" runat="server" Width="163px"></asp:TextBox>--%>
                                            <input type="time" name="checkIN" id="txtCheckOutTime" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <h3>Break In/Out</h3>
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Button ID="btnBreakIn" runat="server" Text="Break In" OnClick="btnBreakIn_Click" />
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:Button ID="btnBreakOut" runat="server" Text="BreakOut" OnClick="btnBreakOut_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnBreak" runat="server" Text="Both(In & Out)" OnClick="btnBreak_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label4" runat="server" Text="Break In Date &amp; Time"></asp:Label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <%--<asp:TextBox ID="txtBreakInDate" runat="server" Width="176px"></asp:TextBox>--%>
                                            <input type="date" id="txtBreakInDate" runat="server" name="txtBreakInDate" />
                                        </td>
                                        <td>
                                            <%--<asp:TextBox ID="txtBreakInTime" runat="server" Width="164px"></asp:TextBox>--%>
                                            <input type="time" name="checkIN" id="txtBreakInTime" runat="server" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label5" runat="server" Text="Break Out Date &amp; Time"></asp:Label>
                                        </td>
                                        <td class="auto-style4">:</td>
                                        <td class="auto-style3">
                                            <%--<asp:TextBox ID="txtBreakOutDate" runat="server" Width="174px"></asp:TextBox>--%>
                                            <input type="date" id="txtBreakOutDate" runat="server" name="txtBreakOutDate" />
                                        </td>
                                        <td>
                                            <%--<asp:TextBox ID="txtBreakOutTime" runat="server" Width="163px"></asp:TextBox>--%>
                                            <input type="time" name="checkIN" id="txtBreakOutTime" runat="server" />
                                        </td>
                                    </tr>
                                </table>


                                <%--<cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID ="txtCheckInDate"></cc1:CalendarExtender>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID ="txtCheckOutDate"></cc1:CalendarExtender>
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>

        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtBreakInDate"></cc1:CalendarExtender>
        <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID ="txtBreakOutDate"></cc1:CalendarExtender>--%>
                                <br />
                                <asp:Button ID="btnSubmit" runat="server" CssClass="info large" OnClick="btnSubmit_Click" Text="Submit" Style="padding-top: 8px;" />
                                <asp:Button ID="bttnNew" runat="server" CssClass="success large" OnClick="btnNew_Click" Text="New" Style="height: 33px; padding-top: 8px;" />
                            </div>




                 


                                <div class="row">
                                    <div class="span7" style="margin-top:10px">
                                        <div class="accordion with-marker" data-role="accordion" data-closeany="true">
                                            <div class="accordion-frame">
                                                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-list"></i>Reporting Hierarchy</a>
                                                <div class="content">
                                                    <asp:GridView ID="grdHierarchy" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField />
                                                             <asp:BoundField ControlStyle-CssClass="trans" DataField="LevelNo" HeaderText="Level No" />
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




                      
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="frame" id="_page_2">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend>Manual Attendance History</legend>
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
                                    <span>Filteration</span>

                                </div>
                                <div class="panel-content">
                                    <div class="grid">
                                        <div class="row">
                                            <div class="span4">
                                                <table>
                                                    <tr>
                                                        <td style="width: 100px">
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
                                                        <span>Pending Attendance</span>
                                                    </label>
                                                </div>
                                                <br />
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkApproved" runat="server" />
                                                        <span class="check"></span>
                                                        <span>Approved Attendance</span>
                                                    </label>
                                                </div>
                                                <br />
                                                <div class="input-control checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkRejected" runat="server" />
                                                        <span class="check"></span>
                                                        <span>Rejected Attendance</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="span2">
                                                <button class="shortcut success" id="bttnFilter" runat="server" onserverclick="bttnFilter_click">
                                                    <i class="icon-search"></i>
                                                    <span>Filter</span>
                                                </button>
                                            </div>
                                            <div class="span4">
                                                <img border="0" alt="W3Schools" src="img/ColorCodesAttendance.jpg" width="150" height="100">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <asp:Panel ID="pnlAppliedAttendance" runat="server"></asp:Panel>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>


</asp:Content>
