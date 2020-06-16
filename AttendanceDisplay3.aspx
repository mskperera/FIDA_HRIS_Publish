<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AttendanceDisplay3.aspx.cs" Inherits="Smarter_HRIS.AttendanceDisplay3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/sTabPage.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Attendance Display<small> v2.1.1</small></legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
                <div class="span6">
                    <div style="display: flex">
                        <asp:Label ID="Label9" runat="server" Text="Session : "></asp:Label>

                        <div style="margin-left: 17px">
                            <asp:DropDownList ID="dd_session" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="dd_session_SelectedIndexChanged"></asp:DropDownList><br />
                        </div>
                    </div>
                </div>


                <div class="span3">
                    <%--<label ><h5 class="fg-cyan">From :</h5></label>--%>
                    <asp:Label ID="Label1" runat="server"  Text="From : " Font-Bold="True"></asp:Label>
                    <input type="date" class="dateSelector" id="txtFromDate" runat="server" name="FromDate" />

                </div>
                <div class="span3">
                    <%--<label ><h5 class="fg-cyan">To :</h5></label>--%>
                    <asp:Label ID="Label2" runat="server"  Text="To : " Font-Bold="True"></asp:Label>
                    <input type="date" class="dateSelector" id="txtToDate" runat="server" name="ToDate" />
                </div>
                <div class="span1">
                    <button class="info SearchBtn" runat="server" id="bttnSearch" type="button" onserverclick="Submit_click">
                        Search
        
                    </button>
                </div>
            </div>
            <div class="row">

                <asp:Label ID="lblWorkCount" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="OTCount" runat="server" Text=""></asp:Label><br />

                <%--   <h3>Summary</h3>--%>
            </div>

            <div class="row">
                <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" Font-Size="Smaller">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd MMM yyyy}">
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ShiftName" HeaderText="Shift Name">
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>

                        <asp:BoundField DataField="DateName" HeaderText="Date Name">
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>

                        <asp:BoundField DataField="Remark" HeaderText="Remark">
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>

                        <asp:BoundField DataField="ShiftIN" HeaderText="Shift Start">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ShiftOUT" HeaderText="Shift End">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CheckInTime" HeaderText="Employee IN">
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CheckOutTime" HeaderText="Employee OUT">
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LateArriveDuration" HeaderText="Late">
                            <ControlStyle Font-Bold="False" />
                            <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BreakIn" HeaderText="Break Start">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BreakOut" HeaderText="Break End">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TotalBreak" HeaderText="Break Time">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <%--                        <asp:BoundField DataField="LateHours" HeaderText="Late Hours">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>--%>

                        <asp:BoundField DataField="WorkHours" HeaderText="Work Hours">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="Rate" HeaderText="OT Rate">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="OTCount" HeaderText="OT Count (Days:hh:mm:ss)">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <%--                    <asp:BoundField DataField="DoubleOT" HeaderText="Double OT">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>--%>

                        <asp:BoundField DataField="DaysPay" HeaderText="Days Pay">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="LeaveTypeName" HeaderText="Leave Type">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <%--    <asp:BoundField DataField="LeaveAmount" HeaderText="Leave Amount">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>--%>
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

            <div class="row">
                <asp:Panel ID="pnlSummaryEmp" runat="server">
                    <div class="row">
                        <h3>Summary by employee</h3>
                        <div class="span3">
                            <asp:Label ID="Label3" Font-Size="Smaller" Font-Bold="true" runat="server" Text="Total Days"></asp:Label><br />
                            <asp:Label ID="Label4" Font-Size="Smaller" Font-Bold="true" runat="server" Text="Total Working Days"></asp:Label><br />
                        </div>
                        <div class="span1">
                            <asp:Label ID="lblTotalDays" Font-Size="Smaller" Font-Bold="true" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblWorkingDaysShift" Font-Size="Smaller" Font-Bold="true" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="span3">
                            <asp:Label ID="Label5" Font-Size="Smaller" Font-Bold="true" runat="server" Text="Total Holidays"></asp:Label><br />
                            <asp:Label ID="Label6" Font-Size="Smaller" Font-Bold="true" runat="server" Text="Total Leaves"></asp:Label><br />
                        </div>
                        <div class="span1">
                            <asp:Label ID="lblTotalHolidays" Font-Size="Smaller" Font-Bold="true" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblTotalLeaves" Font-Size="Smaller" Font-Bold="true" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="span3">
                            <asp:Label ID="Label7" Font-Size="Smaller" Font-Bold="true" runat="server" Text="Present Days"></asp:Label><br />
                            <asp:Label ID="Label8" Font-Size="Smaller" Font-Bold="true" runat="server" Text="Absent Days"></asp:Label><br />
                        </div>
                        <div class="span1">
                            <asp:Label ID="lblPresent" Font-Size="Smaller" Font-Bold="true" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblAbsent" Font-Size="Smaller" Font-Bold="true" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </asp:Panel>
            </div>



        </div>
        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
</asp:Content>

