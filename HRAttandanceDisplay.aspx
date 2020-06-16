<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HRAttandanceDisplay.aspx.cs" Inherits="Smarter_HRIS.HRAttandanceDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
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

        <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .modal {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 0;
            background-color: Black;
            filter: alpha(opacity=80);
            opacity: 0.6;
            -moz-opacity: 0.8;
        }

        .center {
            z-index: 1000;
            margin: 300px auto;
            padding: 10px;
            width: 130px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }

            .center img {
                height: 115px;
                width: 115px;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="span4">
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <div class="modal">
                            <div class="center">
                                <img alt="" src="images/loader6.gif" />
                                <%--          <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />--%>
                            </div>
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </div>
            <div class="container">
                <legend>Attendance Edit Special</legend>
                <asp:HiddenField ID="lblUserID" runat="server" />

                <div class="grid">
                    <div class="row">
                        <div class="span5">
                            <asp:Label ID="Label1" runat="server" Text="Employee : "></asp:Label>
                            <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                        </div>
                        <div class="span5">
                            <asp:Label ID="Label2" runat="server" Text="Date Range : "></asp:Label>
                            <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                            <input type="date" id="txtToDate" runat="server" name="ToDate" />
                        </div>
                        <div class="span2">
                            <asp:Button ID="bttnSearch" runat="server" Text="search" OnClick="bttnSearch_click" CssClass="warning" />
                        </div>
                        <div class="row">
                            <%--        <div class="span4">
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>

                            </div>--%>
                            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                        </div>
                        <div class="row">
                            <asp:GridView ID="grdAttendance" runat="server" DataKeyNames="ShiftID,AttendanceID" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="Employee" HeaderText="Employee" />
                                    <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                                    <asp:BoundField DataField="ShiftStart" HeaderText="Shift Start" />
                                    <asp:BoundField DataField="ShiftEnd" HeaderText="Shift End" />
                                    <%--<asp:BoundField DataField="EmployeeIN" HeaderText="Employee IN" />--%>

                                    <asp:TemplateField HeaderText="Employee IN">
                                        <ItemTemplate>
                                            <asp:TextBox type="" ID="txtEmployeeIN" runat="server" Width="85" Text='<%# Eval("EmployeeIN") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--<asp:BoundField DataField="EmployeeOUT" HeaderText="Employee OUT" />--%>
                                    <asp:TemplateField HeaderText="Employee OUT">
                                        <ItemTemplate>
                                            <asp:TextBox type="" ID="txtEmployeeOUT" runat="server" Width="85" Text='<%# Eval("EmployeeOUT") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--         <asp:BoundField DataField="BreakStart" HeaderText="Break Start" />--%>
                                    <asp:TemplateField HeaderText="Break Start">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtBreakStart" runat="server" Width="60" Text='<%# Eval("BreakStart") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--<asp:BoundField DataField="BreakEnd" HeaderText="Break End" />--%>
                                    <asp:TemplateField HeaderText="Break End">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtBreakEnd" runat="server" Width="60" Text='<%# Eval("BreakEnd") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="TotalBreakTime" HeaderText="Total Break Time" />
                                    <%-- <asp:BoundField DataField="EarlyOT" HeaderText="Early OT" />--%>
                                    <asp:TemplateField HeaderText="Early OT">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtEarlyOT" runat="server" Width="60" Text='<%# Eval("EarlyOT") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%-- <asp:BoundField DataField="LateOT" HeaderText="Late OT" />--%>
                                    <asp:TemplateField HeaderText="Late OT">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtLateOT" runat="server" Width="60" Text='<%# Eval("LateOT") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%-- <asp:BoundField DataField="DayOT" HeaderText="Day OT" />--%>
                                    <asp:TemplateField HeaderText="DayOT">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtDayOT" runat="server" Width="60" Text='<%# Eval("DayOT") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:BoundField DataField="WorkHours" HeaderText="Work Hours" />

                                    <asp:BoundField DataField="IsDayPass" HeaderText="Day Pass" />

                                    <asp:TemplateField HeaderText="CheckOutDate">
                                        <ItemTemplate>
                                            <asp:TextBox type="" ID="txtCheckOutDate" runat="server" Width="110" Text='<%# Eval("CheckOutDate") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ShiftID" HeaderText="ShiftID" Visible="false" />
                                    <asp:BoundField DataField="AttendanceID" HeaderText="AttendanceID" Visible="false" />
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
                            <br />
                            <div class="row">
                                <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                            </div>
                            <button class="shortcut primary" id="bttnApprove" runat="server" onserverclick="bttnApprove_click">
                                <i class="icon-auction"></i>
                                Approve
                            </button>

                            <button class="shortcut success" runat="server" id="btnNew" onserverclick="bttnNew_click">
                                <i class="icon-new"></i>
                                New</button>
                        </div>
                        <asp:Panel ID="pnlSummaryEmp" runat="server">
                            <div class="row">
                                <h3>Summary by employee </h3>
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
                    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
                    <script>
                        webshims.setOptions('forms-ext', { types: 'date' });
                        webshims.polyfill('forms forms-ext');
                    </script>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
