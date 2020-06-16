<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignToShiftsOT.aspx.cs" Inherits="Smarter_HRIS.AssignToShiftsOT1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmpName.ClientID %>').autocomplete({
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
            <legend>Assign OT Shifts</legend>

            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            <div class="grid">
                <div class="row">
                            <div class="span3">
                                <label>Employee Name</label>
                                <label>OT Shift Name</label>
                                <label>Date</label>
                                <label>Is Active Shift</label>
                                <br />
                                <%--<asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />--%>
                            </div>
                            <div class="span5">
                                <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                                <asp:DropDownList ID="drpOTShifts" runat="server" Width="300px"></asp:DropDownList><br />
                                <input type="date" id="txtFromDate" runat="server" name="FromDate" /><br />
                                <div class="input-control checkbox">
                                    <label>
                                        <input type="checkbox" id="chkIsActive" runat="server" />
                                        <span class="check"></span>
                                        IsActive
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                                <i class="icon-enter"></i>
                                Assign
                            </button>
                            <%--<button class="shortcut warning" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                                <i class="icon-remove"></i>
                                Delete
                            </button>--%>
                        </div>
            </div>


        </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
</asp:Content>
