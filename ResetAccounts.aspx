<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ResetAccounts.aspx.cs" Inherits="Smarter_HRIS.ResetAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Reset User Accounts</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Select User"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpUser" runat="server" AutoPostBack="True" CssClass="ddl" Width="200" Height="25"></asp:DropDownList><br />
                </td>
            </tr>

        </table>
        <asp:Button ID="bttnSubmit" runat="server" Text="Reset" CssClass="primary" onclick="bttnSubmit_Click"/>
    </div>
</asp:Content>
