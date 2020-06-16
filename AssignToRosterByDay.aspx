<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignToRosterByDay.aspx.cs" Inherits="Smarter_HRIS.AssignToRosterByDay1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeAllNames",
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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtByGroup.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetGroupNames_Sup",
                        data: "{ 'GroupName': '" + request.term + "' }",
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
        <asp:HiddenField ID="lblUserID" runat="server" />
        <legend>Assign To Roster By Day</legend>
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
        </div>
        &nbsp;&nbsp;
                    <asp:Button ID="bttnSelect" runat="server" Text="Select" CssClass="primary" OnClick="bttnSelect_Click" />
        <br />

        <asp:Panel ID="pnlEmployee" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Select Employee"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByEmployee" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectEmployee" runat="server" CssClass="warning" Text="Select" OnClick="bttnSelectEmployee_click" />
        </asp:Panel>
        <asp:Panel ID="pnlGroup" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Select Group"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByGroup" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectGroup" runat="server" CssClass="warning" Text="Select" OnClick="bttnSelectGroup_click" />
        </asp:Panel>

        <div class="grid">
            <div class="row">
                <div class="span3">
                    <label>Employee/ Group Name</label>
                    <label>From Date</label>
                    <label>To Date</label>
                    <label>Is Active Shift</label>
                    <br />
                    <%--<asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />--%>
                </div>
                <div class="span5">
                    <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                    <input type="date" id="txtFromDate" runat="server" name="FromDate" /><br />
                    <input type="date" id="txtToDate" runat="server" name="ToDate" /><br />
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkIsActive" runat="server" />
                            <span class="check"></span>
                            IsActive
                        </label>
                    </div>
                </div>
                <div class="span6">
                    <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Monday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Tuesday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Wednesday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Thursday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Friday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Saturday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Sunday</label>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                    <i class="icon-enter"></i>
                    Assign
                </button>
                <%--                            <button class="shortcut warning" runat="server" id="bttnDelete">
                                <i class="icon-remove"></i>
                                Delete
                            </button>--%>
            </div>
            <br />

        </div>

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
</asp:Content>
