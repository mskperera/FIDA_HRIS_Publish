<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignPortalEmp.aspx.cs" Inherits="Smarter_HRIS.AssignPortalEmp1" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Register Users for Self Service Portal</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
                <div class="span2">
                    <label>Select Employee</label>
                </div>
                <div class="span3">
                    <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                </div>
                <div class="span2">
                    <asp:Button ID="bttnSelect" runat="server" CssClass="warning" Text="select" OnClick="bttnSelect_Click" />
                </div>
            </div>

        </div>

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <input type="text" value="" id="txtUserName" runat="server" placeholder="User Name.." />
                        <button class="btn-clear"></button>
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
        <asp:HiddenField ID="HiddenEmpID" runat="server" />
    </div>
</asp:Content>
