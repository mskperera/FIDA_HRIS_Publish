<%@ Page Title="" Language="C#" MasterPageFile="~/HR/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignToShiftRoster1.aspx.cs" Inherits="Smarter_HRIS.HR.AssignToShiftRoster1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployeeHR.asmx/GetEmployeeNames",
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
        <legend>Assign To Shift</legend>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>

        <div class="input-control radio">
            <label>
                <input id="radioByEmp" type="radio" name="a1" runat="server" />
                <span class="check"></span>
                By Employee
            </label>
        </div>
        <div class="input-control radio">
            <label>
                <input id="radioByGrp" type="radio" name="a1" runat="server" />
                <span class="check"></span>
                By Group
            </label>
        </div> &nbsp;&nbsp;
        <asp:Button ID="bttnSelect" runat="server" Text="Select" CssClass="primary" OnClick="bttnSelect_Click" />
                <br />

                <asp:Panel ID="pnlEmployee" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Select Employee"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByEmployee" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectEmployee" runat="server" Text="Select" OnClick="bttnSelectEmployee_click" />
                </asp:Panel>
                <asp:Panel ID="pnlGroup" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="Select Group"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByGroup" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectGroup" runat="server" Text="Select" />
                </asp:Panel>

                <div class="grid">
                    <div class="row">
                        <div class="span3">
                            <label>Employee/ Group Name</label>
                            <label>Shift Name</label>
                            <label>From Date</label>
                            <label>To Date</label>
                            <br />
                            <asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />
                        </div>
                        <div class="span5">
                            <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                            <asp:TextBox ID="txtShiftName" runat="server"></asp:TextBox><br />
                            <input type="date" id="txtFromDate" runat="server" name="FromDate"/><br />
                            <input type="date" id="txtToDate" runat="server" name="ToDate"/><br />
                        </div>
                    </div>
                </div>


            <%--</ContentTemplate>
        </asp:UpdatePanel>--%>
    </div>
</asp:Content>
