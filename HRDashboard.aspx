<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HRDashboard.aspx.cs" Inherits="Smarter_HRIS.HRDashboard1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="grid">
            <asp:Panel ID="pnlHR" runat="server">
                <div class="row">
                    <%--<asp:Label ID="lblDownloadSpeed" runat="server"></asp:Label>--%>
                    <div class="tile-group six">
                        <asp:HiddenField ID="lblUserID" runat="server" />
                        <div class="tile-group-title fg-black">HR</div>

                        <%--<a class="tile double double-vertical bg-cobalt" data-click="transform" href="AddEmployee.aspx" runat ="server" id="Add_Employee">
                        <div class="tile-content icon">
                            <span class="icon-user-3"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Manage Employee</div>
                        </div>
                    </a>--%>

                        <a class="tile double double-vertical bg-cobalt" data-click="transform" href="ManageEmployee.aspx" runat="server" id="Manage_Employee">
                            <div class="tile-content icon">
                                <span class="icon-user-3"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Manage Employee</div>
                            </div>
                        </a>
                        <%-- new version --%>
                        <a class="tile double bg-darkGreen" data-click="transform" href="MenuEnterprise.aspx" runat="server" id="Menu_Enterprise">
                            <div class="tile-content icon">
                                <span class="icon-cube"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Enterprise</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-red" data-click="transform" href="MenuAttendance.aspx" runat="server" id="Menu_Attendance">
                            <div class="tile-content icon">
                                <span class="icon-clock"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Attendance Management</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-orange" data-click="transform" href="MenuSalary.aspx" runat="server" id="Menu_Salary">
                            <div class="tile-content icon">
                                <span class="icon-dollar-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Salary Processing</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-cyan" data-click="transform" href="<%= System.Web.Configuration.WebConfigurationManager.AppSettings["ReportURL"] %>">
                            <div class="tile-content icon">
                                <span class="icon-bars"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Report Portal</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-darkIndigo" data-click="transform" href="MenuPerformance.aspx" runat="server" id="Menu_Performance">
                            <div class="tile-content icon">
                                <span class="icon-meter-fast"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Performance Management</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-lightOlive" data-click="transform" runat="server" href="MenuTraining.aspx" id="Menu_Training">
                            <div class="tile-content icon">
                                <span class="icon-plus"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Training</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-olive" data-click="transform" href="MenuRecruitment.aspx" runat="server" id="Menu_Recruitment">
                            <div class="tile-content icon">
                                <span class="icon-user"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Recruitment</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile double bg-darkCyan" data-click="transform" href="#" runat="server" id="Menu_Value_Added_Services">
                            <div class="tile-content icon">
                                <span class="icon-trophy"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Value Added Services</div>
                            </div>
                            <div class="brand">
                                <div class="label text-right">
                                    <h3 class="no-margin fg-white"><span class="icon-arrow-down-3"></span></h3>
                                </div>
                            </div>
                        </a>

                        <a class="tile triple bg-amber" data-click="transform" href="Portal.aspx" runat="server" id="Menu_Self_Service_Portal">
                            <div class="tile-content icon">
                                <span class="icon-smiley"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Self Service Portal</div>
                            </div>
                        </a>

                        <a class="tile bg-emerald" data-click="transform" href="DashboardLogin.aspx" runat="server" id="Menu_Dashboard">
                            <div class="tile-content icon">
                                <span class="icon-dashboard"></span>
                            </div>
                            <div class="brand">
                                <div class="label">Dashboard</div>
                            </div>
                        </a>

                        <%-- old version --%>
                        <a class="tile double bg-red" data-click="transform" href="EmpAssignToGroup.aspx" runat="server" id="Menu_EmpAssignToGroup">
                            <div class="tile-content icon">
                                <span class="icon-download"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Assign To Group</div>
                            </div>
                        </a>

                        <a class="tile double bg-emerald" data-click="transform" href="AssignToShifts.aspx" runat="server" id="Menu_AssignToShifts">
                            <div class="tile-content icon">
                                <span class="icon-enter"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Assign To Shift</div>
                            </div>
                        </a>

                        <a class="tile double bg-amber" data-click="transform" href="AssignToRosterByDay.aspx" runat="server" id="Menu_AssignToRosterByDay">
                            <div class="tile-content icon">
                                <span class="icon-loop"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Roster Assign By Day</div>
                            </div>
                        </a>

                        <a class="tile double bg-steel" data-click="transform" href="AssignToRosterByPatern.aspx" runat="server" id="Menu_AssignToRosterByPatern">
                            <div class="tile-content icon">
                                <span class="icon-loop"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Roster Assign By Pattern</div>
                            </div>
                        </a>

                        <a class="tile double bg-green" data-click="transform" href="AssigntoHoliday.aspx" runat="server" id="Menu_AssigntoHoliday">
                            <div class="tile-content icon">
                                <span class="icon-enter"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Assign To Holiday</div>
                            </div>
                        </a>

                        <%--<a class="tile bg-cyan" data-click="transform" href="ImageUpload.aspx">
                        <div class="tile-content icon">
                            <span class="icon-image"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Image Upload</div>
                        </div>
                    </a>

                    <a class="tile bg-orange" data-click="transform" href="DocumentUpload.aspx">
                        <div class="tile-content icon">
                            <span class="icon-file"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Document Upload</div>
                        </div>
                    </a>--%>

                        <a class="tile bg-magenta" data-click="transform" href="LeaveCancelSearch.aspx" runat="server" id="Menu_LeaveCancelSearch">
                            <div class="tile-content icon">
                                <span class="icon-cancel"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Leave Cancel</div>
                            </div>
                        </a>

                        <a class="tile bg-violet" data-click="transform" href="OTApproval.aspx" runat="server" id="Menu_OTApproval">
                            <div class="tile-content icon">
                                <span class="icon-auction"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Daily OT Approvals</div>
                            </div>
                        </a>

                        <a class="tile double bg-darkCyan" data-click="transform" href="OTApprovalbySession.aspx" runat="server" id="Menu_OTApprovalbySession">
                            <div class="tile-content icon">
                                <span class="icon-auction"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">OT Approvals by Sessions</div>
                            </div>
                        </a>

                        <%--         <a class="tile bg-indigo" data-click="transform" href="RegisterUsersDashboard.aspx" runat="server" id="Menu_RegisterUsersDashboard">
                                <div class="tile-content icon">
                                    <span class="icon-plus"></span>
                                </div>
                                <div class="brand">
                                    <div class="label" style="font-size: 15px">Register Users for Dashboard</div>
                                </div>
                            </a>--%>

                        <a class="tile bg-red" data-click="transform" href="ShiftChange.aspx" runat="server" id="Menu_ShiftChange">
                            <div class="tile-content icon">
                                <span class="icon-tab"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Shift Change</div>
                            </div>
                        </a>

                        <%--  <a class="tile double bg-orange" data-click="transform" href="ReportAssignment.aspx" runat="server" id="Menu_ReportAssignment">
                                <div class="tile-content icon">
                                    <span class="icon-enter"></span>
                                </div>
                                <div class="brand">
                                    <div class="label" style="font-size: 15px">Report Assign to Users</div>
                                </div>
                            </a>--%>

                        <a class="tile double bg-cobalt" data-click="transform" href="ReportingHierarchy.aspx" runat="server" id="Menu_ReportingHierarchy">
                            <div class="tile-content icon">
                                <span class="icon-enter"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Work Flow Hierarchy</div>
                            </div>
                        </a>

                        <a class="tile bg-cyan" data-click="transform" href="MenuAttendanceSummary.aspx" runat="server" id="Menu_HRAttandanceDisplay">
                            <div class="tile-content icon">
                                <span class="icon-stats"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Attendance Summary</div>
                            </div>
                        </a>
                        <a class="tile double bg-violet" data-click="transform" href="SystemSecurityAndAdmin.aspx" runat="server" id="System_Security_AndAdmin">
                            <div class="tile-content icon">
                                <span class=" icon-blocked"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">System Security And Admin</div>
                            </div>
                        </a>
                    </div>
                    <div class="tile-group six">
                        <div class="row">
                        </div>

                    </div>

                </div>






                <div class="row">
                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Self Service Portal</div>

                        <a class="tile bg-cyan" data-click="transform" href="ImageUpload.aspx" runat="server" id="Menu_ImageUpload">
                            <div class="tile-content icon">
                                <span class="icon-image"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Image Upload</div>
                            </div>
                        </a>

                        <a class="tile bg-orange" data-click="transform" href="DocumentUpload.aspx" runat="server" id="Menu_DocumentUpload">
                            <div class="tile-content icon">
                                <span class="icon-file"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Document Upload</div>
                            </div>
                        </a>

                        <a class="tile double bg-magenta" data-click="transform" href="SupPeerSubAssign.aspx" runat="server" id="Menu_EmpSubordinates">
                            <div class="tile-content icon">
                                <span class="icon-accessibility"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Assign Covering Persons</div>
                            </div>
                        </a>

                        <a class="tile bg-green" data-click="transform" href="AssignPortalEmp.aspx" runat="server" id="Menu_AssignPortalEmp">
                            <div class="tile-content icon">
                                <span class="icon-accessibility"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Create Users : EMP Portal</div>
                            </div>
                        </a>

                        <a class="tile bg-lightRed" data-click="transform" href="EmployeeResetPassword.aspx" runat="server" id="Menu_EmployeeResetPassword">
                            <div class="tile-content icon">
                                <span class="icon-accessibility"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Reset Employee Password</div>
                            </div>
                        </a>
                        <a class="tile double bg-amber" data-click="transform" href="SelfServicePortalPWDChangeHR.aspx" runat="server" id="A1">
                            <div class="tile-content icon">
                                <span class="icon-wrench"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Self Service Portal Password Change</div>
                            </div>
                        </a>
                    </div>
                </div>
                            <div class="row">
                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Gate Pass</div>
                        <a class="tile double bg-magenta" data-click="transform" href="GatePass.aspx" runat="server" id="A3">
                            <div class="tile-content icon">
                                <span class="icon-eye"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Add Gate Pass</div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="row">
                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Reports</div>
                        <a class="tile bg-cyan" data-click="transform" href="CustomizedReport.aspx" runat="server" id="A2">
                            <div class="tile-content icon">
                                <span class="icon-filter"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Data Mining</div>
                            </div>
                        </a>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlRecruitment" runat="server">
                <div class="row">

                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Recruitment</div>

                        <a class="tile double bg-darkGreen" data-click="transform" href="CreateJobOpening.aspx" runat="server" id="Menu_CreateJobOpening">
                            <div class="tile-content icon">
                                <span class="icon-mic"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Create Job Opening</div>
                            </div>
                        </a>

                        <a class="tile double bg-darkCobalt" data-click="transform" href="RegisterCandidate.aspx" runat="server" id="Menu_RegisterCandidate">
                            <div class="tile-content icon">
                                <span class="icon-user-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Register Candidte</div>
                            </div>
                        </a>

                        <a class="tile double bg-darkViolet" data-click="transform" href="QuestionnaireSetup.aspx" runat="server" id="Menu_QuestionnaireSetup">
                            <div class="tile-content icon">
                                <span class="icon-clipboard-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                            </div>
                        </a>

                        <a class="tile double bg-darkMagenta" data-click="transform" href="ScheduleInterview.aspx" runat="server" id="Menu_ScheduleInterview">
                            <div class="tile-content icon">
                                <span class="icon-calendar"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Schedule Interview</div>
                            </div>
                        </a>

                        <a class="tile double bg-darkOrange" data-click="transform" href="ConductInterview.aspx" runat="server" id="Menu_ConductInterview">
                            <div class="tile-content icon">
                                <span class="icon-screen"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Conduct Interview</div>
                            </div>
                        </a>

                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlPerformance" runat="server">
                <div class="row">

                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Performance Evaluation</div>

                        <a class="tile bg-amber" data-click="transform" href="EvaluationSession.aspx" runat="server" id="Menu_EvaluationSession">
                            <div class="tile-content icon">
                                <span class="icon-tab"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Evaluation Session</div>
                            </div>
                        </a>

                        <a class="tile double bg-cobalt" data-click="transform" href="EvalQuestionnaireSetup.aspx" runat="server" id="Menu_EvalQuestionnaireSetup">
                            <div class="tile-content icon">
                                <span class="icon-clipboard-2"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                            </div>
                        </a>

                        <a class="tile bg-red" data-click="transform" href="EvalScheduleInterview.aspx" runat="server" id="Menu_EvalScheduleInterview">
                            <div class="tile-content icon">
                                <span class="icon-calendar"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Schedule Evaluation</div>
                            </div>
                        </a>

                        <a class="tile double bg-violet" data-click="transform" href="EvalConductEvaluation.aspx" runat="server" id="Menu_EvalConductEvaluation">
                            <div class="tile-content icon">
                                <span class="icon-screen"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Conduct Evaluation</div>
                            </div>
                        </a>

                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlTraining" runat="server">
                <div class="row">

                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Training</div>

                        <a class="tile double bg-lightOlive" data-click="transform" href="TRegisterTraining.aspx" runat="server" id="Menu_TRegisterTraining">
                            <div class="tile-content icon">
                                <span class="icon-target"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Register Training</div>
                            </div>
                        </a>

                        <%--                        <a class="tile  bg-darkIndigo" data-click="transform" href="TQuestionnaireSetup.aspx" runat="server" id="Menu_TQuestionnaireSetup">
                            <div class="tile-content icon">
                                <div class="tile-content icon">
                                    <span class="icon-clipboard-2"></span>
                                </div>
                                <div class="brand">
                                    <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                                </div>
                        </a>--%>

                        <a class="tile  bg-darkBlue" data-click="transform" href="TScheduleTraining.aspx" runat="server" id="Menu_TScheduleTraining">
                            <div class="tile-content icon">
                                <span class="icon-calendar"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Schedule Training</div>
                            </div>
                        </a>

                        <a class="tile double bg-orange" data-click="transform" href="TReviewTraining.aspx" runat="server" id="Menu_TReviewTraining">
                            <div class="tile-content icon">
                                <span class="icon-screen"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Review Training</div>
                            </div>
                        </a>

                    </div>
                </div>
            </asp:Panel>

        </div>
    </div>
</asp:Content>
