<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LoanSettlement.aspx.cs" Inherits="Smarter_HRIS.LoanSettlement" %>

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
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />

        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <legend>Loan Settlement</legend>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
            <div class="grid">
                <div class="row">
                    <div class="span5">
                        <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                        <asp:Button ID="bttnSearch2" runat="server" CssClass="primary mediam" Text="Select" OnClick="bttnSearch1_click" />
                    </div>
                </div>
                <div class="row">
                    <div class="span2">
                        <asp:HiddenField ID="lblEmpID" runat="server" />
                        <label>Employee<sup class="fg-red">*</sup></label>
                    </div>
                    <div class="span5">
                        <asp:Label ID="lblEmployeeName" Font-Bold="true" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="span2">
                        <label>Loan Type<sup class="fg-red">*</sup></label>
                        <label>Salary Session<sup class="fg-red">*</sup></label>
                        <label>Amount<sup class="fg-red">*</sup></label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpLoanType" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpLoanType_SelectedIndexChanged"></asp:DropDownList>
                        <asp:Label ID="lblType" runat="server" Text="" Font-Bold="true" Width="200"></asp:Label>
                        <asp:DropDownList ID="drpSession" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList>
                        <asp:Label ID="lblSession" runat="server" Text="" Font-Bold="true" Width="200"></asp:Label>
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="span2">
                        <label>Deductions Name</label>
                        <label>Loan No</label>
                    </div>
                    <div class="span4">
                        <asp:Label ID="lblDeductionName" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </div>
                    <br />
                    
                    <div class="span4">
                         <asp:Label ID="lblLoanNo" runat="server" Text="" Font-Bold="true"></asp:Label>
                        <asp:HiddenField ID="lblLoanID" runat="server" />
                    </div>
                </div>
                <div class="span10">
                    <asp:GridView ID="grdCompanyLoan" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyLoanID" Width="75%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None"  OnRowCommand="grdCompanyLoan_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CompanyLoanID" HeaderText="CompanyID" Visible="False" />
                            <asp:BoundField DataField="LoanNo" HeaderText="Loan No" />
                            <asp:BoundField DataField="LoanStartDate" HeaderText="Loan Start Date" />
                            <asp:BoundField DataField="LoanEndDate" HeaderText="Loan End Date" />
                            <asp:BoundField DataField="LoanCapital" HeaderText="Loan Capital" />
                            <asp:BoundField DataField="LoanPaidAmount" HeaderText="Loan Paid Amount" />
                              <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button ID="EditButton1" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Select" />
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
                    Employee &nbsp; : &nbsp;
                            <asp:TextBox ID="txtEmpSearch" runat="server"></asp:TextBox>
                    &nbsp;&nbsp; Deduction &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpDeductionsSearch" runat="server" Width="200"></asp:DropDownList>
                    &nbsp;&nbsp; Session &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpSessionSearch" runat="server" Width="200"></asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large" OnClick="bttnSearch_click" />
                    <br />
                    <asp:GridView ID="grdLoanSettlement" DataKeyNames="VariableDeductionID,SessionID,EmployeeID,AllowanceID,LoanTypeID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdVariableAddition_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="VariableDeductionID" HeaderText="VariableAllowanceAssignID" Visible="False" />
                            <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                            <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                            <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                            <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="False" />
                            <asp:BoundField DataField="AllowanceName" HeaderText="Allowance Name" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                            <asp:BoundField DataField="LoanTypeID" HeaderText="LoanTypeID" Visible="False" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="View" />
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

            <asp:HiddenField ID="IsEdit" runat="server" />
            <asp:HiddenField ID="TableID" runat="server" />
        </div>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
