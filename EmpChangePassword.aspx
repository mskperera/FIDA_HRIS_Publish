<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EmpChangePassword.aspx.cs" Inherits="Smarter_HRIS.EmpChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Change Password</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Current Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <input type="password" value="" id="txtCurrentPassword" runat="server" placeholder="Current Passowrd.." />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtNewPassword" runat="server" placeholder="New Passowrd.." />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Repeat New Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtRepeatPassword" runat="server" placeholder="Repeat New Passowrd.." />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
        </table>
        <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" />
        <%--<div class="grid">
            <div class="row">
                <div class="span3">
                    <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="Repeat New Password"></asp:Label><br />
                    <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" />
                </div>
                <div class="span5">
                    <asp:TextBox ID="txtCurrentPassword" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txtRepeatPassword" runat="server"></asp:TextBox><br />
                </div>
            </div>
        </div>--%>
    </div>
</asp:Content>
