<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuAttendance.aspx.cs" Inherits="Smarter_HRIS.MenuAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tile-group four">
            <div class="tile-group-title fg-black">Holiday</div>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="CreateHoliday.aspx" runat="server" id="Create_Holiday">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-calendar"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Holiday Registration</span>
                        <span class="email-data-text">Create Holidays</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Holiday Registration</div>
                </div>
            </a>

            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AssigntoHoliday.aspx" runat="server" id="Assignto_Holiday">
                <div class="tile-content icon">
                    <span class="icon-forward"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-forward"></span>
                        <span class="icon-user"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Assign Holidays</span>
                        <span class="email-data-text">Assign Holidays to employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Assign Holidays</div>
                </div>
            </a>
        </div>

        <%----%>

        <div class="tile-group four">
            <div class="tile-group-title fg-black">Leave</div>
            <%--<a class="tile double bg-violet live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="/HR_Admin/LeaveRegistration/Index">
            <div class="tile-content icon">
                <span class="icon-cabinet"></span>
            </div>
            <div class="tile-content email">
                <div class="email-image">
                    <span class="icon-cabinet"></span>
                </div>
                <div class="email-data">
                    <span class="email-data-title">Leave Registration</span>
                    <span class="email-data-text">Create Leaves</span>
                </div>
            </div>
            <div class="brand">
                <div class="label fg-white">Leave Registration</div>
            </div>
        </a>--%>
            <a class="tile bg-cobalt" data-click="transform" href="LeaveBalance.aspx" runat="server" id="Leave_Balance">
                <div class="tile-content icon">
                    <span class="icon-basket"></span>
                </div>
                <div class="brand">
                    <div class="label">Leave Balance</div>
                </div>
            </a>
            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="LeaveCancelSearch.aspx" runat="server" id="Leave_CancelSearch">
                <div class="tile-content icon">
                    <span class="icon-cancel"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-cancel"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Leave Cancel</span>
                        <span class="email-data-text">Cancel applied leaves of employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Leave Cancel</div>
                </div>
            </a>

            <a class="tile bg-cobalt" data-click="transform" href="LeaveApplyByHR.aspx" runat="server" id="LeaveApplyBy_HR">
                <div class="tile-content icon">
                    <span class="icon-enter"></span>
                </div>
                <div class="brand">
                    <div class="label">Leave Apply</div>
                </div>
            </a>
        </div>

        <div class="tile-group six">
            <div class="tile-group-title fg-black">Groups ,Shifts & Attendance</div>
            <a class="tile bg-cobalt" data-click="transform" href="CreateGroup.aspx" runat="server" id="Create_Group">
                <div class="tile-content icon">
                    <span class="icon-box"></span>
                </div>
                <div class="brand">
                    <div class="label">Create Group</div>
                </div>
            </a>
            <a class="double tile bg-cyan" data-click="transform" href="EmpAssignToGroup.aspx" runat="server" id="Emp_AssignToGroup">
                <div class="tile-content icon">
                    <span class="icon-box-add"></span>
                </div>
                <div class="brand">
                    <div class="label">Assign to Group</div>
                </div>
            </a>

            <a class="tile bg-cobalt" data-click="transform" href="CreateBreaks.aspx" runat="server" id="Create_Breaks">
                <div class="tile-content icon">
                    <span class="icon-chronometer"></span>
                </div>
                <div class="brand">
                    <div class="label">Create Breaks</div>
                </div>
            </a>
            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="CreateShifts.aspx" runat="server" id="Create_Shifts">
                <div class="tile-content icon">
                    <span class="icon-enter"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-enter"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Shift Details</span>
                        <span class="email-data-subtitle">Add Shift Details</span>
                        <span class="email-data-text">after creating categories</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Create Shift</div>
                </div>
            </a>
            <a class="tile double bg-cobalt" data-click="transform" href="AssignToShifts.aspx" runat="server" id="Assign_ToShifts">
                <div class="tile-content icon">
                    <span class="icon-user-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Assign To Shift</div>
                </div>
            </a>

            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AssignToRosterByDay.aspx" runat="server" id="Assign_ToRosterByDay">
                <div class="tile-content icon">
                    <span class="icon-loop"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-loop"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Roster Assign By Day</span>
                        <span class="email-data-text">Assign rosters to employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Roster Assign By Day</div>
                </div>
            </a>

            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AssignToRosterByPatern.aspx" runat="server" id="Assign_ToRosterByPatern">
                <div class="tile-content icon">
                    <span class="icon-loop"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-loop"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Roster Assign By Pattern</span>
                        <span class="email-data-text">Assign roster patterns to employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Roster Assign By Pattern</div>
                </div>
            </a>

            <a class="tile bg-cobalt live" data-click="transform" href="MenuAttendanceSummary.aspx" runat="server" id="Menu_HRAttandanceDisplay">
                <div class="tile-content icon">
                    <span class="icon-stats"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Attendance Summary</div>
                </div>
            </a>

            <%--                        <a class="tile bg-cobalt" data-click="transform" href="UnAnalyzedAttendanceData.aspx" runat="server" id="A2">
                <div class="tile-content icon">
                    <span class=" icon-zip"></span>
                </div>
                <div class="brand">
                    <div class="label">UnAnalyzed Attendance Data</div>
                </div>
            </a>--%>

            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AnalyzeEmployeeAttendance.aspx" runat="server" id="Analyze_Employee_Attendance">
                <div class="tile-content icon">
                    <span class=" icon-stats-up"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-stats-up"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Analyze Employee Attendance</span>
                        <span class="email-data-text">Analyze Employee Attendance</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Analyze Employee Attendance</div>
                </div>
            </a>

            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ManualAttendanceCancelSearch.aspx" runat="server" id="Manual_Attendance_Cancel_Search">
                <div class="tile-content icon">
                    <span class="icon-cancel"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-cancel"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Manual Attendance Cancel</span>
                        <span class="email-data-text">Manual Attendance Cancel</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Manual Attendance Cancel</div>
                </div>
            </a>

            <a class="tile bg-cyan live" data-click="transform" href="ManualAttendanceBulkUpload.aspx" runat="server" id="Manual_Attendance_Bulk_Upload">
                <div class="tile-content icon">
                    <span class="icon-folder-2"></span>
                </div>
                <div class="brand">
                    <div class="label">Manual Attendance Excel Upload</div>
                </div>
            </a>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ManualAttendanceApplyByHR.aspx" runat="server" id="ManualAttendanceApplyBy_HR">
                <div class="tile-content icon">
                    <span class="icon-share"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-share"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Manual Attendance Apply</span>
                        <span class="email-data-text">Manual Attendance Apply</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Manual Attendance Apply</div>
                </div>
            </a>
        </div>

        <div class="tile-group two">
            <div class="tile-group-title fg-black">OT</div>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="OTApproval.aspx" runat="server" id="OT_Approval">
                <div class="tile-content icon">
                    <span class="icon-stats"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-stats"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Daily OT Approvals</span>
                        <span class="email-data-text">Process daily OT for employees</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Daily OT Approvals</div>
                </div>
            </a>
            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="OTApprovalbySession.aspx" runat="server" id="OT_ApprovalbySession">
                <div class="tile-content icon">
                    <span class="icon-auction"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-auction"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">OT Approvals by Sessions</span>
                        <span class="email-data-text">approve OT by sessions</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">OT Approvals by Sessions</div>
                </div>
            </a>

            <a class="tile bg-cobalt" data-click="transform" href="AttendanceApprove.aspx" runat="server" id="Approve_OT_Session">
                <div class="tile-content icon">
                    <span class=" icon-checkmark"></span>
                </div>
                <div class="brand">
                    <div class="label">Approve OT Session</div>
                </div>
            </a>

                    <a class="tile bg-cobalt" data-click="transform" href="AttendanceShiftReport.aspx" runat="server" id="AttendanceShiftReport">
                <div class="tile-content icon">
                    <span class=" icon-checkmark"></span>
                </div>
                <div class="brand">
                    <div class="label">Attendance Shift Report</div>
                </div>
            </a>

        </div>

    </div>
</asp:Content>
