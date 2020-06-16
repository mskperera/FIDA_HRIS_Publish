<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ChangePriviladgeType.aspx.cs" Inherits="Smarter_HRIS.ChangePriviladgeType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <legend>Change User Priviladge Type</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpUserName" runat="server" Width="300" AutoPostBack="True"></asp:DropDownList>
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
                            <asp:ListItem Text="-select-" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Administrator" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="Evaluator" Value="Eval"></asp:ListItem>
                            <asp:ListItem Text="Supervisor" Value="Supervisor"></asp:ListItem>
                         <asp:ListItem Text="Super" Value="Super"></asp:ListItem>
                            <%--<asp:ListItem>Super_User</asp:ListItem>--%>
                        </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSubmit_Click">
            <i class="icon-floppy"></i>
            Save</button>
        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
            <i class="icon-new"></i>
            New</button>
    </div>
</asp:Content>

