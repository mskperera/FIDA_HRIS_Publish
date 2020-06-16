<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EmployeeProfile.aspx.cs" Inherits="Smarter_HRIS.EmployeeProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>My Profile</title>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <%--<asp:GridView ID="Grid1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="608px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <asp:GridView ID="Grid2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>--%>
    </div>
        <%--<h3>Emp No</h3>
        <asp:TextBox ID="txtEmp" runat="server"></asp:TextBox>
        <h4>Name</h4>
        <asp:TextBox ID="txtfirstName" runat="server"></asp:TextBox>--%>
    <div class="container">
        <div class="grid">
            <div class="row">
                <div class="span3">
                    <asp:Image ID="Image1" runat="server" Height="200" Width="200" /><br />
                    <%--<asp:Button ID="bttnImgChange" runat="server" Text="Change Profile Picture" CssClass="info small" OnClick="bttnImgChange_Click" />--%>
                </div>
                <div class="span6">
                    <asp:Panel ID="pnlGreetings" runat="server"></asp:Panel>
                    <%--<h1>Hi, Dilnuwan</h1>
                    <h1><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></h1>--%>
                    <asp:Panel ID="pnlHeader" runat="server">
                        <label>Upload Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <asp:Button ID="bttnUpload" runat="server" Text="Upload" OnClick="bttnUpload_Click" CssClass="success" />
                    </asp:Panel>
                </div> 
            </div>
        </div>
    

    <div class="accordion with-marker" data-role="accordion" data-closeany="true">
    <div class="accordion-frame">
	<a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Employee Master</span></a>
       <div class="content">
          <div class="grid">
             <div class="row">
               <legend><h3>Personal Details</h3></legend>
                  <div class="span4">
                            <label>Emp No</label>
                            <asp:TextBox ID="txtEmp" runat="server"></asp:TextBox>
                            <label>Gender</label>
                            <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                            <label>Initials</label>
                            <asp:TextBox ID="txtInitials" runat="server"></asp:TextBox>
                            <label>First Name</label>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            <label>Middle Name</label>
                            <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
                            <label>Last Name</label>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            <label>Full Name</label>
                            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                            <%--<label>Office Use Name</label>
                            <asp:TextBox ID="txtOfficeName" runat="server"></asp:TextBox>--%>
                  </div>
                  <div class="span4">
                            <label>Office Use Name</label>
                            <asp:TextBox ID="txtOfficeName" runat="server"></asp:TextBox>
                            <label>Passport No</label>
                            <asp:TextBox ID="txtPassportNo" runat="server"></asp:TextBox>
                            <label>Date Of Birth</label>
                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                            <label>Birth Date</label>
                            <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
                            <label>Birth Month</label>
                            <asp:TextBox ID="txtBirthMonth" runat="server"></asp:TextBox>
                            <label>NIC</label>
                            <asp:TextBox ID="txtNIC" runat="server"></asp:TextBox>
                            <label>Title</label>
                            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                            <%--<asp:DropDownList ID="drpTitle" runat="server">
                            </asp:DropDownList>--%>
                            
                            <%--<asp:DropDownList ID="drpLanguage" cssclass="input-control select span2" runat="server">
                            </asp:DropDownList>--%>
                            
                            
                  </div>
                 <div class="span4">
                     <label>Language</label>
                     <asp:TextBox ID="txtLanguage"  runat="server"></asp:TextBox>
                     <label>Marital Status</label>
                     <asp:TextBox ID="txtMaritalStatus"  runat="server"></asp:TextBox>
                     <label>Nationality</label>
                     <asp:TextBox ID="txtNationality"  runat="server"></asp:TextBox>
                     <label>Race</label>
                     <asp:TextBox ID="txtRace"  runat="server"></asp:TextBox>
                     <label>Religion</label>
                     <asp:TextBox ID="txtReligion"  runat="server"></asp:TextBox>
                     <label>Blood Group</label>
                     <asp:TextBox ID="txtBloodGroup"  runat="server"></asp:TextBox>
                     <label>Distance From Work Place</label>
                     <asp:TextBox ID="txtDistanceFromWorkplace"  runat="server"></asp:TextBox>
                 </div>
                  <%--<div class="span4">
                     <asp:Button ID="bttnEdit" CssClass="button info large" runat="server" Text="Edit" OnClick="bttnEdit_Click" />
                  </div>--%>
                  
                </div>
            </div>
        </div>
        </div>
    <div class="accordion-frame">
	<a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Official Details</span></a>
       <div class="content">
          <div class="grid">
             <div class="row">
               <legend><h3>Official Details</h3></legend>
                  <div class="span4">
                            <label>Office No</label>
                            <asp:TextBox ID="txtofficeNIC" runat="server"></asp:TextBox>
                            <%--<div class="input-control text" data-role="input-control">
                            <input type="text" placeholder="put cursor" data-popover="popover" data-popover-position="right" data-popover-text="Please, input you data here" data-popover-background="bg-red" data-popover-color="fg-white" data-popover-mode="focus"/>
                            <button class="btn-clear" tabindex="-1"></button></div>--%>
                            
                            <label>Proximity Card No</label>
                            <asp:TextBox ID="txtProximity" runat="server"></asp:TextBox>
                            <label>Atendance Account No</label>
                            <asp:TextBox ID="txtattNo" runat="server"></asp:TextBox>
                      <label>Is Active Employee</label>
                      <%--<asp:TextBox ID="txtIsActive" runat="server"></asp:TextBox>--%>
                      <div class="input-control switch">
                        <label>
                            <input id="chkIsActive" runat="server" type="checkbox" />
                            <span class="check"></span>
                        </label>
                      </div>

                      <label>EPF No</label>
                      <asp:TextBox ID="txtEPFNo" runat="server"></asp:TextBox>
                      <label>ETF No</label>
                      <asp:TextBox ID="txtETFNo" runat="server"></asp:TextBox>
                      <label>Is Tax Payee</label>
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
                     <label>Job Source</label>
                     <asp:TextBox ID="txtJobSource" runat="server"></asp:TextBox>
                     <label>Man Power Company</label>
                     <asp:TextBox ID="txtManPower" runat="server"></asp:TextBox>
                     <label>Salary Process</label>
                     <div class="input-control switch">
                        <label>
                            <input id="chkSalaryProcess" runat="server" type="checkbox" />
                            <span class="check"></span>
                        </label>
                      </div>
                     <label>Salary Period</label>
                     <asp:TextBox ID="txtSalaryPeriod" runat="server"></asp:TextBox>
                     <%--<label>Basic Salary</label>
                     <asp:TextBox ID="txtBasicSalary" runat="server"></asp:TextBox>--%>
                     <label>Statute Name</label>
                     <asp:TextBox ID="txtStatute" runat="server"></asp:TextBox>
                 </div>
                 <div class="span4">
                     <label>Company Name</label>
                     <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                     <label>Division Name</label>
                     <asp:TextBox ID="txtDivisionName" runat="server"></asp:TextBox>
                     <label>Sub Division Name</label>
                     <asp:TextBox ID="txtSubDivision" runat="server"></asp:TextBox>
                     <label>Department Name</label>
                     <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                     <label>Sub Department Name</label>
                     <asp:TextBox ID="txtSubDepartment" runat="server"></asp:TextBox>
                     <label>Section Name</label>
                     <asp:TextBox ID="txtSection" runat="server"></asp:TextBox>
                     <label>Sub Section Name</label>
                     <asp:TextBox ID="txtSubSection" runat="server"></asp:TextBox>
                     
                 </div>
                  </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Address Details</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Address Details</h3>
                        </legend>
                        <div class="span4">
                            <label>Contact Type</label>
                            <asp:TextBox ID="txtContactType" runat="server"></asp:TextBox>
                            <label>Address No</label>
                            <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                            <label>City</label>
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                            <label>District</label>
                            <asp:TextBox ID="txtDistrict" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Postal Code / Zip Code</label>
                            <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                            <label>Country</label>
                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                            <label>Tel No</label>
                            <asp:TextBox ID="txtTelNo" runat="server"></asp:TextBox>
                            <label>Mobile No</label>
                            <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Work Tel</label>
                            <asp:TextBox ID="txtWorkTel" runat="server"></asp:TextBox>
                            <label>Comments</label>
                            <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
                            <label>Office Email</label>
                            <asp:TextBox ID="txtOfficeEmail" runat="server"></asp:TextBox>
                            <label>Private Email</label>
                            <asp:TextBox ID="txtPrivateEmail" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Job Details</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Job Details</h3>
                        </legend>
                        <div class="span4">
                            <%--<label>Company Name</label>
                            <asp:TextBox ID="txtCompanyNameJob" runat="server"></asp:TextBox>
                            <label>Division Name</label>
                            <asp:TextBox ID="txtDivisionNameJob" runat="server"></asp:TextBox>--%>
                            <label>Designation</label>
                            <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                            <label>Join Date</label>
                            <asp:TextBox ID="txtJoinDate" runat="server"></asp:TextBox>
                            <%--<label>Resign Date</label>
                            <asp:TextBox ID="txtResignDate" runat="server"></asp:TextBox>--%>
                            <label>Date of Appoinment</label>
                            <asp:TextBox ID="txtDateofAppoinment" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Date of Confirmation</label>
                            <asp:TextBox ID="txtDateofConfirmation" runat="server"></asp:TextBox>
                            <label>Probation Period(Months)</label>
                            <asp:TextBox ID="txtProbation" runat="server"></asp:TextBox>
                            <label>Retirement Date</label>
                            <asp:TextBox ID="txtRetirementDate" runat="server"></asp:TextBox>
                            <label>Work Category</label>
                            <asp:TextBox ID="txtWorkCategory" runat="server"></asp:TextBox>
                            <label>Job Category</label>
                            <asp:TextBox ID="txtJobCategory" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Job Specification</label>
                            <asp:TextBox ID="txtJobSpecification" runat="server"></asp:TextBox>
                            <label>Reporting Supervisor</label>
                            <asp:TextBox ID="txtReportingSupervisor" runat="server"></asp:TextBox>
                            <label>Comment</label>
                            <asp:TextBox ID="txtCommentJob" runat="server"></asp:TextBox>
                            <label>Job Level</label>
                            <asp:TextBox ID="txtJobLevel" runat="server"></asp:TextBox>
                            <label>Rejoin Date</label>
                            <asp:TextBox ID="txtRejoinDate" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Emergency Details</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Emergency Details</h3>
                        </legend>
                        <div class="span4">
                            <label>Contact Person Name</label>
                            <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
                            <label>Type</label>
                            <asp:TextBox ID="txtEmergType" runat="server"></asp:TextBox>
                            <label>No</label>
                            <asp:TextBox ID="txtNo" runat="server"></asp:TextBox>
                            <label>City</label>
                            <asp:TextBox ID="txtCityEmerg" runat="server"></asp:TextBox>
                            <label>District</label>
                            <asp:TextBox ID="txtDistrictEmerg" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Postal Code / Zip Code</label>
                            <asp:TextBox ID="txtPostalCodeEmerg" runat="server"></asp:TextBox>
                            <label>Country</label>
                            <asp:TextBox ID="txtCountryEmerg" runat="server"></asp:TextBox>
                            <label>Tel No</label>
                            <asp:TextBox ID="txtTelNoEmerg" runat="server"></asp:TextBox>
                            <label>Mobile No</label>
                            <asp:TextBox ID="txtMobNoEmerg" runat="server"></asp:TextBox>
                            <label>Work Tel</label>
                            <asp:TextBox ID="txtWorkTelEmerg" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Comments</label>
                            <asp:TextBox ID="txtCommentsEmerg" runat="server"></asp:TextBox>
                            <label>Office Email</label>
                            <asp:TextBox ID="txtOfficeEmailEmerg" runat="server"></asp:TextBox>
                            <label>Private Email</label>
                            <asp:TextBox ID="txtPrivateEmailEmerg" runat="server"></asp:TextBox>
                            <label>Relationship</label>
                            <asp:TextBox ID="txtRelationship" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlEmergency" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Family Details</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Family Details</h3>
                        </legend>
                        <div class="span4">
                            <label>Family Name</label>
                            <asp:TextBox ID="txtFamilyName" runat="server"></asp:TextBox>
                            <label>Relationship</label>
                            <asp:TextBox ID="txtRelationshipFamily" runat="server"></asp:TextBox>
                            <label>Date Of Birth</label>
                            <asp:TextBox ID="txtDOBFamily" runat="server"></asp:TextBox>
                            
                        </div>
                        <div class="span4">
                            <label>Occupation</label>
                            <asp:TextBox ID="txtOccupationFamily" runat="server"></asp:TextBox>
                            <label>Eligibility For Ensurance</label>
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
                        <asp:Panel ID="pnlFamily" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Dependant Details</span></a>
            <div class="content">
                <div class="grid">
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
                            <label>Living Situation</label>
                            <asp:TextBox ID="txtLivingSituation" runat="server"></asp:TextBox>
                            
                        </div>
                        <div class="span4">
                            <label>No of Members for Insurance</label>
                            <asp:TextBox ID="txtNoofMembersforInsurance" runat="server"></asp:TextBox>
                            <label>Remarks</label>
                            <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlDependant" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Immigration</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Immigration</h3>
                        </legend>
                        <div class="span4">
                            <label>Immigration Type</label>
                            <asp:TextBox ID="txtImmigrationType" runat="server"></asp:TextBox>
                            <label>Description</label>
                            <asp:TextBox ID="txtDescriptionImmi" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Expiery Date</label>
                            <asp:TextBox ID="txtExpDateImmi" runat="server"></asp:TextBox>
                            <label>Remarks</label>
                            <asp:TextBox ID="txtRemarksImmi" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlImmigration" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Qualification</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Qualification</h3>
                        </legend>
                        <asp:Panel ID="pnlQualification" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Skills</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Skills</h3>
                        </legend>
                        <div class="span4">
                            <label>Skill Category</label>
                            <asp:TextBox ID="txtSkillCategory" runat="server"></asp:TextBox>
                            <label>Skill Name</label>
                            <asp:TextBox ID="txtSkillName" runat="server"></asp:TextBox>
                            <label>Skill Description</label>
                            <asp:TextBox ID="txtSkillDescription" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Years of Experience</label>
                            <asp:TextBox ID="txtYearsofExperience" runat="server"></asp:TextBox>
                            <label>Skill Grade</label>
                            <asp:TextBox ID="txtSkillGrade" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlSkills" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Special Needs</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Special Needs</h3>
                        </legend>
                        <div class="span4">
                            <label>Special Need Description</label>
                            <asp:TextBox ID="txtIllnessName" runat="server"></asp:TextBox>
                            <label>Duration From</label>
                            <asp:TextBox ID="txtDurationFrom" runat="server"></asp:TextBox>
                            <label>Duration To</label>
                            <asp:TextBox ID="txtDurtionTo" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Hospitalized yes/ no</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkHospitalized" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Permenant Illness yes/ no</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkPermenant" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                        </div>
                        <div class="span4">
                            <label>Comments</label>
                            <asp:TextBox ID="txtCommentsIllness" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlIllness" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Membership</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Membership</h3>
                        </legend>
                        <div class="span4">
                            <label>Membership Name</label>
                            <asp:TextBox ID="txtMembershipNo" runat="server"></asp:TextBox>
                            <label>Professional or Social</label>
                            <asp:TextBox ID="txtProfessional" runat="server"></asp:TextBox>
                            <label>Professional Body</label>
                            <asp:TextBox ID="txtProfessionalBody" runat="server"></asp:TextBox>
                            <label>Membership Type</label>
                            <asp:TextBox ID="txtMembershipType" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Date Aquired</label>
                            <asp:TextBox ID="txtDateAquired" runat="server"></asp:TextBox>
                            <label>Date of Expiery</label>
                            <asp:TextBox ID="txtDateofExpiery" runat="server"></asp:TextBox>
                            <label>Subscription</label>
                            <asp:TextBox ID="txtSubscription" runat="server"></asp:TextBox>
                            <label>Subscription Amount</label>
                            <asp:TextBox ID="txtSubscriptionAmount" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Currency</label>
                            <asp:TextBox ID="txtCurrency" runat="server"></asp:TextBox>
                            <label>Company Contribution</label>
                            <asp:TextBox ID="txtCompanyContribution" runat="server"></asp:TextBox>
                            <label>Comments</label>
                            <asp:TextBox ID="txtCommentsMembership" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlMembership" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Documents</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Documents</h3>
                        </legend>
                        <div class="span4">
                            <label>Document Type</label>
                            <asp:TextBox ID="txtDocumentType" runat="server"></asp:TextBox>
                            <label>Document No</label>
                            <asp:TextBox ID="txtDocumentNo" runat="server"></asp:TextBox>
                            <label>Issued By</label>
                            <asp:TextBox ID="txtIssuedBy" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Issued Date</label>
                            <asp:TextBox ID="txtIssuedDate" runat="server"></asp:TextBox>
                            <label>Expiery Date</label>
                            <asp:TextBox ID="txtExpieryDateDocuments" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlDocuments" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Assets</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Assets</h3>
                        </legend>
                        <div class="span4">
                            <label>Asset Category</label>
                            <asp:TextBox ID="txtAssetCategory" runat="server"></asp:TextBox>
                            <label>Description</label>
                            <asp:TextBox ID="txtAssetDescription" runat="server"></asp:TextBox>
                            <label>Issued Date</label>
                            <asp:TextBox ID="txtIssuedDateAsset" runat="server"></asp:TextBox>
                            <label>Return Date</label>
                            <asp:TextBox ID="txtReturnDateAsset" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Renew Date</label>
                            <asp:TextBox ID="txtRenewDateAsset" runat="server"></asp:TextBox>
                            <label>Remarks</label>
                            <asp:TextBox ID="txtremarksAsset" runat="server"></asp:TextBox>
                            <label>Return Status</label>
                            <asp:TextBox ID="txtReturnStatus" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Service Date</label>
                            <asp:TextBox ID="txtServiceDate" runat="server"></asp:TextBox>
                            <label>Next Service Date</label>
                            <asp:TextBox ID="txtNextServiceDate" runat="server"></asp:TextBox>
                            <label>Value</label>
                            <asp:TextBox ID="txtValueAsset" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlAsset" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i><span>Benefits</span></a>
            <div class="content">
                <div class="grid">
                    <div class="row">
                        <legend>
                            <h3>Benefits</h3>
                        </legend>
                        <div class="span4">
                            <label>Benefits Category</label>
                            <asp:TextBox ID="txtBenefitCategory" runat="server"></asp:TextBox>
                            <label>Description</label>
                            <asp:TextBox ID="txtDescriptionBenefits" runat="server"></asp:TextBox>
                            <label>Issued Date</label>
                            <asp:TextBox ID="txtIssuedDateBenefits" runat="server"></asp:TextBox>
                        </div>
                        <div class="span4">
                            <label>Return Date</label>
                            <asp:TextBox ID="txtReturnDateBenefits" runat="server"></asp:TextBox>
                            <label>Renew Date</label>
                            <asp:TextBox ID="txtRenewDateBenefits" runat="server"></asp:TextBox>
                            <label>Remarks</label>
                            <asp:TextBox ID="txtRemarksBenefits" runat="server"></asp:TextBox>
                            
                        </div>
                        <div class="span4">
                            <label>Return Status</label>
                            <asp:TextBox ID="txtReturnStatusBenefits" runat="server"></asp:TextBox>
                            <label>Is Tax Payable</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsTaxPayableBenefits" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Value</label>
                            <asp:TextBox ID="txtValueBenefits" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlBenefits" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion-frame">
            <a class="heading ribbed-cyan fg-white" href="#"><i class="icon-tag"></i><span>Attendance Rules</span></a>
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
                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                    </div>
                </div>
            </div>
        </div>

    </div>

    </div>
 
</asp:Content>
