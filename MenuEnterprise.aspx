<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuEnterprise.aspx.cs" Inherits="Smarter_HRIS.MenuEnterprise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />

        <div class="tile-group seven">
            <h4>Company Hierarchy</h4>
            <a class="tile double bg-green" data-click="transform" href="CompanyRegistration.aspx" runat="server" id="Company_Registration">
                <div class="tile-content icon">
                    <span class="icon-cube"></span>
                </div>
                <div class="brand">
                    <div class="label">Company Registration</div>
                </div>
            </a>
            <a class="tile double bg-emerald" data-click="transform" href="DivisionRegistration.aspx" runat="server" id="Division_Registration">
                <div class="tile-content icon">
                    <span class="icon-drawer-2"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Division Registration</div>
                </div>
            </a>
            <a class="tile bg-lime" data-click="transform" href="SubDivisionRegistration.aspx" runat="server" id="SubDivision_Registration">
                <div class="tile-content icon">
                    <span class="icon-cabinet"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Sub Division Registration</div>
                </div>
            </a>
            <a class="tile double bg-green" data-click="transform" href="DepartmentRegistration.aspx" runat="server" id="Department_Registration">
                <div class="tile-content icon">
                    <span class="icon-drawer-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Department Registration</div>
                </div>
            </a>
            <a class="tile bg-emerald" data-click="transform" href="SubDepartmentRegistration.aspx" runat="server" id="SubDepartment_Registration">
                <div class="tile-content icon">
                    <span class="icon-cabinet"></span>
                </div>
                <div class="brand">
                    <div class="label">Sub Department Registration</div>
                </div>
            </a>


            <a class="tile double bg-lime" data-click="transform" href="SectionRegistration.aspx" runat="server" id="Section_Registration">
                <div class="tile-content icon">
                    <span class="icon-box"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Section Registration</div>
                </div>
            </a>
            <a class="tile double bg-emerald" data-click="transform" href="SubSectionRegistration.aspx" runat="server" id="Sub_SectionRegistration">
                <div class="tile-content icon">
                    <span class="icon-cabinet"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Sub Section Registration</div>
                </div>
            </a>
        </div>

        <div class="tile-group seven">
            <asp:HiddenField ID="lblUserID" runat="server" />
            <h4>Enterprise</h4>
            <a class="tile double bg-lime" data-click="transform" href="RegistrationYears.aspx" runat="server" id="Registration_Years">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="brand">
                    <div class="label">Registration Years</div>
                </div>
            </a>


            <a class="tile bg-green" data-click="transform" href="CompanyRules.aspx" runat="server" id="Company_Rules">
                <div class="tile-content icon">
                    <span class="icon-copy"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Company Rules</div>
                </div>
            </a>

            <a class="tile double bg-emerald" data-click="transform" href="CompanyBankAccountDetails.aspx" runat="server" id="Company_Bank_Account_Details">
                <div class="tile-content icon">
                    <span class="icon-list"></span>
                </div>
                <div class="brand">
                    <div class="label">Company Bank Account Details</div>
                </div>
            </a>

            <a class="tile double bg-green" data-click="transform" href="CarderBudgetting.aspx" runat="server" id="A1">
                <div class="tile-content icon">
                    <span class="icon-target"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Carder Budgetting</div>
                </div>
            </a>



            <a class="tile double bg-green" data-click="transform" href="CustomerRegistration.aspx" runat="server" id="A6">
                <div class="tile-content icon">
                    <span class="icon-user-2"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Customer Registration</div>
                </div>
            </a>


            <a class="tile double bg-green" data-click="transform" href="CompanyLocationRegistration.aspx" runat="server" id="A3">
                <div class="tile-content icon">
                    <span class="icon-dribbble"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Company Location Registration</div>
                </div>
            </a>



            <a class="tile double bg-green" data-click="transform" href="CustomerLocationRegistration.aspx" runat="server" id="A7">
                <div class="tile-content icon">
                    <span class="icon-dribbble"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Customer Location Registration</div>
                </div>
            </a>



            <a class="tile double bg-green" data-click="transform" href="GroupAssignToCustomerLocation.aspx" runat="server" id="A4">
                <div class="tile-content icon">
                    <span class="icon-arrow-right"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Group Assign To Customer Location</div>
                </div>
            </a>

            <a class="tile double bg-green" data-click="transform" href="GroupAssignToCompanyLocation.aspx" runat="server" id="A5">
                <div class="tile-content icon">
                    <span class="icon-arrow-right"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Group Assign To Company Location</div>
                </div>
            </a>
            <%--<a class="tile triple bg-lightOlive" data-click="transform" href="/HR_Admin/HierarchyLevelDetails/Index">
                <div class="tile-content icon">
                    <span class="icon-tree-view"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Hierarchy Level Details</div>
                </div>
            </a>
            <a class="tile triple bg-lightOlive" data-click="transform" href="/HR_Admin/CompanyLevelDetail/Index">
                <div class="tile-content icon">
                    <span class="icon-share-2"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Company Level Detail</div>
                </div>
            </a>--%>
        </div>


        <div class="tile-group six">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <h4>Allowances</h4>
            <a class="tile double bg-yellow" data-click="transform" href="CustomerSiteAllowance.aspx" runat="server" id="A2">
                <div class="tile-content icon">
                    <span class="icon-coins"></span>
                </div>
                <div class="brand">
                    <div class="label">Customer Site Allowances</div>
                </div>
            </a>
        </div>
   
    </div>


</asp:Content>
