<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="SelfServicePortalPWDChangeHR.aspx.cs" Inherits="Smarter_HRIS.SelfServicePortalPWDChangeHR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .ddl {
            width: 300px;
            height: 35px;
            margin-bottom: 10px;
        }
    </style>

       <script type="text/javascript">
           $(function () {
               $('#<%= txtSearch.ClientID %>').autocomplete({
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
        <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
        <legend>Reset Password : Self Service Portal Users</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Employee Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:LinkButton ID="bttnSearch" runat="server" CssClass="btn-search" OnClick="bttnSearch_click"></asp:LinkButton>
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
        </table>
        <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" />
    </div>
</asp:Content>
