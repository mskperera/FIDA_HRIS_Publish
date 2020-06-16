<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateReportingUsers.aspx.cs" Inherits="Smarter_HRIS.CreateReportingUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
        <legend>Create Reporting Users</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <input type="text" value="" id="txtName" runat="server" placeholder="" />
   <%--                     <button class="btn-reveal"></button>--%>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <input type="text" value="" id="txtUserName1" runat="server" placeholder="" />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtPassword" runat="server" placeholder="" />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Repeat Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtRepeatPassword" runat="server" placeholder="" />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <asp:DropDownList ID="drpCompany" Width="300" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Type"></asp:Label>
                </td>

                <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpType" runat="server" Width="300">
                            <asp:ListItem Text="-select-" Value="NA"></asp:ListItem>
                            <asp:ListItem Text="Administrator" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="User" Value="User"></asp:ListItem>
                            <asp:ListItem Text="Employee" Value="Employee"></asp:ListItem>
                            <asp:ListItem Text="Salary Admin" Value="SalaryAdmin"></asp:ListItem>
                            <asp:ListItem Text="Salary Admin" Value="SalaryAdmin"></asp:ListItem>
                            <asp:ListItem>Super_User</asp:ListItem>
                        </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" />
    </div>
</asp:Content>
