<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssigntoHoliday.aspx.cs" Inherits="Smarter_HRIS.AssigntoHoliday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeAllNames",
                        // url: "SearchEmployee.asmx/GetEmployeeNames",
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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployeeSearch.ClientID %>').autocomplete({
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
        <legend>Assign to Holidays</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:HiddenField ID="HolidayDeletedID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

        <div class="input-control radio" id="dvEmp">
            <label>
                <input id="radioByEmp" type="radio" name="a1" runat="server" />
                <span class="check"></span>
                By Employee
            </label>
        </div>
        <div class="input-control radio" id="dvGRP">
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
                    <label>Holiday Name</label>
                    <label>Date</label>
                    <label>Is Active Holiday</label>
                    <br />
                    <%--<asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />--%>
                </div>
                <div class="span5">
                    <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox><br />
                    <asp:DropDownList ID="drpHoliday" runat="server" Width="200"></asp:DropDownList><br />
                    <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                    <asp:Button ID="bttnAdd" runat="server" Text="Add" CssClass="info small" OnClick="bttnAdd_Click" /><br />
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
                <asp:GridView ID="grdHoliday" DataKeyNames="HolidayID" runat="server" Width="600px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdHoliday_RowDeleting">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="HolidayID" HeaderText="HolidayID" Visible="False" />
                        <asp:BoundField DataField="HolidayName" HeaderText="Holiday Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                  <%--      <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>

                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="DelButton" runat="server" OnClick="DelButton_Click" CssClass="danger mini" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                      <%--  <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="Button"
                                    OnClick="MyButtonClick" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>

                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </div>
            <div class="row">
                <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                    <i class="icon-enter"></i>
                    Assign</button>

                         <button class="shortcut defalut" runat="server" id="btn_new" onserverclick="btn_new_ServerClick">
                    <i class="icon-new"></i>
                    New Assign</button>
                <%--   <button class="shortcut warning" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                    <i class="icon-remove"></i>
                    Delete
                </button>--%>
            </div>
            <div class="row">
                <div class="span3">
                    <label>Holiday</label>
                    <asp:DropDownList ID="drpHolidayName" runat="server" Width="200"></asp:DropDownList>
                </div>
                <div class="span3">
                    <label>Employee</label>
                    <asp:TextBox ID="txtEmployeeSearch" runat="server"></asp:TextBox>
                </div>
                <div class="span4">
                    <label>Date</label>
                    <input type="date" id="txtFromDate1" runat="server" name="FromDate" />
                    <input type="date" id="txtToDate1" runat="server" name="ToDate" />
                </div>
                <div class="span2">
                    <br />
                    <asp:Button ID="bttnSearch" runat="server" Text="search" OnClick="bttnSearch_click" CssClass="warning" Style="margin-top: 10px;" />
                </div>
                  <div class="span2">
                    <br />
                    <asp:Button ID="btndeleteholiday" runat="server" Text="Delete All" OnClick="btndeleteholiday_Click" OnClientClick="return confirm('Do you really want to delete all assigned holidays below?');" CssClass="danger" Style="margin-top: 10px;" />
                </div>

            </div>
            <div class="row">
                <asp:GridView ID="grdHolidayAll" runat="server" DataKeyNames="AssignHolidayID,HolidayRegistrationID,EmployeeID" Width="100%" GridLines="Vertical" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" OnRowDeleting="grdHolidayAll_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="AssignHolidayID" HeaderText="AssignHolidayID" Visible="False" />
                        <asp:BoundField DataField="HolidayRegistrationID" HeaderText="HolidayRegistrationID" Visible="False" />
                        <asp:BoundField DataField="HolidayName" HeaderText="Holiday Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="true" />
                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>

        </div>

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
</asp:Content>
