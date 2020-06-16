<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SubbordinateAttendanceDisplay.aspx.cs" Inherits="Smarter_HRIS.SubbordinateAttendanceDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames_SelfServicePortal",
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
    <link href="css/sTabPage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 20px">
        <legend>Subbordinate Attendance Display</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />

        <div class="grid">
            <div class="row">

                <div class="span6">
                    <asp:Label ID="Label1" runat="server" Text="Employee : "></asp:Label>
                    <asp:TextBox ID="txtEmployee" runat="server" Width="300"></asp:TextBox>
                </div>
                <div class="span6">
                </div>

            </div>

            <div class="row">

                <div class="span6">
                    <div style="display: flex; margin-top: 6px">
                        <asp:Label ID="Label9" runat="server" Text="Session &nbsp;&nbsp;&nbsp; : "></asp:Label>
                        <div style="margin-left: 4px">
                            <asp:DropDownList ID="dd_session" runat="server" Width="300px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="dd_session_SelectedIndexChanged"></asp:DropDownList><br />
                        </div>
                    </div>
                </div>

                <div class="span6">
                    <div style="margin-top:6px">
                        <asp:Label ID="Label2" runat="server" Text="Date Range : "></asp:Label>
                        <input type="date" class="dateSelector" id="txtFromDate" runat="server" name="FromDate" />
                        <input type="date" class="dateSelector" id="txtToDate" runat="server" name="ToDate" />

                    </div>
                </div>

                <div style="margin-bottom: 10px">
                    <asp:Button ID="bttnSearch" runat="server" Text="search" OnClick="bttnSearch_click" CssClass="info SearchBtn" />
                </div>




            </div>
            <div class="row">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="span4">
                    <%--    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                </ProgressTemplate>
                            </asp:UpdateProgress>--%>
                </div>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            </div>
            <div class="row">
                <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="false" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd MMM yyyy}" />
                        <asp:BoundField DataField="DateName" HeaderText="Date Name" />
                        <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                        <asp:BoundField DataField="ShiftIN" HeaderText="Shift Start" />
                        <asp:BoundField DataField="ShiftOUT" HeaderText="Shift End" />
                        <asp:BoundField DataField="CheckInTime" HeaderText="Employee IN" />
                        <asp:BoundField DataField="CheckOutTime" HeaderText="Employee OUT" />
                        <asp:BoundField DataField="BreakIn" HeaderText="Break Start" />
                        <asp:BoundField DataField="BreakOut" HeaderText="Break End" />
                        <asp:BoundField DataField="TotalBreak" HeaderText="Total Break Time" />
                        <asp:BoundField DataField="WorkHours" HeaderText="Work Hours" />
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

            <%--</ContentTemplate>--%>
            <%--</asp:UpdatePanel>--%>
        </div>


        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>

</asp:Content>


