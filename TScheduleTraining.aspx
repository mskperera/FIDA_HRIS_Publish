<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="TScheduleTraining.aspx.cs" Inherits="Smarter_HRIS.TScheduleTraining1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtInterviewer.ClientID %>').autocomplete({
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
            $('#<%= txtEmployees.ClientID %>').autocomplete({
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Schedule Training</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

        <table>
            <tr>
                <td>
                    <label>Company</label>
                </td>
                <td>
                    <asp:DropDownList ID="drpCompany" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Training</label>
                </td>
                <td>
                    <asp:DropDownList ID="drpTraining" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Questionnaire</label>
                </td>
                <td>
                    <asp:DropDownList ID="drpQuestionnaire" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Name of Training</label>
                    <asp:TextBox ID="txtInterviewName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <label>Date</label>
                    <input type="date" id="txtDate" runat="server" name="txtInterviewDate" />
                </td>
                <td>
                    <label>Time</label>
                    <input type="time" name="txtTime" id="txtTime" runat="server" />
                </td>
            </tr>
        </table>

        <h4>Supervisor Panel</h4>
        <asp:TextBox ID="txtInterviewer" runat="server"></asp:TextBox>
        <asp:Button ID="bttnAddInterviewer" runat="server" Text="Add" CssClass="info small" OnClick="bttnAddInterviewer_Click" />
        <asp:GridView ID="grdInterviewer" runat="server" DataKeyNames="EmployeeID" AutoGenerateColumns="False" Width="850" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
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
        <br />
        <h4>Select Employees</h4>
        <asp:TextBox ID="txtEmployees" runat="server"></asp:TextBox>
        <asp:Button ID="bttnAddCandidate" runat="server" Text="Add" CssClass="info small" OnClick="bttnAddCandidate_Click" />
        <asp:GridView ID="grdCandidate" runat="server" DataKeyNames="EmployeeID" Width="950" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="NIC" HeaderText="NIC" />
                <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
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
        <button class="shortcut success" id="bttnSchedule" runat="server" onserverclick="bttnSchedule_click">
            <i class="icon-calendar"></i>
            Schedule</button>


    </div>

    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
