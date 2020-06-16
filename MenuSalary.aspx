<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuSalary.aspx.cs" Inherits="Smarter_HRIS.MenuSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Process Salary</div>
            <a class="tile double bg-darkBlue live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="CreateSalarySession.aspx" runat="server" id="Create_SalarySession">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-calendar"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Session Details</span>
                        <span class="email-data-text">Create salary session to process salary</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Salary Session</div>
                </div>
            </a>
            <a class="tile bg-cyan" data-click="transform" href="AllowanceType.aspx" runat="server" id="Allowance_Type">
                <div class="tile-content icon">
                    <span class="icon-clipboard-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Allowance Type</div>
                </div>
            </a>
            <a class="tile bg-cobalt" data-click="transform" href="AttendanceSummary.aspx" runat="server" id="Attendance_Summary">
                <div class="tile-content icon">
                    <span class="icon-clipboard-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Attendance Summary</div>
                </div>
            </a>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="CreateAllowances.aspx" runat="server" id="Create_Allowances">
                <div class="tile-content icon">
                    <span class="icon-plus-2"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-plus-2"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Manage</span>
                        <span class="email-data-title">Addit./Deduct. Details</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Additions/Deductions. (Pay Items)</div>
                </div>
            </a>
            <a class="tile bg-green live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="FixAdditions.aspx" runat="server" id="Fix_Additions">
                <div class="tile-content icon">
                    <span class="icon-plus"></span>
                </div>
                <div class="tile-content icon">
                    <span class="icon-plus"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Fix Additions</div>
                </div>
            </a>
            <a class="tile double bg-emerald live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="FixAdditionAssign.aspx" runat="server" id="FixAddition_Assign">
                <div class="tile-content icon">
                    <span class="icon-accessibility"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-accessibility"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Fix Additions Assign</span>
                        <span class="email-data-text">Assign Fix Additions</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Fix Additions Assign</div>
                </div>
            </a>
            <a class="tile bg-lightRed live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="FixDeductions.aspx" runat="server" id="Fix_Deductions">
                <div class="tile-content icon">
                    <span class="icon-minus"></span>
                </div>
                <div class="tile-content icon">
                    <span class="icon-minus"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Fix Deductions</div>
                </div>
            </a>
            <a class="tile double bg-red live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="FixDeductionAssign.aspx" runat="server" id="Fix_DeductionAssign">
                <div class="tile-content icon">
                    <span class="icon-accessibility"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-accessibility"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Fix Deductions Assign</span>
                        <span class="email-data-text">assign Fix Allowances</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Fix Deductions Assign</div>
                </div>
            </a>
            <a class="tile double bg-darkGreen live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="VariableAdditionAssign.aspx" runat="server" id="Variable_AdditionAssign">
                <div class="tile-content icon">
                    <span class="icon-enter"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-enter"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Variable Addition Assign</span>
                        <span class="email-data-text">Assign variable Additions</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Variable Addition Assign</div>
                </div>
            </a>
            <a class="tile double bg-darkRed live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="VariableDeductionAssign.aspx" runat="server" id="Variable_DeductionAssign">
                <div class="tile-content icon">
                    <span class="icon-exit"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-exit"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Variable Deduction Assign</span>
                        <span class="email-data-text">Assign Deduction Allowances</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Variable Deduction Assign</div>
                </div>
            </a>
            <a class="tile double bg-indigo live ol-cyan" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ProcessSalary.aspx" runat="server" id="Process_Salary">
                <div class="tile-content icon">
                    <span class="icon-coins"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-coins"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Process Salary</span>
                        <span class="email-data-text">process salary for employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Process Salary</div>
                </div>
                <div class="text-right padding10 padding10">
                    <div class="badge fg-white"><span class="icon-spin"></span></div>
                </div>
            </a>

            <a class="tile double bg-darkBrown live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="SalaryIncrementForm.aspx" runat="server" id="Salary_Increment_Form">
                <div class="tile-content icon">
                    <span class=" icon-stats-up"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-stats-up"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Salary Increment Form</span>
                        <span class="email-data-text">Salary Increment Form</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Salary Increment Form</div>
                </div>
                <div class="text-right padding10 padding10">
                    <div class="badge fg-white"><span class=" icon-stats-up"></span></div>
                </div>
            </a>

            <a class="tile double bg-cobalt" data-role="live-tile" data-effect="slideUp" data-click="transform" href="PayItemDelete.aspx" runat="server" id="A1">
                <div class="tile-content icon">
                    <span class="  icon-loading"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="  icon-loading"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Pay Item Delete</span>
                        <span class="email-data-text">Pay Item Delete</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Pay Item Delete</div>
                </div>
                <div class="text-right padding10 padding10">
                    <div class="badge fg-white"><span class="  icon-loading"></span></div>
                </div>
            </a>

            
            <a class="tile bg-cyan live" data-click="transform" href="RateMasterUpload.aspx" runat="server" id="Manual_Attendance_Bulk_Upload">
                <div class="tile-content icon">
                    <span class="icon-folder-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Rate Master Excel Upload</div>
                </div>
            </a>
        </div>

        <%--<div class="tile-group two">
            <div class="tile-group-title fg-black">Advance</div>
            <a class="tile double bg-orange live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="/HR_Admin/Advance/Index">
                <div class="tile-content icon">
                    <span class="icon-dollar"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-dollar"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Advance Details</span>
                        <span class="email-data-text">Advance Details</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Advance</div>
                </div>
            </a>

        </div>--%>
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Loan</div>
            <a class="tile bg-lightOlive" data-click="transform" href="LoanType.aspx" runat="server" id="Loan_Type">
                <div class="tile-content icon">
                    <span class="icon-clipboard-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Loan Type</div>
                </div>
            </a>
            <a class="tile double bg-olive live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="LoanCreate.aspx" runat="server" id="Loan_Create">
                <div class="tile-content icon">
                    <span class="icon-dollar-2"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-dollar-2"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Loan Details</span>
                        <span class="email-data-text">Loan Details</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Loan</div>
                </div>
            </a>
            <a class="tile double bg-lightOlive" data-role="live-tile" data-effect="slideUp" data-click="transform" href="LoanSettlement.aspx" runat="server" id="Loan_Settlement">
                <div class="tile-content icon">
                    <span class="icon-checkmark"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-checkmark"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Loan Settlement</span>
                        <span class="email-data-text">Loan Settlement</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Loan Settlement</div>
                </div>
            </a>

            <a class="tile bg-indigo" data-click="transform" href="LoanProcess.aspx" runat="server" id="Loan_Process">
                <div class="tile-content icon">
                    <span class="icon-loading"></span>
                </div>
                <div class="brand">
                    <div class="label">Loan Process</div>
                </div>
            </a>
        </div>
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Bank Details</div>
            <a class="tile bg-orange" data-click="transform" href="BankRegistration.aspx" runat="server" id="Bank_Registration">
                <div class="tile-content icon">
                    <span class="icon-list"></span>
                </div>
                <div class="brand">
                    <div class="label">Bank Registration</div>
                </div>
            </a>
            <a class="tile bg-orange" data-click="transform" href="BranchRegistration.aspx" runat="server" id="Branch_Registration">
                <div class="tile-content icon">
                    <span class="icon-grid"></span>
                </div>
                <div class="brand">
                    <div class="label">Branch Registration</div>
                </div>
            </a>
            <a class="tile bg-orange" data-click="transform" href="BankAccountType.aspx" runat="server" id="Bank_AccountType">
                <div class="tile-content icon">
                    <span class="icon-grid"></span>
                </div>
                <div class="brand">
                    <div class="label">Bank Account Type</div>
                </div>
            </a>
            <a class="tile double bg-red live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="EmpBankTransfer.aspx" runat="server" id="EmpBank_Transfer">
                <div class="tile-content icon">
                    <span class="icon-history"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-history"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Bank Transfer</span>
                        <span class="email-data-text">Bank Transfers for employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Employee Bank Transfer</div>
                </div>
            </a>

            <a class="tile bg-darkOrange" data-click="transform" href="UploadBankAccountNumbers.aspx" runat="server" id="Upload_BankAccount_Numbers">
                <div class="tile-content icon">
                    <span class=" icon-box-remove"></span>
                </div>
                <div class="brand">
                    <div class="label">Upload Bank Account Details</div>
                </div>
            </a>
        </div>

        <div class="tile-group six">
            <div class="tile-group-title fg-black">Work Flow Hierarchy</div>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HieUpdateAllowances.aspx" runat="server" id="Additions_Deductions_Approval">
                <div class="tile-content icon">
                    <span class="icon-plus-2"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-plus-2"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Manage</span>
                        <span class="email-data-title">Addit./Deduct. Details</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Additions/Deductions</div>
                </div>
            </a>
            <a class="tile bg-green live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierachyFixAdditions.aspx" runat="server" id="Hierachy_Fix_Additions">
                <div class="tile-content icon">
                    <span class="icon-plus"></span>
                </div>
                <div class="tile-content icon">
                    <span class="icon-plus"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Fix Additions</div>
                </div>
            </a>
            <a class="tile bg-lightRed live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierachyFixDeductions.aspx" runat="server" id="Hierachy_Fix_Deductions">
                <div class="tile-content icon">
                    <span class="icon-minus"></span>
                </div>
                <div class="tile-content icon">
                    <span class="icon-minus"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Fix Deductions</div>
                </div>
            </a>
            <a class="tile double bg-darkGreen live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierarchyVariableAdditionAssign.aspx" runat="server" id="Hierarchy_VariableAddition_Assign">
                <div class="tile-content icon">
                    <span class="icon-enter"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-enter"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Variable Addition Assign</span>
                        <span class="email-data-text">Assign variable Additions</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Variable Addition Assign</div>
                </div>
            </a>
            <a class="tile double bg-darkRed live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierarchyVariableDeductionAssign.aspx" runat="server" id="Hierarchy_VariableDeduction_Assign">
                <div class="tile-content icon">
                    <span class="icon-exit"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-exit"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Variable Deduction Assign</span>
                        <span class="email-data-text">assign Deduction Allowances</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Variable Deduction Assign</div>
                </div>
            </a>
        </div>

        <div class="tile-group six">
            <a class="tile double bg-olive live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierarchyLoanCreate.aspx" runat="server" id="Hierarchy_Loan_Create">
                <div class="tile-content icon">
                    <span class="icon-dollar-2"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-dollar-2"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Loan Details</span>
                        <span class="email-data-text">Loan Details</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Loan</div>
                </div>
            </a>
            <a class="tile double bg-lightOlive" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierarchyLoanSettlement.aspx" runat="server" id="Hierarchy_Loan_Settlement">
                <div class="tile-content icon">
                    <span class="icon-checkmark"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-checkmark"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Loan Settlement</span>
                        <span class="email-data-text">Loan Settlement</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Loan Settlement</div>
                </div>
            </a>

            <a class="tile double bg-red live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierarchyEmpBankTransfer.aspx" runat="server" id="Hierarchy_EmpBank_Transfer">
                <div class="tile-content icon">
                    <span class="icon-history"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-history"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Bank Transfer</span>
                        <span class="email-data-text">Bank Transfers for employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Employee Bank Transfer</div>
                </div>
            </a>
        </div>
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Incentives/Products</div>
            <a class="tile double bg-darkBlue live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="IncentiveProductsOrServices.aspx" runat="server" id="Incentiv_eProducts_Or_Services">
                <div class="tile-content icon">
                    <span class="icon-grid"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-grid"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Incentive Products Or Services</span>
                        <span class="email-data-text">Incentive Products Or Services</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Incentive Products Or Services</div>
                </div>
            </a>
            <a class="tile double bg-lightBlue live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="IncentiveProductsOrServicesRate.aspx" runat="server" id="Incentive_Products_Or_ServicesRate">
                <div class="tile-content icon">
                    <span class="icon-calculate"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-calculate"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Process Incentive Summary</span>
                        <span class="email-data-text">Process Incentive Summary</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Process Incentive Summary</div>
                </div>
            </a>
        </div>
    </div>
</asp:Content>
