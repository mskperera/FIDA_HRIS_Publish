<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeResetPassword.aspx.cs" Inherits="Smarter_HRIS.EmployeeResetPassword1" %>

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

    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Employee Password Reset</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
                <div class="span3">
                    <label>Select Employee</label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <asp:Button ID="bttnSubmit" runat="server" CssClass="warning" Text="Reset Password" OnClick="bttnSubmit_Click" />
        </div>


    </div>
</asp:Content>
