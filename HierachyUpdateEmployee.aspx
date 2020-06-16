<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HierachyUpdateEmployee.aspx.cs" Inherits="Smarter_HRIS.HierachyUpdateEmployee1" %>

<%--<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="Smarter_HRIS.AddEmployee1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
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
    <style>
        @media print {
            .no-print, .no-print * {
                display: none !important;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend class="no-print">Add Employee</legend>
        <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="EmpMasterName" runat="server" />
        <asp:HiddenField ID="EmpMasterID" runat="server" />
        <asp:HiddenField ID="OfficialTableID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="grid no-print">
            <div class="row">
                <div class="span6">
                    <div class="text-right">
                        <asp:Panel ID="Panel1" runat="server" DefaultButton="bttnSearch">
                            <div class="input-control text">
                                <%--<input type="text" id="txtSearch" runat="server" />--%>
                                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                <asp:LinkButton ID="bttnSearch" runat="server" CssClass="btn-search" OnClick="bttnSearch_click"></asp:LinkButton>
                                <%--<asp:Button ID="bttnSearch" CssClass="btn-search" runat="server" OnClick="bttnSearch_click" />--%>
                                <%--<button class="btn-search" id="bttnSearch" runat="server" type="button" onserverclick="bttnSearch_click"></button>--%>
                                <br />
                                <%--<div class="text-left">
                                    <label>
                                        Reporting Type<sup class="fg-red">*</sup>
                                        <asp:DropDownList ID="drpReport" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList></label>
                                </div>--%>
                            </div>
                        </asp:Panel>
                    </div>

                </div>
                <div class="span4">
                    <button class="shortcut info" runat="server" id="bttnSearch1" onserverclick="bttnSearch_click">
                        <i class="icon-search"></i>
                        Search</button>

                    <button class="shortcut primary" runat="server" id="bttnSaveAll" onserverclick="bttnSaveAll_click">
                        <i class="icon-floppy"></i>
                        Save</button>

                    <button class="shortcut success" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                        <i class="icon-new"></i>
                        New</button>
                </div>
            </div>
        </div>

        <%--<br />--%>
        <asp:UpdatePanel ID="UpdatePanel13" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div class="grid">
                    <div class="row">
                        <div class="span3">
                            <asp:Image ID="Image1" runat="server" Height="200" Width="200" /><br />
                        </div>
                        <div class="span6">
                            <h2>
                                <asp:Label ID="lblEmployeeName" runat="server" Text=""></asp:Label></h2>
                            <br />
                            <h2>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>

                            <asp:Label ID="lblEmployeeID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblEmployeeOfficialDetailID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblMembershipID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblDocumentID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblIllnessID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblImmigrationID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblSkillID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblQualificationID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblTransferID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblAssetID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblDependantID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblFamilyID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblBenefitID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblDiciplineID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblEmergencyID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblJobID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblAddressID" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblBodyMeasure" Visible="false" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblWellnessID" Visible="false" runat="server" Text=""></asp:Label>

                            <asp:Label ID="lblEmployeeNo" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblDesignation" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblWorkCategory" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblJobCategory" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblCompanyName" runat="server" Text=""></asp:Label><br />

                            <asp:Label ID="lblIsActiveVal" runat="server" Text=""></asp:Label>
                            <div id="lblIsActiveVal1" runat="server" class="input-control switch">
                                <label>
                                    <input id="chkIsActive1" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>

                            <h3 class="no-print">Change/Add Image</h3>
                            <asp:Panel ID="pnlHeader" CssClass="no-print" runat="server">
                                <%--<label>Upload Image</label>--%><br />
                                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                <%--<asp:Button ID="bttnUpload" runat="server" Text="Upload" OnClick="bttnUpload_Click" CssClass="success" />--%>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <%--<br />--%>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <asp:Panel ID="pnlAppliedAttendance" runat="server"></asp:Panel>
            <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Employee Master</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="updatePersonal" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Personal Details</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Emp No<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtEmpNo" runat="server"></asp:TextBox>
                                        <label>Gender<sup class="fg-red">*</sup></label>
                                        <%--<asp:TextBox ID="txtGender" runat="server"></asp:TextBox>--%>
                                        <asp:DropDownList ID="drpGender" runat="server" Width="200"></asp:DropDownList>
                                        <label>Title<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpTitle" runat="server" Width="200"></asp:DropDownList>
                                        <label>Initials</label>
                                        <asp:TextBox ID="txtInitials" runat="server"></asp:TextBox>
                                        <label>First Name</label>
                                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                        <label>Middle Name</label>
                                        <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
                                        <label>Last Name</label>
                                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                        <%--<label>Office Use Name</label>
                            <asp:TextBox ID="txtOfficeName" runat="server"></asp:TextBox>--%>
                                    </div>
                                    <div class="span4">
                                        <label>Name With Initials<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                                        <label>Office Use Name</label>
                                        <asp:TextBox ID="txtOfficeName" runat="server"></asp:TextBox>
                                        <label>Passport No</label>
                                        <asp:TextBox ID="txtPassportNo" runat="server"></asp:TextBox>
                                        <label>Date Of Birth<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtDOB" runat="server" name="txtDOB" style="width: 198px;" />
                                        <%--<label>Birth Date</label>
                                    <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
                                    <label>Birth Month</label>
                                    <asp:TextBox ID="txtBirthMonth" runat="server"></asp:TextBox>--%>
                                        <label>NIC</label>
                                        <asp:TextBox ID="txtNIC" runat="server"></asp:TextBox>
                                        <%--<asp:DropDownList ID="drpTitle" runat="server">
                            </asp:DropDownList>--%>

                                        <%--<asp:DropDownList ID="drpLanguage" cssclass="input-control select span2" runat="server">
                            </asp:DropDownList>--%>
                                    </div>
                                    <div class="span4">
                                        <label>Language<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpLanguage" runat="server" Width="200"></asp:DropDownList>
                                        <label>Marital Status<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpMaritalStatus" runat="server" Width="200"></asp:DropDownList>
                                        <label>Nationality<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpNationality" runat="server" Width="200"></asp:DropDownList>
                                        <label>Race<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpRace" runat="server" Width="200"></asp:DropDownList>
                                        <label>Religion<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpRelogion" runat="server" Width="200"></asp:DropDownList>
                                        <label>Blood Group<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpBloodGroup" runat="server" Width="200"></asp:DropDownList>
                                        <label>Distance From Work Place<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpDistanceFromWorkPlace" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                    <%--<div class="span4">
                     <asp:Button ID="bttnEdit" CssClass="button info large" runat="server" Text="Edit" OnClick="bttnEdit_Click" />
                  </div>--%>
                                </div>
                                <div class="row">
                                    <asp:Panel ID="pnlEmployeeMaster" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnEmpMaster" onserverclick="bttnEmpMaster_Click">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="MasterTableID" runat="server" />
                                    <%--<button class="image-button success" id="bttnEmpMaster">
                                    Save
                                    <i class="icon-cloud-2 bg-emerald"></i>
                                </button>--%>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Official Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="updateOfficial" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Official Details</h3>
                                    </legend>

                                    <div class="span4">
                                        <label>Employee Office ID No</label>
                                        <asp:TextBox ID="txtofficeNIC" runat="server"></asp:TextBox>
                                        <%--<div class="input-control text" data-role="input-control">
                            <input type="text" placeholder="put cursor" data-popover="popover" data-popover-position="right" data-popover-text="Please, input you data here" data-popover-background="bg-red" data-popover-color="fg-white" data-popover-mode="focus"/>
                            <button class="btn-clear" tabindex="-1"></button></div>--%>

                                        <label>Proximity Card No</label>
                                        <asp:TextBox ID="txtProximity" runat="server"></asp:TextBox>
                                        <label>Attendance Account No<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtattNo" runat="server"></asp:TextBox>
                                        <label>Is Active Employee<sup class="fg-red">*</sup></label>
                                        <%--<asp:TextBox ID="txtIsActive" runat="server"></asp:TextBox>--%>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkIsActive" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>

                                        <label>PPF/EPF No</label>
                                        <asp:TextBox ID="txtEPFNo" runat="server"></asp:TextBox>
                                        <label>Employee Fund<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpFundType" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList>
                                        <label>ETF No</label>
                                        <asp:TextBox ID="txtETFNo" runat="server"></asp:TextBox>
                                        <label>Is Tax Payee<sup class="fg-red">*</sup></label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkTaxPayee" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>

                                    </div>
                                    <div class="span4">
                                        <label>Tax Payee No</label>
                                        <asp:TextBox ID="txtTaxPayeeNo" runat="server"></asp:TextBox>
                                        <label>Job Source<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpJobSource" runat="server" Width="200"></asp:DropDownList>
                                        <label>Man Power Company<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpManPowerCompany" runat="server" Width="200"></asp:DropDownList>
                                        <label>Salary Process<sup class="fg-red">*</sup></label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkSalaryProcess" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>
                                        <label>Salary Period<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSalaryPeriod" runat="server" Width="200"></asp:DropDownList>
                                        <label for="lblSalary">Basic Salary<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtBasicSalary1" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="txtBasicSalary" runat="server" value="0"></asp:TextBox>
                                        <label>Statute Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpStatute" runat="server" Width="200"></asp:DropDownList>
                                        <label>Next Salary Increment Date</label>
                                        <input type="date" id="txtNextSalIncrement" runat="server" name="txtNextSalIncrement" style="width: 200px;" />
                                    </div>
                                    <div class="span4">
                                        <label>Company Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpCompany" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Division Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpDivision" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpDivision_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Sub Division Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSubDivision" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpSubDivision_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Department Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpDepartment" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpDepartment_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Sub Department Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSubDepartment" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpSubDepartment_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Section Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSection" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpSection_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Sub Section Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSubSection" runat="server" Width="200"></asp:DropDownList>

                                    </div>
                                </div>
                                <div class="row">
                                    <asp:Panel ID="pnlOfficialDetails" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnOfficialDetails" onserverclick="bttnOfficialDetails_click">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <%--<asp:HiddenField ID="OfficialTableID" runat="server" />--%>
                                    <asp:HiddenField ID="EmpIDOffice" runat="server" />
                                </div>
                            </ContentTemplate>
                            <%--<Triggers>
                                    <asp:PostBackTrigger ControlID="bttnEmpMaster" />
                                </Triggers>--%>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Address Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="updateAddress" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Address Details</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Contact Type<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpContactType" runat="server" Width="200"></asp:DropDownList>
                                        <label>Address No</label>
                                        <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                                        <label>City</label>
                                        <%--<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtCity" runat="server" rows="3" cols="25"></textarea>
                                        <label>District<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpDistrict" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <label>Postal Code / Zip Code</label>
                                        <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                                        <label>Country<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpCountry" runat="server" Width="200"></asp:DropDownList>
                                        <label>Tel No</label>
                                        <asp:TextBox ID="txtTelNo" runat="server"></asp:TextBox>
                                        <label>Mobile No</label>
                                        <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="span4">
                                        <label>Work Tel</label>
                                        <asp:TextBox ID="txtWorkTel" runat="server" Style="width: 233px;"></asp:TextBox>
                                        <label>Office Email<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtOfficeEmail" runat="server" Style="width: 233px;"></asp:TextBox>
                                        <label>Private Email</label>
                                        <asp:TextBox ID="txtPrivateEmail" runat="server" Style="width: 233px;"></asp:TextBox>
                                        <label>Comments</label>
                                        <%--<asp:TextBox ID="txtComments" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtComments" runat="server" rows="3" cols="30"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:Panel ID="pnlAddressDetails" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnAddressDetails" onserverclick="bttnAddressDetails_click">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="AddressTableID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Job Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel8" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Job Details</h3>
                                    </legend>
                                    <div class="span4">
                                        <%--<label>Company Name</label>
                                    <asp:TextBox ID="txtCompanyNameJob" runat="server"></asp:TextBox>
                                    <label>Division Name</label>
                                    <asp:TextBox ID="txtDivisionNameJob" runat="server"></asp:TextBox>--%>
                                        <label>Designation<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpJobDesignation" runat="server" Width="200"></asp:DropDownList>
                                        <label>Join Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtJobJoinDate" runat="server" name="txtJobJoinDate" style="width: 200px;" />
                                        <label>Date of Appointment</label>
                                        <input type="date" id="txtJobDateofAppointment" runat="server" name="txtJobDateofAppointment" style="width: 200px;" />
                                        <label>Probation Period(Months)<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtProbation" runat="server" AutoPostBack="True" OnTextChanged="txtProbation_TextChanged"></asp:TextBox>
                                        <asp:Button ID="bttnCalcDates" runat="server" Text="calculate" OnClick="txtProbation_TextChanged" CssClass="primary mini" />
                                        <label>Date of Confirmation</label>
                                        <input type="date" id="txtJobDateofConfirmation" runat="server" name="txtJobDateofConfirmation" style="width: 200px;" />
                                        <label>Job Specification</label>
                                        <textarea id="txtJobSpecification" runat="server" rows="5" cols="72"></textarea>
                                    </div>
                                    <div class="span4">
                                        <label>Resign Date</label>
                                        <input type="date" id="txtJobResignDate" runat="server" name="txtJobResignDate" style="width: 200px;" />
                                        <label>Retirement Date</label>
                                        <input type="date" id="txtJobRetirementDate" runat="server" name="txtJobRetirementDate" style="width: 200px;" />
                                        <label>Work Category<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpWorkCategory" runat="server" Width="200"></asp:DropDownList>

                                        <%--<asp:TextBox ID="txtJobSpecification" runat="server"></asp:TextBox>--%>
                                        <%--<div class="input-control textarea">
                                        <textarea id="txtJobSpecification" runat="server"></textarea>
                                    </div>--%>
                                        <label>Job Category<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpJobCategory" runat="server" Width="199"></asp:DropDownList>

                                    </div>
                                    <div class="span4">

                                        <label>Reporting Supervisor</label>
                                        <asp:TextBox ID="txtReportingSupervisor" runat="server"></asp:TextBox>
                                        <label>Job Level<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpJobLevel" runat="server" Width="199"></asp:DropDownList>
                                        <label>Rejoin Date</label>
                                        <input type="date" id="txtJobRejoinDate" runat="server" name="txtJobRejoinDate" style="width: 199px;" />
                                        <label>Comment</label>
                                        <%--<asp:TextBox ID="txtCommentJob" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtCommentJob" runat="server" rows="5" cols="25"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:Panel ID="pnlJob" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnJob">
                                <i class="icon-cloud-2"></i>
                                Save</button>--%>
                                    <asp:HiddenField ID="JobTableID" runat="server" />

                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Emergency Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="updateEmergency" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Emergency Details</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Contact Person Name</label>
                                        <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
                                        <label>Type<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpEmergencyType" runat="server" Width="199"></asp:DropDownList>
                                        <label>No</label>
                                        <%--<asp:TextBox ID="txtNo" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtNo" runat="server" rows="3" cols="25"></textarea>
                                        <label>City</label>
                                        <asp:TextBox ID="txtCityEmerg" runat="server"></asp:TextBox>
                                        <label>District<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpEmergencyDistric" runat="server" Width="199"></asp:DropDownList>
                                        <br />
                                        <asp:Button ID="bttnEmergencyAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnEmergencyAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Postal Code / Zip Code</label>
                                        <asp:TextBox ID="txtPostalCodeEmerg" runat="server"></asp:TextBox>
                                        <label>Country<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpEmergencyCountry" runat="server" Width="199"></asp:DropDownList>
                                        <label>Tel No</label>
                                        <asp:TextBox ID="txtTelNoEmerg" runat="server"></asp:TextBox>
                                        <label>Mobile No</label>
                                        <asp:TextBox ID="txtMobNoEmerg" runat="server"></asp:TextBox>
                                        <label>Work Tel</label>
                                        <asp:TextBox ID="txtWorkTelEmerg" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="span4">
                                        <label>Office Email</label>
                                        <asp:TextBox ID="txtOfficeEmailEmerg" runat="server" Width="233"></asp:TextBox>
                                        <label>Private Email</label>
                                        <asp:TextBox ID="txtPrivateEmailEmerg" runat="server" Width="233"></asp:TextBox>
                                        <label>Relationship<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpRelationship" runat="server" Width="233"></asp:DropDownList>
                                        <label>Comments</label>
                                        <%-- <asp:TextBox ID="txtCommentsEmerg" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtCommentsEmerg" runat="server" rows="3" cols="30"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdEmergency" runat="server" DataKeyNames="TypeID,DistrictID,CountryID,RelationshipID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="1" GridLines="Vertical" Font-Size="Smaller" OnRowDeleting="grdEmergency_RowDeleting" OnRowCommand="grdEmergency_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="ContactPersonName" HeaderText="Contact Person Name" NullDisplayText=" " />
                                            <asp:BoundField DataField="Type" HeaderText="Type" NullDisplayText=" " />
                                            <asp:BoundField DataField="TypeID" HeaderText="TypeID" Visible="False" />
                                            <asp:BoundField DataField="No" HeaderText="No" NullDisplayText=" " Visible="true" />
                                            <asp:BoundField DataField="City" HeaderText="City" NullDisplayText=" " />
                                            <asp:BoundField DataField="District" HeaderText="District" NullDisplayText=" " />
                                            <asp:BoundField DataField="DistrictID" HeaderText="DistrictID" Visible="False" />
                                            <asp:BoundField DataField="PostalCode/ZIP" HeaderText="Postal Code/ ZIP" NullDisplayText=" " />
                                            <asp:BoundField DataField="Country" HeaderText="Country" NullDisplayText=" " />
                                            <asp:BoundField DataField="CountryID" HeaderText="CountryID" Visible="False" />
                                            <asp:BoundField DataField="TelNo" HeaderText="Tel No" NullDisplayText=" " />
                                            <asp:BoundField DataField="MobNo" HeaderText="Mob No" NullDisplayText=" " />
                                            <asp:BoundField DataField="WorkTel" HeaderText="Work Tel" NullDisplayText=" " />
                                            <asp:BoundField DataField="Comment" HeaderText="Comment" NullDisplayText=" " />
                                            <asp:BoundField DataField="OfficeEmail" HeaderText="Office Email" NullDisplayText=" " />
                                            <asp:BoundField DataField="PersonalEmail" HeaderText="Personal Email" NullDisplayText=" " />
                                            <asp:BoundField DataField="Relationship" HeaderText="Relationship" NullDisplayText=" " />
                                            <asp:BoundField DataField="RelationshipID" HeaderText="RelationshipID" Visible="False" />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlEmergency" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnEmergency">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="EmergencyRowIndex" runat="server" />
                                    <asp:HiddenField ID="EmergencyTableID" runat="server" />
                                    <asp:HiddenField ID="EmergencyDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Family Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="updateFamily" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Family Details</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Family Name<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtFamilyName" runat="server"></asp:TextBox>
                                        <label>Relationship<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpFamilyRelationship" runat="server" Width="200"></asp:DropDownList>
                                        <label>Date Of Birth</label>
                                        <input type="date" id="txtFamilyDOB" runat="server" name="txtFamilyDOB" style="width: 200px;" /><br />
                                        <asp:Button ID="bttnFamilyAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnFamilyAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Occupation</label>
                                        <asp:TextBox ID="txtOccupationFamily" runat="server"></asp:TextBox>
                                        <label>Eligibility For Insurance</label>
                                        <asp:TextBox ID="txtEligibilityForEnsurance" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="span4">
                                        <label>Family Index No</label>
                                        <asp:TextBox ID="txtFamilyIndexNo" runat="server"></asp:TextBox>
                                        <label>Other Benefits Scehemes</label>
                                        <asp:TextBox ID="txtOtherBenefitsScehemes" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdFamily" runat="server" DataKeyNames="RelationshipID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" GridLines="Vertical" OnRowDeleting="grdFamily_RowDeleting" OnRowCommand="grdFamily_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="FamilyName" HeaderText="Family Name" NullDisplayText=" " />
                                            <asp:BoundField DataField="Relationship" HeaderText="Relationship" NullDisplayText=" " />
                                            <asp:BoundField DataField="RelationshipID" HeaderText="RelationshipID" Visible="False" />
                                            <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" NullDisplayText=" " />
                                            <asp:BoundField DataField="Occupation" HeaderText="Occupation" NullDisplayText=" " />
                                            <asp:BoundField DataField="EligibilityForInsurance" HeaderText="Eligibility For Insurance" NullDisplayText=" " />
                                            <asp:BoundField DataField="FamilyIndexNo" HeaderText="Family Index No" NullDisplayText=" " />
                                            <asp:BoundField DataField="OtherBenifits" HeaderText="Other Benifits" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button1" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button2" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlFamily" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnFamily">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="FamilyRowIndex" runat="server" />
                                    <asp:HiddenField ID="FamilyTableID" runat="server" />
                                    <asp:HiddenField ID="FamilyDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Dependant Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Dependant Details</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>No of Children</label>
                                        <asp:TextBox ID="txtNoofChildren" runat="server"></asp:TextBox>
                                        <label>Monthly Income</label>
                                        <asp:TextBox ID="txtMonthlyIncome" runat="server"></asp:TextBox>
                                        <label>AGA Certification</label>
                                        <asp:TextBox ID="txtAGECertificate" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="span4">
                                        <label>No of Dependants</label>
                                        <asp:TextBox ID="txtNoofDependants" runat="server"></asp:TextBox>
                                        <label>Living Situation<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpLivingSituation" runat="server" Width="200"></asp:DropDownList>

                                    </div>
                                    <div class="span4">
                                        <label>No of Members for Insurance</label>
                                        <asp:TextBox ID="txtNoofMembersforInsurance" runat="server"></asp:TextBox>
                                        <label>Remarks</label>
                                        <%--<asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtRemarks" runat="server" rows="3" cols="25"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:Panel ID="pnlDependant" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnDependant">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="DenendantTableID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Immigration</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Immigration</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Immigration Type<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpImmigrationType" runat="server" Width="200"></asp:DropDownList>
                                        <label>Description</label>
                                        <%--<asp:TextBox ID="txtDescriptionImmi" runat="server"></asp:TextBox><br />--%>
                                        <textarea id="txtDescriptionImmi" runat="server" rows="5" cols="71"></textarea><br />
                                        <label>Remarks</label>
                                        <%--<asp:TextBox ID="txtRemarksImmi" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtRemarksImmi" runat="server" rows="5" cols="71"></textarea>
                                        <asp:Button ID="bttnImmigrationAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnImmigrationAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Expiery Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtImmigrationExpieryDate" runat="server" name="txtImmigrationExpieryDate" style="width: 200px;" />

                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdImmigration" runat="server" DataKeyNames="ImmigrationTypeID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdImmigration_RowDeleting" OnRowCommand="grdImmigration_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="ImmigrationType" HeaderText="Immigration Type" NullDisplayText=" " />
                                            <asp:BoundField DataField="ImmigrationTypeID" HeaderText="ImmigrationTypeID" Visible="False" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" NullDisplayText=" " />
                                            <asp:BoundField DataField="ExpieryDate" HeaderText="Expiery Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button3" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button4" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlImmigration" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnImmigration">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="ImmigrationRowIndex" runat="server" />
                                    <asp:HiddenField ID="ImmigrationTableID" runat="server" />
                                    <asp:HiddenField ID="ImmigrationDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Qualification</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Qualification</h3>
                                    </legend>

                                    <div class="col-md-12" style="padding-left: 25px; padding-right: 25px;">
                                        <div class="span4">
                                            <label>Qualification Type<sup class="fg-red">*</sup></label>
                                            <asp:DropDownList ID="drpQualificationType" runat="server" Width="200"></asp:DropDownList>
                                            <label>Course</label>
                                            <asp:TextBox ID="txtQCourse" runat="server"></asp:TextBox>
                                            <label>GPA/ Score</label>
                                            <asp:TextBox ID="txtQGPA" runat="server"></asp:TextBox><br />
                                        </div>
                                        <div class="span4">
                                            <label>Institute/ School</label>
                                            <asp:TextBox ID="txtQSchool" runat="server"></asp:TextBox>
                                            <label>Year of Award</label>
                                            <asp:TextBox ID="txtQYearOfAward" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="span4">
                                            <label>Validity Till</label>
                                            <input type="date" id="txtQValidityTill" runat="server" name="txtQValidityTill" style="width: 200px;" />
                                            <label>Overall Course Rating</label>
                                            <asp:TextBox ID="txtQOverallRating" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <span class="span12">
                                        <hr />
                                    </span>

                                    <div class="col-md-12" style="padding-left: 25px; padding-right: 25px;">
                                        <div class="span4">
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject1" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject2" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject3" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject4" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject5" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject6" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject7" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject8" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject9" runat="server"></asp:TextBox>
                                            <label>Subject/ Decipline</label>
                                            <asp:TextBox ID="txtSubject10" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:Button ID="bttnQualificationAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnQualificationAdd_click" />
                                        </div>
                                        <div class="span3">
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel1" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel2" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel3" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel4" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel5" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel6" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel7" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel8" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel9" runat="server"></asp:TextBox>
                                            <label>Level/ Class</label>
                                            <asp:TextBox ID="txtLevel10" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdQualifi" runat="server" Width="100%" DataKeyNames="QualificationTypeID,Subject1,Level1,Subject2,Level2,Subject3,Level3,Subject4,Level4,Subject5,Level5,Subject6,Level6,Subject7,Level7,Subject8,Level8,Subject9,Level9,Subject10,Level10,TableID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdQualifi_RowDeleting" OnRowCommand="grdQualifi_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="QualificationType" HeaderText="Qualification Type" NullDisplayText=" " />
                                            <asp:BoundField DataField="QualificationTypeID" HeaderText="QualificationTypeID" Visible="False" />
                                            <asp:BoundField DataField="Course" HeaderText="Course" NullDisplayText=" " />
                                            <asp:BoundField DataField="Institute" HeaderText="Institute/ School" NullDisplayText=" " />
                                            <asp:BoundField DataField="YearOfAward" HeaderText="Year Of Award" NullDisplayText=" " />
                                            <asp:BoundField DataField="ValidityTill" HeaderText="Validity Till" NullDisplayText=" " />
                                            <asp:BoundField DataField="OverallCourseRating" HeaderText="Overall Course Rating" NullDisplayText=" " />
                                            <asp:BoundField DataField="Score" HeaderText="GPA/ Score" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject1" HeaderText="Subject1" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level1" HeaderText="Level1" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject2" HeaderText="Subject2" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level2" HeaderText="Level2" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject3" HeaderText="Subject3" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level3" HeaderText="Level3" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject4" HeaderText="Subject4" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level4" HeaderText="Level4" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject5" HeaderText="Subject5" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level5" HeaderText="Level5" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject6" HeaderText="Subject6" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level6" HeaderText="Level6" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject7" HeaderText="Subject7" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level7" HeaderText="Level7" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject8" HeaderText="Subject8" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level8" HeaderText="Level8" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject9" HeaderText="Subject9" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level9" HeaderText="Level9" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subject10" HeaderText="Subject10" Visible="False" NullDisplayText=" " />
                                            <asp:BoundField DataField="Level10" HeaderText="Level10" Visible="False" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button5" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button6" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlQualification" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnQualification">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="QualifiRowIndex" runat="server" />
                                    <asp:HiddenField ID="QualifiTableID" runat="server" />
                                    <asp:HiddenField ID="QualifiDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Skills</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Skills</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Skill Category<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSkillCategory" runat="server" Width="200"></asp:DropDownList>
                                        <label>Skill Name</label>
                                        <%--<asp:TextBox ID="txtSkillName" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtSkillName" runat="server" rows="5" cols="25"></textarea>
                                        <label>Skill Description</label>
                                        <%--<asp:TextBox ID="txtSkillDescription" runat="server"></asp:TextBox><br />--%>
                                        <textarea id="txtSkillDescription" runat="server" rows="5" cols="71"></textarea>
                                        <br />
                                        <asp:Button ID="bttnSkillAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnSkillAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Years of Experience<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtYearsofExperience" runat="server"></asp:TextBox>
                                        <label>Skill Grade<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSkillGrade" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdSkills" runat="server" DataKeyNames="SkillCategoryID,SkillGradeID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdSkills_RowDeleting" OnRowCommand="grdSkills_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="SkillCategory" HeaderText="Skill Category" NullDisplayText=" " />
                                            <asp:BoundField DataField="SkillCategoryID" HeaderText="SkillCategoryID" Visible="False" />
                                            <asp:BoundField DataField="SkillName" HeaderText="Skill Name" NullDisplayText=" " />
                                            <asp:BoundField DataField="Description" HeaderText="Description" NullDisplayText=" " />
                                            <asp:BoundField DataField="YearsOfExperience" HeaderText="Years Of Experience" NullDisplayText=" " />
                                            <asp:BoundField DataField="SkillGrade" HeaderText="Skill Grade" NullDisplayText=" " />
                                            <asp:BoundField DataField="SkillGradeID" HeaderText="SkillGradeID" Visible="False" />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button7" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button8" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlSkills" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnSkills">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="SkillsRowIndex" runat="server" />
                                    <asp:HiddenField ID="SkillsTableID" runat="server" />
                                    <asp:HiddenField ID="SkillsDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Special Needs</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel5" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Special Needs</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Special Need Description</label>
                                        <asp:TextBox ID="txtIllnessName" runat="server"></asp:TextBox>
                                        <label>Duration From</label>
                                        <input type="date" id="txtIllDurationFrom" runat="server" name="txtIllDurationFrom" style="width: 200px;" />
                                        <label>Duration To</label>
                                        <input type="date" id="txtIllDurationTo" runat="server" name="txtIllDurationTo" style="width: 200px" /><br />
                                        <asp:Button ID="bttnIllnessAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnIllnessAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Hospitalized yes/ no</label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkHospitalized" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>
                                        <label>Permenant yes/ no</label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkPermenant" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="span4">
                                        <label>Comments</label>
                                        <%--<asp:TextBox ID="txtCommentsIllness" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtCommentsIllness" runat="server" rows="3" cols="25"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdIllness" runat="server" Width="100%" DataKeyNames="TableID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdIllness_RowDeleting" OnRowCommand="grdIllness_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="Illness" HeaderText="Illness" NullDisplayText=" " />
                                            <asp:BoundField DataField="DurationFrom" HeaderText="Duration From" NullDisplayText=" " />
                                            <asp:BoundField DataField="DurationTo" HeaderText="Duration To" NullDisplayText=" " />
                                            <asp:BoundField DataField="Hospitalized" HeaderText="Hospitalized" NullDisplayText=" " />
                                            <asp:BoundField DataField="Permenant" HeaderText="Permenant" NullDisplayText=" " />
                                            <asp:BoundField DataField="Comments" HeaderText="Comments" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button9" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button10" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlIllness" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnIllness">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="IllnessRowIndex" runat="server" />
                                    <asp:HiddenField ID="IllnessTableID" runat="server" />
                                    <asp:HiddenField ID="IllnessDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Membership</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel6" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Membership</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Membership Name</label>
                                        <asp:TextBox ID="txtMembershipNo" runat="server" Width="225"></asp:TextBox>
                                        <label>Professional or Social<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpProfessionalNot" runat="server" Width="225"></asp:DropDownList>
                                        <label>Professional Body</label>
                                        <asp:TextBox ID="txtProfessionalBody" runat="server" Width="225"></asp:TextBox>
                                        <label>Membership Type<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpMembershipType" runat="server" Width="225"></asp:DropDownList><br />
                                        <asp:Button ID="bttnMembershipAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnMembershipAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Date Aquired</label>
                                        <input type="date" id="txtMDateAquired" runat="server" name="txtMDateAquired" style="width: 200px;" />
                                        <label>Date of Expiery</label>
                                        <input type="date" id="txtMExpieryDate" runat="server" name="txtMExpieryDate" style="width: 200px;" />
                                        <label>Subscription<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpSubscription" runat="server" Width="200"></asp:DropDownList>
                                        <label>Subscription Amount<sup class="fg-red">*</sup></label>
                                        <asp:TextBox ID="txtSubscriptionAmount" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="span4">
                                        <label>Currency</label>
                                        <asp:TextBox ID="txtCurrency" runat="server"></asp:TextBox>
                                        <label>Company Contribution</label>
                                        <asp:TextBox ID="txtCompanyContribution" runat="server"></asp:TextBox>
                                        <label>Comments</label>
                                        <%--<asp:TextBox ID="txtCommentsMembership" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtCommentsMembership" runat="server" rows="3" cols="25"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdMembership" runat="server" DataKeyNames="ProfessionalOrSocialID,MembershipTypeID,SubscriptionID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" GridLines="Vertical" OnRowDeleting="grdMembership_RowDeleting" OnRowCommand="grdMembership_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="MembershipNo" HeaderText="Membership No" NullDisplayText=" " />
                                            <asp:BoundField DataField="ProfessionalOrSocial" HeaderText="Professional/ Social" NullDisplayText=" " />
                                            <asp:BoundField DataField="ProfessionalOrSocialID" HeaderText="ProfessionalOrSocialID" Visible="False" />
                                            <asp:BoundField DataField="ProfessionalBody" HeaderText="Professional Body" NullDisplayText=" " />
                                            <asp:BoundField DataField="MembershipType" HeaderText="Membership Type" NullDisplayText=" " />
                                            <asp:BoundField DataField="MembershipTypeID" HeaderText="MembershipTypeID" Visible="False" />
                                            <asp:BoundField DataField="DateAquired" HeaderText="Date Aquired" NullDisplayText=" " />
                                            <asp:BoundField DataField="DateOfExpiery" HeaderText="Date Of Expiery" NullDisplayText=" " />
                                            <asp:BoundField DataField="Subscription" HeaderText="Subscription" NullDisplayText=" " />
                                            <asp:BoundField DataField="SubscriptionID" HeaderText="SubscriptionID" Visible="False" />
                                            <asp:BoundField DataField="SubscriptionAmount" HeaderText="Subscription Amount" NullDisplayText=" " />
                                            <asp:BoundField DataField="Currency" HeaderText="Currency" NullDisplayText=" " />
                                            <asp:BoundField DataField="CompanyContribution" HeaderText="Company Contribution" NullDisplayText=" " />
                                            <asp:BoundField DataField="Comments" HeaderText="Comments" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button11" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button12" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlMembership" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnMembership">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="MembershipRowIndex" runat="server" />
                                    <asp:HiddenField ID="MembershipTableID" runat="server" />
                                    <asp:HiddenField ID="MembershipDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Documents</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel7" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Documents</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Document Type<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpDocumentType" runat="server" Width="200"></asp:DropDownList>
                                        <label>Document No</label>
                                        <asp:TextBox ID="txtDocumentNo" runat="server"></asp:TextBox>
                                        <label>Issued By</label>
                                        <asp:TextBox ID="txtIssuedBy" runat="server"></asp:TextBox><br />
                                        <asp:Button ID="bttnDocumentAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnDocumentAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Issued Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtDocumentIssuedDate" runat="server" name="txtDocumentIssuedDate" style="Width: 200px;" />
                                        <label>Expiery Date</label>
                                        <input type="date" id="txtDocumentExpieryDate" runat="server" name="txtDocumentExpieryDate" style="Width: 200px;" />
                                        <%--<label>Upload Document</label>
                                    <asp:FileUpload ID="DocumentUpload" runat="server" />--%>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdDocuments" runat="server" DataKeyNames="DocumentTypeID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdDocuments_RowDeleting" OnRowCommand="grdDocuments_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="DocumentType" HeaderText="Document Type" NullDisplayText=" " />
                                            <asp:BoundField DataField="DocumentTypeID" HeaderText="DocumentTypeID" Visible="False" />
                                            <asp:BoundField DataField="DocumentNumber" HeaderText="Document No" NullDisplayText=" " />
                                            <asp:BoundField DataField="IssuedBy" HeaderText="Issued By" NullDisplayText=" " />
                                            <asp:BoundField DataField="IssuedDate" HeaderText="Issued Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="ExpieryDate" HeaderText="Expiery Date" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button13" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button14" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlDocuments" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnDocuments">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="DocumentsRowIndex" runat="server" />
                                    <asp:HiddenField ID="DocumentsTableID" runat="server" />
                                    <asp:HiddenField ID="DocumentsDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Assets</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel9" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Assets</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Asset Category<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpAssetCategory" runat="server" Width="200"></asp:DropDownList>
                                        <label>Description</label>
                                        <%--<asp:TextBox ID="txtAssetDescription" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtAssetDescription" runat="server" rows="3" cols="25"></textarea>
                                        <label>Issued Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtAIssuedDate" runat="server" name="txtAIssuedDate" style="Width: 200px;" />
                                        <label>Return Date</label>
                                        <input type="date" id="txtAReturnDate" runat="server" name="txtAReturnDate" style="Width: 200px;" /><br />
                                        <asp:Button ID="bttnAssetAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnAssetAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Renew Date</label>
                                        <input type="date" id="txtARenewDate" runat="server" name="txtARenewDate" style="Width: 200px;" />
                                        <label>Remarks</label>
                                        <%--<asp:TextBox ID="txtremarksAsset" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtremarksAsset" runat="server" rows="3" cols="25"></textarea>
                                        <label>Return Status</label>
                                        <%--<asp:TextBox ID="txtReturnStatus" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtReturnStatus" runat="server" rows="3" cols="25"></textarea>
                                    </div>
                                    <div class="span4">
                                        <label>Service Date</label>
                                        <input type="date" id="txtAServiceDate" runat="server" name="txtAServiceDate" style="Width: 200px;" />
                                        <label>Next Service Date</label>
                                        <input type="date" id="txtANextServiceDate" runat="server" name="txtANextServiceDate" style="Width: 200px;" />
                                        <label>Value</label>
                                        <asp:TextBox ID="txtValueAsset" runat="server"></asp:TextBox>
                                        <label>Serial No</label>
                                        <asp:TextBox ID="txtASerialNo" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdAssets" runat="server" DataKeyNames="AssetCategoryID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdAssets_RowDeleting" OnRowCommand="grdAssets_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="AssetCategory" HeaderText="Asset Category" NullDisplayText=" " />
                                            <asp:BoundField DataField="AssetCategoryID" HeaderText="AssetCategoryID" Visible="False" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" NullDisplayText=" " />
                                            <asp:BoundField DataField="IssuedDate" HeaderText="Issued Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="RenewDate" HeaderText="Renew Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" NullDisplayText=" " />
                                            <asp:BoundField DataField="ReturnStatus" HeaderText="Return Status" NullDisplayText=" " />
                                            <asp:BoundField DataField="ServiceDate" HeaderText="Service Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="NextServiceDate" HeaderText="Next Service Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="Value" HeaderText="Value" NullDisplayText=" " />
                                            <asp:BoundField DataField="SerialNo" HeaderText="Serial No" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button15" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button16" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlAsset" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnAssets">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="AssetRowIndex" runat="server" />
                                    <asp:HiddenField ID="AssetTableID" runat="server" />
                                    <asp:HiddenField ID="AssetDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Benefits</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel10" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Benefits</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Benefits Category<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpBenifitCategory" runat="server" Width="200"></asp:DropDownList>
                                        <label>Description</label>
                                        <%--<asp:TextBox ID="txtDescriptionBenefits" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtDescriptionBenefits" runat="server" rows="3" cols="25"></textarea>
                                        <label>Issued Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtBIssuedDate" runat="server" name="txtBIssuedDate" style="width: 200px;" /><br />
                                        <asp:Button ID="bttnBenefitAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnBenefitAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Return Date</label>
                                        <input type="date" id="txtBReturnDate" runat="server" name="txtBReturnDate" style="width: 200px;" />
                                        <label>Renew Date</label>
                                        <input type="date" id="txtBRenewDate" runat="server" name="txtBRenewDate" style="width: 200px;" />
                                        <label>Remarks</label>
                                        <%--<asp:TextBox ID="txtRemarksBenefits" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtRemarksBenefits" runat="server" rows="3" cols="25"></textarea>
                                    </div>
                                    <div class="span4">
                                        <label>Return Status</label>
                                        <%--<asp:TextBox ID="txtReturnStatusBenefits" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtReturnStatusBenefits" runat="server" rows="3" cols="25"></textarea>
                                        <label>Is Tax Payable</label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkIsTaxPayableBenefits" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>
                                        <label>Value</label>
                                        <asp:TextBox ID="txtValueBenefits" runat="server"></asp:TextBox>
                                        <label>Serial No</label>
                                        <asp:TextBox ID="txtBSerialNo" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdBenefits" runat="server" DataKeyNames="BenefitCategoryID,TableID" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdBenefits_RowDeleting" OnRowCommand="grdBenefits_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="BenefitCategory" HeaderText="Benefit Category" NullDisplayText=" " />
                                            <asp:BoundField DataField="BenefitCategoryID" HeaderText="BenefitCategoryID" Visible="False" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" NullDisplayText=" " />
                                            <asp:BoundField DataField="IssuedDate" HeaderText="Issued Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="RenewDate" HeaderText="Renew Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" NullDisplayText=" " />
                                            <asp:BoundField DataField="ReturnStatus" HeaderText="Return Status" NullDisplayText=" " />
                                            <asp:BoundField DataField="IsTaxPayble" HeaderText="IsTax Payble" NullDisplayText=" " />
                                            <asp:BoundField DataField="Value" HeaderText="Value" NullDisplayText=" " />
                                            <asp:BoundField DataField="SerialNo" HeaderText="Serial No" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button17" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button18" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlBenefits" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnBenefits">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="BenefitRowIndex" runat="server" />
                                    <asp:HiddenField ID="BenefitTableID" runat="server" />
                                    <asp:HiddenField ID="BenefitDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Dicipline</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel11" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Dicipline</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Legal Matter</label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkDLegalMatter" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>

                                        <label>Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtDDate" runat="server" name="txtDDate" style="width: 200px;" />
                                        <br />
                                        <br />
                                        <label>Description</label>
                                        <%--<asp:TextBox ID="txtDDescription" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtDDescription" runat="server" rows="5" cols="71"></textarea>
                                        <label>Remarks</label>
                                        <%--<asp:TextBox ID="txtDRemarks" runat="server"></asp:TextBox>--%>
                                        <textarea id="txtDRemarks" runat="server" rows="5" cols="71"></textarea>
                                        <br />
                                        <asp:Button ID="bttnDiciplineAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnDiciplineAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Outcome</label>
                                        <asp:TextBox ID="txtDOutcome" runat="server"></asp:TextBox>
                                        <label>Venue</label>
                                        <asp:TextBox ID="txtDVenue" runat="server"></asp:TextBox>

                                        <label>Attach Documents</label>
                                        <div class="input-control switch">
                                            <label>
                                                <input id="chkDAttachDocs" runat="server" type="checkbox" />
                                                <span class="check"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdDicipline" runat="server" Width="100%" DataKeyNames="TableID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdDicipline_RowDeleting" OnRowCommand="grdDicipline_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="LegalMatter" HeaderText="Legal Matter" NullDisplayText=" " />
                                            <asp:BoundField DataField="Description" HeaderText="Description" NullDisplayText=" " />
                                            <asp:BoundField DataField="Date" HeaderText="Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="Outcome" HeaderText="Outcome" NullDisplayText=" " />
                                            <asp:BoundField DataField="Venue" HeaderText="Venue" NullDisplayText=" " />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" NullDisplayText=" " />
                                            <asp:BoundField DataField="AttachDocuments" HeaderText="Attach Documents" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button19" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button20" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlDicipline" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnDicipline">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="DiciplineRowIndex" runat="server" />
                                    <asp:HiddenField ID="DiciplineTableID" runat="server" />
                                    <asp:HiddenField ID="DiciplineDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Transfer</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel12" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Transfer</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Transfer Date<sup class="fg-red">*</sup></label>
                                        <input type="date" id="txtTransferDate" runat="server" name="txtTransferDate" style="width: 200px;" /><br />
                                        <label>Old Designation</label>
                                        <asp:TextBox ID="txtOldDesignation" runat="server"></asp:TextBox>
                                        <label>New Designation</label>
                                        <asp:TextBox ID="txtNewDesignation" runat="server"></asp:TextBox>
                                        <label>Comments</label>
                                        <%--<asp:TextBox ID="txtTComments" runat="server"></asp:TextBox><br />--%>
                                        <textarea id="txtTComments" runat="server" rows="3" cols="25"></textarea><br />
                                        <asp:Button ID="bttnTransferAdd" runat="server" Text="Add" CssClass="warning small" OnClick="bttnTransferAdd_click" />
                                    </div>
                                    <div class="span4">
                                        <label>Old Company<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpOldCompany" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpOldCompany_SelectedIndexChanged"></asp:DropDownList>
                                        <label>Old Division<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpOldDivision" runat="server" Width="200"></asp:DropDownList>
                                        <label>New Company<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpNewCompany" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpNewCompany_SelectedIndexChanged"></asp:DropDownList>
                                        <label>New Division<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpNewDivision" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                    <div class="span3">
                                        <label>Recommended By</label>
                                        <asp:TextBox ID="txtRecommendedBy" runat="server"></asp:TextBox>
                                        <label>Approved By</label>
                                        <asp:TextBox ID="txtApprovedBy" runat="server"></asp:TextBox>
                                        <label>Effective Date</label>
                                        <input type="date" id="txtEffectiveDate" runat="server" name="txtEffectiveDate" style="width: 200px;" /><br />
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdTransfer" runat="server" Width="100%" DataKeyNames="OldCompanyID,OldDivisionID,NewCompanyID,NewDivisionID,TableID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdTransfer_RowDeleting" OnRowCommand="grdTransfer_RowSelecting">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="TransferDate" HeaderText="Transfer Date" NullDisplayText=" " />
                                            <asp:BoundField DataField="OldDesignation" HeaderText="Old Designation" NullDisplayText=" " />
                                            <asp:BoundField DataField="NewDesignation" HeaderText="New Designation" NullDisplayText=" " />
                                            <asp:BoundField DataField="OldCompanyID" HeaderText="OldCompanyID" Visible="false" NullDisplayText=" " />
                                            <asp:BoundField DataField="OldCompany" HeaderText="Old Company" NullDisplayText=" " />
                                            <asp:BoundField DataField="OldDivisionID" HeaderText="OldDivisionID" Visible="false" NullDisplayText=" " />
                                            <asp:BoundField DataField="OldDivision" HeaderText="Old Division" NullDisplayText=" " />
                                            <asp:BoundField DataField="NewCompanyID" HeaderText="NewCompanyID" Visible="false" NullDisplayText=" " />
                                            <asp:BoundField DataField="NewCompany" HeaderText="New Company" NullDisplayText=" " />
                                            <asp:BoundField DataField="NewDivisionID" HeaderText="NewDivisionID" Visible="false" NullDisplayText=" " />
                                            <asp:BoundField DataField="NewDivision" HeaderText="New Division" NullDisplayText=" " />
                                            <asp:BoundField DataField="Comments" HeaderText="Comments" NullDisplayText=" " />
                                            <asp:BoundField DataField="RecommendedBy" HeaderText="Recommended By" NullDisplayText=" " />
                                            <asp:BoundField DataField="ApprovedBy" HeaderText="Approved By" NullDisplayText=" " />
                                            <asp:BoundField DataField="EffectiveDate" HeaderText="Effective Date" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button21" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="Button22" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="pnlTransfer" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnDicipline">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="TransferRowIndex" runat="server" />
                                    <asp:HiddenField ID="TransferTableID" runat="server" />
                                    <asp:HiddenField ID="TransferDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Body Measurements</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel14" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Body Measurements</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Measure Area<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpBodyMeasurement" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="warning small" OnClick="bttnBodyMeasureAdd_click" />
                                        <%--OnClick="bttnDiciplineAdd_click"--%>
                                        <label>Note : Please press add button to proceed<sup class="fg-red">*</sup></label>
                                    </div>
                                    <div class="span4">
                                        <label>Unit of Measure<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpUnitOFBodyMeasure" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <label>Quantity</label>
                                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdBodyMeasurement" runat="server" Width="100%" DataKeyNames="TableID,MeasureAreaID,UnitOFBodyMeasureID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdBodyMeasurements_RowDeleting" OnRowCommand="grdBodyMeasure_RowSelecting">
                                        <%--OnRowDeleting="grdDicipline_RowDeleting" OnRowCommand="grdDicipline_RowSelecting"--%>
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="MeasureAreaID" HeaderText="MeasureAreaID" Visible="false" NullDisplayText=" " />
                                            <asp:BoundField DataField="MeasureArea" HeaderText="Measure Area" NullDisplayText=" " />
                                            <asp:BoundField DataField="UnitOFBodyMeasureID" HeaderText="UnitOFBodyMeasureID" Visible="false" NullDisplayText=" " />
                                            <asp:BoundField DataField="UnitOFBodyMeasure" HeaderText="UnitOFBodyMeasure" NullDisplayText=" " />
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" NullDisplayText=" " ItemStyle-HorizontalAlign="Right" />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                                <ItemTemplate>
                                                    <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="" />
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
                                    <asp:Panel ID="pnlBodyM" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                      
                                    <asp:HiddenField ID="BodyMRowIndex" runat="server" />
                                    <asp:HiddenField ID="BodyMTableID" runat="server" />
                                    <asp:HiddenField ID="BodyMDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Wellness Details</a>
                <div class="content">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel15" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <legend>
                                        <h3>Employee Wellness Measurements</h3>
                                    </legend>
                                    <div class="span4">
                                        <label>Test Name<sup class="fg-red">*</sup></label>
                                        <asp:DropDownList ID="drpWellness" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList></br>
                                        <label>Test Date</label>
                                        <input type="date" id="txtTestDate" runat="server" name="txtTestDate" style="width: 200px;" /><br />
                                        <label>Result</label>
                                        <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>

                                        <br />
                                        <asp:Button ID="Button2" runat="server" Text="Add" CssClass="warning small" OnClick="bttnWellnessAdd_click" />
                                        <%--OnClick="bttnTransferAdd_click"--%>
                                        <label>Note : Please press add button to proceed</label>
                                    </div>
                                    <div class="span4">
                                        <label>Flag</label>
                                        <asp:TextBox ID="txtFlag" runat="server"></asp:TextBox>
                                        <label>Reference Value</label>
                                        <asp:TextBox ID="txtReferenceValue" runat="server"></asp:TextBox>
                                        <label>Remarks</label>
                                        <%--<asp:TextBox ID="txtTComments" runat="server"></asp:TextBox><br />--%>
                                        <textarea id="txtRemarks1" runat="server" rows="3" cols="25"></textarea><br />
                                    </div>

                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdWellness" runat="server" Width="100%" DataKeyNames="WellnessTypeID,TableID" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" OnRowDeleting="grdWellness_RowDeleting" OnRowCommand="grdWellness_RowSelecting">
                                        <%--  OnRowDeleting="grdWellness_RowDeleting" OnRowCommand="grdWellness_RowSelecting"--%>
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="DateOfTest" HeaderText="Date Of Test" NullDisplayText=" " />
                                            <asp:BoundField DataField="WellnessTypeID" HeaderText="WellnessTypeID" NullDisplayText=" " Visible="false" />
                                            <asp:BoundField DataField="WellnessType" HeaderText="Wellness Type" NullDisplayText=" " />
                                            <asp:BoundField DataField="Result" HeaderText="Result" NullDisplayText=" " />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" NullDisplayText=" " />
                                            <asp:BoundField DataField="Flag" HeaderText="Flag" NullDisplayText=" " />
                                            <asp:BoundField DataField="ReferenceValue" HeaderText="Reference Value" NullDisplayText=" " />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="TableID" HeaderText="TableID" Visible="False" />
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
                                    <asp:Panel ID="Panel2" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    &nbsp;&nbsp;&nbsp;
                                <%--<button class="shortcut primary" runat="server" id="bttnDicipline">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>--%>
                                    <asp:HiddenField ID="WellnessRowIndex" runat="server" />
                                    <asp:HiddenField ID="WellnessTableID" runat="server" />
                                    <asp:HiddenField ID="WellnessDeletedID" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i>Reporting Hierarchy</a>

                <div class="content">
                    <asp:GridView ID="grdHierarchy1" runat="server" AutoGenerateColumns="False" Width="100%" BorderWidth="1px" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField />
                            <asp:BoundField DataField="LevelNo" HeaderText="Level No" />
                            <asp:BoundField DataField="LevelName" HeaderText="Level Name" />
                            <asp:BoundField DataField="NameWithInitials" HeaderText="Supervisor Name" />
                            <asp:BoundField DataField="ServiceType" HeaderText="Service Type" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Left" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>

                <div class="content">
                    <asp:GridView ID="grdHierarchy" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" BorderWidth="1px" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField ControlStyle-CssClass="none">
                                <ItemStyle Width="39px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ControlStyle-CssClass="LevelNo" DataField="LevelNo" HeaderText="Level No">
                                <ItemStyle Width="150px" HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ControlStyle-CssClass="LevelName" DataField="LevelName" HeaderText="Level Name">
                                <ItemStyle Width="268px" HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ControlStyle-CssClass="NameWithInitials" DataField="NameWithInitials" HeaderText="Supervisor Name">
                                <ItemStyle Width="395px" HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ServiceType" HeaderText="Service Type" />
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

            <%--<div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Attendance Rules</a>
                    <div class="content">
                        <div class="grid">
                            <div class="row">
                                <legend>
                                    <h3>Attendance Rules</h3>
                                </legend>
                                <div class="span4">
                                    <label>Check By TimeZone</label>
                                    <div class="input-control switch">
                                        <label>
                                            <input id="chkCheckbyTimezine" runat="server" type="checkbox" />
                                            <span class="check"></span>
                                        </label>
                                    </div>
                                    <label>CheckIn IsMust</label>
                                    <div class="input-control switch">
                                        <label>
                                            <input id="chkCheckInMust" runat="server" type="checkbox" />
                                            <span class="check"></span>
                                        </label>
                                    </div>
                                    <label>CheckOut IsMust</label>
                                    <div class="input-control switch">
                                        <label>
                                            <input id="chkCheckOutMust" runat="server" type="checkbox" />
                                            <span class="check"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="span4">
                                    <label>Allow Temporary Shifts</label>
                                    <div class="input-control switch">
                                        <label>
                                            <input id="chkAllowTemporaryShifts" runat="server" type="checkbox" />
                                            <span class="check"></span>
                                        </label>
                                    </div>
                                    <label>Allow Flexy Attendance</label>
                                    <div class="input-control switch">
                                        <label>
                                            <input id="chkAllowFlexyAttendance" runat="server" type="checkbox" />
                                            <span class="check"></span>
                                        </label>
                                    </div>
                                    <label>OT Applicable</label>
                                    <div class="input-control switch">
                                        <label>
                                            <input id="chkOTApplicable" runat="server" type="checkbox" />
                                            <span class="check"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="span4">
                                    <label>Attendance Group</label>
                                    <asp:TextBox ID="txtAttendanceGroupRules" runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="row">
                                <asp:Panel ID="pnlAttendanceRules" runat="server"></asp:Panel>
                            </div>
                            <div class="row">&nbsp;&nbsp;&nbsp;
                                 <button class="shortcut primary" runat="server" id="bttnAttendanceRules">
                                    <i class="icon-cloud-2"></i>
                                    Save</button>
                            </div>
                        </div>
                    </div>
                </div>--%>
        </div>

    </div>
    <asp:HiddenField ID="hiddenEmpID" runat="server" />
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>

</asp:Content>
