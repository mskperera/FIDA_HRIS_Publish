<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HierarchyLoanCreate.aspx.cs" Inherits="Smarter_HRIS.HierarchyLoanCreate" %>

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
    <style>
        .tb_with_border {
            border: 1px #FF0000 solid;
        }

        .tb_without_border {
            border: none;
        }
    </style>
    <div class="container">
        <legend>Create Loan</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <label>Employee<sup class="fg-red">*</sup></label><br />
        <asp:TextBox ID="txtEmployee" runat="server" Width="400"></asp:TextBox>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <div class="grid">
                    <div class="row">
                        <div class="span4">
                            <asp:Label ID="lblEmployeeName" Font-Bold="true" runat="server" Text=""></asp:Label>
                            <label>Loan No<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtLoanNo" runat="server" CssClass="tb_with_border"></asp:TextBox><br />
                            <label>Loan Type Name<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpLoanType" runat="server" Width="200"></asp:DropDownList><br />
                            <label>Loan Rating Type<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpRatingType" runat="server" Width="200"></asp:DropDownList><br />
                            <label>Loan Status<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpLoanStatus" runat="server" Width="200"></asp:DropDownList><br />
                            <label>Loan Start Date<sup class="fg-red">*</sup></label>
                            <input type="date" id="txtStartDate" runat="server" name="txtStartDate" style="width: 198px;" /><br />
                            <label>Loan End Date<sup class="fg-red">*</sup></label>
                            <input type="date" id="txtEndDate" runat="server" name="txtEndDate" style="width: 198px;" /><br />
                        </div>
                        <div class="span4">
                            <label>Loan Capital<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtCapital" runat="server"></asp:TextBox><br />
                            <label>Loan Interest<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtInterest" runat="server"></asp:TextBox><br />
                            <label>No of Installments<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtNoofInstallments" runat="server"></asp:TextBox><br />
                            <label>Loan Paid Amount<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtPaidAmount" runat="server"></asp:TextBox><br />
                            <label>Loan Grant Date<sup class="fg-red">*</sup></label>
                            <input type="date" id="txtGrantDate" runat="server" name="txtStartDate" style="width: 198px;" /><br />
                            <label>Recovery Capital<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtRecoveryCapital" runat="server"></asp:TextBox><br />
                        </div>
                        <div class="span3">
                            <label>Recovery Interest<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtRecoveryInterest" runat="server"></asp:TextBox><br />
                            <label>Settlements Capital<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtSettlementCapital" runat="server"></asp:TextBox><br />
                            <label>Setlement Interest<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtSettlementInterest" runat="server"></asp:TextBox><br />
                            <label>Balance Capital<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtBalanceCapital" runat="server"></asp:TextBox><br />
                            <label>Balance Interest<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtBalanceInterest" runat="server"></asp:TextBox><br />
                            <label>Outsanding Installment<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtOutsandingInstallment" runat="server"></asp:TextBox><br />
                            <label>Current Installments<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtCurrentInstallments" runat="server"></asp:TextBox><br />
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
                        Employee &nbsp; : &nbsp;
                            <asp:TextBox ID="txtEmpSearch" runat="server"></asp:TextBox>
                        &nbsp;&nbsp; Loan Type Name &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpLoanType1" runat="server" Width="200"></asp:DropDownList>
                        &nbsp;&nbsp; LoanStatus &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpLoanStatus1" runat="server" Width="200"></asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large" OnClick="bttnSearch_click" />
                        <br />
                        <br />
                        <asp:GridView ID="grdLoan" runat="server" DataKeyNames="CompanyLoanID,EmployeeID,CompanyLoanTypeID,LoanRatingTypeID,CompanyLoanStatusID,LoanCapital,LoanInterest,NoOfInstallments,LoanPaidAmount,LoanGrantDate,RecoveryCapital,RecoveryInterest,SettelementsCapital,SettelementsInterest,BalanceCapital,BalanceInterest,OutstandingInstallments,CurrentInstallments" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdLoan_RowCommand" OnRowDeleting="grdLoan_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CompanyLoanID" HeaderText="CompanyLoanID" Visible="False" />
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                 <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                <asp:BoundField DataField="LoanNo" HeaderText="Loan No" />
                                <asp:BoundField DataField="CompanyLoanTypeID" HeaderText="CompanyLoanTypeID" Visible="False" />
                                <asp:BoundField DataField="LoanType" HeaderText="Loan Type" />
                                <asp:BoundField DataField="LoanRatingTypeID" HeaderText="LoanRatingTypeID" Visible="False" />
                                <asp:BoundField DataField="RatingType" HeaderText="Rating Type" />
                                <asp:BoundField DataField="CompanyLoanStatusID" HeaderText="CompanyLoanStatusID" Visible="False" />
                                <asp:BoundField DataField="LoanStatus" HeaderText="Loan Status" />
                                <asp:BoundField DataField="LoanStartDate" HeaderText="Loan Start Date" />
                                <asp:BoundField DataField="LoanEndDate" HeaderText="Loan End Date" />
                                <asp:BoundField DataField="LoanCapital" HeaderText="LoanCapital" Visible="false" />
                                <asp:BoundField DataField="LoanInterest" HeaderText="LoanInterest" Visible="false" />
                                <asp:BoundField DataField="NoOfInstallments" HeaderText="NoOfInstallments" Visible="false" />
                                <asp:BoundField DataField="LoanPaidAmount" HeaderText="LoanPaidAmount" Visible="false" />
                                <asp:BoundField DataField="LoanGrantDate" HeaderText="LoanGrantDate" Visible="false" />
                                <asp:BoundField DataField="RecoveryCapital" HeaderText="RecoveryCapital" Visible="false" />
                                <asp:BoundField DataField="RecoveryInterest" HeaderText="RecoveryInterest" Visible="false" />
                                <asp:BoundField DataField="SettelementsCapital" HeaderText="SettelementsCapital" Visible="false" />
                                <asp:BoundField DataField="SettelementsInterest" HeaderText="SettelementsInterest" Visible="false" />
                                <asp:BoundField DataField="BalanceCapital" HeaderText="BalanceCapital" Visible="false" />
                                <asp:BoundField DataField="BalanceInterest" HeaderText="BalanceInterest" Visible="false" />
                                <asp:BoundField DataField="OutstandingInstallments" HeaderText="OutsandingInstallments" Visible="false" />
                                <asp:BoundField DataField="CurrentInstallments" HeaderText="CurrentInstallments" Visible="false" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <%-- <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />--%>
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
                <asp:HiddenField ID="IsEdit" runat="server" />
                <asp:HiddenField ID="TableID" runat="server" />
                <asp:HiddenField ID="EmpID1" runat="server" />

            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
