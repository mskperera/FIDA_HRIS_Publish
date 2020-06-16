<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AdvancedManualAttendance.aspx.cs" Inherits="Smarter_HRIS.AdvancedManualAttendance1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmpName.ClientID %>').autocomplete({
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
    <script type="text/javascript">
        $(function () {
            $('#<%= txtShift.ClientID %>').autocomplete({
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <legend>Advanced Manual Attendance</legend>

            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            <div class="grid">
                <div class="row">
                    <div class="span3">
                        <label>Employee Name</label>
                        <label>Shift</label>
                        <label>Attendance Type</label>
                        <label>Date & Time</label>
                        <asp:Button ID="bttnAdd" runat="server" Text="Add" CssClass="warning" OnClick="bttnAdd_click" />
                    </div>
                    <div class="span4">
                        <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtShift" runat="server"></asp:TextBox><br />
                        <asp:DropDownList ID="drpType" runat="server" Width="200px">
                            <asp:ListItem Text="-select-" Value="0"></asp:ListItem>
                            <asp:ListItem Text="CheckIn" Value="CheckIn"></asp:ListItem>
                            <asp:ListItem Text="CheckOut" Value="CheckOut"></asp:ListItem>
                            <asp:ListItem Text="BreakIn" Value="BreakIn"></asp:ListItem>
                            <asp:ListItem Text="BreakOut" Value="BreakOut"></asp:ListItem>
                        </asp:DropDownList><br />
                        <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                        <input type="time" id="txtTime" runat="server" name="txtTime" /><br />
                    </div>
                </div>
                <div class="row">
                    <asp:GridView ID="grdManualAttendance" runat="server" DataKeyNames="EmpID,ShiftID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdManualAttendance_RowDeleting">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataFormatString="EmpID" HeaderText="EmpID" Visible="False" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Shift" HeaderText="Shift" />
                            <asp:BoundField DataField="ShiftID" HeaderText="ShiftID" Visible="False" />
                            <asp:BoundField DataField="AttType" HeaderText="Attendance Type" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="Time" HeaderText="Time" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="info mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    </asp:GridView><br />
                    <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                        <i class="icon-enter"></i>
                        Save</button>
                </div>
            </div>

        </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
</asp:Content>
