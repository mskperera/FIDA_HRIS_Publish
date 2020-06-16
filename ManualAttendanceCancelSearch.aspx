<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ManualAttendanceCancelSearch.aspx.cs" Inherits="Smarter_HRIS.ManualAttendanceCancelSearch" %>

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
        <legend>Manual Attendance Cancel</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
                <div class="span4">
                    <label>Employee Name</label>
                    <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                </div>
                <div class="span6">
                    <table>
                        <tr>
                            <td>
                                <label>From:</label>
                            </td>
                            <td>
                                <label>To:</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                            </td>
                            <td>
                                <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <button class="shortcut warning" id="bttnSearch" runat="server" onserverclick="bttnSearch_click">
            <i class="icon-search"></i>
            Search</button>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>

