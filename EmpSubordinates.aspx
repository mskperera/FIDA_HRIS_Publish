<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmpSubordinates.aspx.cs" Inherits="Smarter_HRIS.EmpSubordinates1" %>

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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtSupervisor.ClientID %>').autocomplete({
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
        <legend>Assign Subordinates/ Peers/ Supervisors</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <br />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Select Employee" CssClass="primary"></asp:Label>&nbsp; : &nbsp;
            <asp:TextBox ID="txtEmployee" runat="server" CssClass="info-state"></asp:TextBox>&nbsp;&nbsp;
            <asp:Button ID="bttnSelectEmployee" runat="server" Text="Select" CssClass="info" OnClick="bttnSelectEmployee_click" />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Select Supervisor/ Peer/ Subordinate"></asp:Label>
                </td>
                <td>&nbsp;&nbsp; : &nbsp;
                        <asp:TextBox ID="txtSupervisor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <%--<tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Designation"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp; : &nbsp;
                        <asp:TextBox ID="txtDesignation" runat="server" Enabled="false"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp; : &nbsp;
                        <asp:TextBox ID="txtMobileNo" runat="server" Enabled="false"></asp:TextBox>
                    </td>
                </tr>--%>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Select Type"></asp:Label>
                </td>
                <td>&nbsp;&nbsp; : &nbsp;
                        <asp:DropDownList ID="DrpEmpType" runat="server" Width="200px">
                            <asp:ListItem Text="- select -" Value="0" />
                            <asp:ListItem Text="Supervisor" Value="Supervisor" />
                            <asp:ListItem Text="Subordinate" Value="Subordinate" />
                            <asp:ListItem Text="Peer" Value="Peer" />
                        </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <%--<asp:Button ID="bttnAdd" runat="server" Text="Add" OnClick="bttnAdd_Click" />--%>
        <button class="shortcut warning" id="bttnAdd1" runat="server" onserverclick="bttnAdd_Click">
            <i class="icon-plus-2"></i>
            Add
        </button>
        <button class="shortcut success" id="bttnSave" runat="server" onserverclick="bttnSave_Click">
            <i class="icon-floppy"></i>
            Save
        </button>

        <br />
        <br />
        <asp:GridView ID="grpSupervisors" DataKeyNames="EmployeeMasterID" runat="server" AutoGenerateColumns="False" CellPadding="7" ForeColor="#333333" GridLines="None" OnRowDeleting="grpSupervisors_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeMasterID" Visible="False" />
                <asp:BoundField DataField="NameWithInitials" HeaderText="Name" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" />
                <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                <asp:BoundField DataField="CoveringType" HeaderText="Covering Type" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="info" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
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
</asp:Content>
