<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HierachyFixDeductions.aspx.cs" Inherits="Smarter_HRIS.HierachyFixDeductions" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmp.ClientID %>').autocomplete({
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
            $('#<%= txtEmpSearch.ClientID %>').autocomplete({
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
        <legend>Fix Deductions</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="grid">
            <div class="row">
                <div class="span2">
                    <asp:RadioButton ID="rdEmp" runat="server" Text="By Employee" GroupName="a1" OnCheckedChanged="rdEmp_CheckedChanged" AutoPostBack="True" />
                </div>
                <div class="span2">
                    <asp:RadioButton ID="rdGroup" runat="server" Text="By Group" GroupName="a1" OnCheckedChanged="rdGroup_CheckedChanged" AutoPostBack="True" />
                </div>
            </div>
            <asp:Panel ID="pnlEmp" runat="server">
                <div class="row">
                    <div class="span3">
                        <label>Search An Employee</label>
                    </div>
                    <div class="span5">
                        <asp:TextBox ID="txtByEmp"  runat="server"></asp:TextBox>
                        <asp:Button ID="bttnSelectEmp" runat="server" Text="select" CssClass="mini primary" OnClick="bttnSelectEmp_click" />
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlGroup" runat="server">
                <div class="row">
                    <div class="span2">
                        <label>Search Group</label>
                    </div>
                    <div class="span5">
                        <asp:TextBox ID="txtByGroup" runat="server"></asp:TextBox>
                        <asp:Button ID="bttnSelectGroup" runat="server" Text="select" CssClass="mini primary" OnClick="bttnSelectGroup_click" />
                    </div>
                </div>
            </asp:Panel>
            <div class="row">
                <div class="span2">
                    <label>Employee/ Group</label>
                    <label>Deduction Name</label>
                    <label>Amount</label>
                    <label>Is Active</label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="txtEmployee" width="300px" runat="server"></asp:TextBox>
                    <asp:DropDownList width="300px"  ID="drpDeduction" runat="server" ></asp:DropDownList>
                    <asp:TextBox width="300px"  ID="txtAmount" runat="server"></asp:TextBox>
                    <br />
                    <div class="input-control switch">
                        <label>
                            <input id="chkIsActive" checked="checked" runat="server" type="checkbox" />
                            <span class="check"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="row">
                <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                    <i class="icon-floppy"></i>
                    Save</button>
                <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                    <i class="icon-new"></i>
                    New</button>
            </div>
            <div class="row">
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            </div>
            <div class="row">
                Name &nbsp; : &nbsp;
                <asp:TextBox ID="txtEmpSearch" runat="server"></asp:TextBox>
                &nbsp;&nbsp; Allowance &nbsp; : &nbsp;
                <asp:DropDownList ID="drpDeductionSearch" runat="server" Width="200"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large" OnClick="bttnSearch_click" />
                <br />
                <asp:GridView ID="grdFixDeductions" DataKeyNames="DeductionsFixAllID,EmployeeID,AllowanceID,IsActive" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdFixDeductions_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="DeductionsFixAllID" HeaderText="DeductionsFixAllID" Visible="False" />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                        <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="False" />
                        <asp:BoundField DataField="AllowanceName" HeaderText="Deduction Name" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        <asp:BoundField DataField="IsActive" HeaderText="IsActive" Visible="false" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
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

    </div>

    <asp:HiddenField ID="IsEdit" runat="server" />
    <asp:HiddenField ID="TableID" runat="server" />
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
