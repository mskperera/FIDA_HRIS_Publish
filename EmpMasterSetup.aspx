<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmpMasterSetup.aspx.cs" Inherits="Smarter_HRIS.EmpMasterSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <asp:Panel ID="pnlHR" runat="server">
                <div class="row">
                    <div class="tile-group three">
                        <asp:HiddenField ID="lblUserID" runat="server" />
                        <div class="tile-group-title fg-black">Employee Master Setup</div>
                        <h4>Personal</h4>
                        <a class="tile bg-red" data-click="transform" href="EmpMasterLanguageDetails.aspx" runat="server" id="A1">
                            <div class="tile-content icon">
                                <span class="icon-comments-5"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Employee Language</div>
                            </div>
                        </a>
                        <a class="tile bg-red" data-click="transform" href="EmpMasterNationalityDetails.aspx" runat="server" id="A2">
                            <div class="tile-content icon">
                                <span class="icon-flag-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Employee Nationality</div>
                            </div>
                        </a>
                        <a class="tile bg-red" data-click="transform" href="EmpMasterRaceDetails.aspx" runat="server" id="A3">
                            <div class="tile-content icon">
                                <span class="icon-accessibility"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Employee Race</div>
                            </div>
                        </a>
                        <a class="tile bg-red" data-click="transform" href="EmpMasterReligionDetails.aspx" runat="server" id="A8">
                            <div class="tile-content icon">
                                <span class=" icon-move"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Employee Religion</div>
                            </div>
                        </a>
                        <a class="tile bg-red" data-click="transform" href="EmpMasterDistanceFromWorkPlaceDetails.aspx" runat="server" id="A9">
                            <div class="tile-content icon">
                                <span class=" icon-bus"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Distance from Workplace</div>
                            </div>
                        </a>
                        <a class="tile bg-red" data-click="transform" href="EmpMasterLivingSituationDetails.aspx" runat="server" id="A10">
                            <div class="tile-content icon">
                                <span class="icon-home"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Living Situation</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group three">
                        <h4>Contact</h4>
                        <a class="tile bg-indigo" data-click="transform" href="EmpMasterContactTypeDetails.aspx" runat="server" id="A6">
                            <div class="tile-content icon">
                                <span class="icon-phone"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Contact Type</div>
                            </div>
                        </a>
                        <a class="tile bg-indigo" data-click="transform" href="EmpMasterCityDetails.aspx" runat="server" id="A7">
                            <div class="tile-content icon">
                                <span class="icon-share-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">City</div>
                            </div>
                        </a>
                        <a class="tile bg-indigo" data-click="transform" href="EmpMasterCountryDetails.aspx" runat="server" id="A4">
                            <div class="tile-content icon">
                                <span class="icon-share-3"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Country</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="tile-group three">
                        <h4>Membership</h4>
                        <a class="tile bg-violet" data-click="transform" href="EmpMasterMembershipDetails.aspx" runat="server" id="A22">
                            <div class="tile-content icon">
                                <span class="icon-clubs"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Membership Type</div>
                            </div>
                        </a>
                        <a class="tile bg-violet" data-click="transform" href="EmpMasterMembershipGroupDetails.aspx" runat="server" id="A23">
                            <div class="tile-content icon">
                                <span class="icon-award-stroke"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Membership Group</div>
                            </div>
                        </a>
                        <a class="tile bg-violet" data-click="transform" href="EmpMasterContributionDetails.aspx" runat="server" id="A24">
                            <div class="tile-content icon">
                                <span class="icon-flip-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Contribution Type</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group three">
                        <h4>Job</h4>
                        <a class="tile bg-darkGreen" data-click="transform" href="EmpMasterCompanyDesignationDetails.aspx" runat="server" id="A14">
                            <div class="tile-content icon">
                                <span class=" icon-diary"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Company Designation</div>
                            </div>
                        </a>
                        <a class="tile bg-darkGreen" data-click="transform" href="EmpMasterWorkCategoryDetails.aspx" runat="server" id="A15">
                            <div class="tile-content icon">
                                <span class="icon-layers-alt"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Work Category</div>
                            </div>
                        </a>
                        <a class="tile bg-darkGreen" data-click="transform" href="EmpMasterJobCategoryDetails.aspx" runat="server" id="A16">
                            <div class="tile-content icon">
                                <span class="icon-support"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Job Category</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="tile-group two">
                        <h4>Skills</h4>
                        <a class="tile bg-orange" data-click="transform" href="EmpMasterSkillDetails.aspx" runat="server" id="A25">
                            <div class="tile-content icon">
                                <span class="icon-tools"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Skill Category</div>
                            </div>
                        </a>
                        <a class="tile bg-orange" data-click="transform" href="EmpMasterSkillGradeDetails.aspx" runat="server" id="A26">
                            <div class="tile-content icon">
                                <span class="icon-target"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Skill Grade</div>
                            </div>
                        </a>
                    </div>


                    <div class="tile-group two">
                        <h4>Measurements</h4>
                        <a class="tile bg-crimson" data-click="transform" href="EmpMasterBodyMeasurementTypes.aspx" runat="server" id="A17">
                            <div class="tile-content icon">
                                <span class="icon-ruler"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Body Measurements</div>
                            </div>
                        </a>
                        <a class="tile bg-crimson" data-click="transform" href="EmpWellnessMeasurements.aspx" runat="server" id="A18">
                            <div class="tile-content icon">
                                <span class="icon-stats"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Wellness Measurements</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="tile-group five">
                        <h4>Office</h4>
                        <a class="tile bg-lightBlue" data-click="transform" href="EmpMasterSourceofEmployeementDetails.aspx" runat="server" id="A5">
                            <div class="tile-content icon">
                                <span class=" icon-compass"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Source of Employement</div>
                            </div>
                        </a>
                   
                    <a class="tile bg-green" data-click="transform" href="ManPowerComapny.aspx" runat="server" id="ManPower_Comapny">
                        <div class="tile-content icon">
                            <span class="icon-user-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label fg-white">Manpower Company Registration</div>
                        </div>
                    </a>
                    <a class="tile double bg-emerald" data-click="transform" href="SalaryPaidPeriod.aspx" runat="server" id="Salary_PaidPeriod">
                        <div class="tile-content icon">
                            <span class="icon-dollar"></span>
                        </div>
                        <div class="brand">
                            <div class="label fg-white">Salary Paid Period</div>
                        </div>
                    </a>
                    <a class="tile bg-green" data-click="transform" href="StatuteRegistration.aspx" runat="server" id="Statute_Registration">
                        <div class="tile-content icon">
                            <span class="icon-copy"></span>
                        </div>
                        <div class="brand">
                            <div class="label fg-white">Statute Registration</div>
                        </div>
                    </a>
                         </div>
                </div>
                <div class="row">
                    <div class="tile-group one">
                        <h4>Immigration</h4>
                        <a class="tile bg-darkPink" data-click="transform" href="EmpMasterImmigrationDetails.aspx" runat="server" id="A13">
                            <div class="tile-content icon">
                                <span class=" icon-rocket"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Immigration</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group one">
                        <h4>Qualification</h4>
                        <a class="tile bg-darkIndigo" data-click="transform" href="EmpMasterQualificationDetails.aspx" runat="server" id="A12">
                            <div class="tile-content icon">
                                <span class="icon-book"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Qualification</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group three">
                        <h4>Emergency, Family & Dependent</h4>
                        <a class="tile bg-lightRed" data-click="transform" href="EmpMasterRelationshipDetails.aspx" runat="server" id="A11">
                            <div class="tile-content icon">
                                <span class="icon-link"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Relationship</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="tile-group one">
                        <h4>Document</h4>
                        <a class="tile bg-magenta" data-click="transform" href="EmpMasterDocumentDetails.aspx" runat="server" id="A20">
                            <div class="tile-content icon">
                                <span class="icon-attachment"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Document Type</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group one">
                        <h4>Asset</h4>
                        <a class="tile bg-lime" data-click="transform" href="EmpMasterAssetDetails.aspx" runat="server" id="A19">
                            <div class="tile-content icon">
                                <span class="icon-dollar-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Assets Category</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group one">
                        <h4>Benefit</h4>
                        <a class="tile bg-brown" data-click="transform" href="EmpMasterBenefitDetails.aspx" runat="server" id="A21">
                            <div class="tile-content icon">
                                <span class="icon-meter-fast"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Benefit</div>
                            </div>
                        </a>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
