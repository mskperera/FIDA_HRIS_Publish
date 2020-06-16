<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="SupervisorPanel.aspx.cs" Inherits="Smarter_HRIS.SupervisorPanel1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <div class="row">
                <div class="tile-group six">
                    <div class="tile-group-title fg-black">HR</div>

                    <%--<a class="tile double bg-red" data-click="transform" href="EmpAssignToGroup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-download"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Add an Employee</div>
                        </div>
                    </a>--%>

                    <a class="tile double bg-red" data-click="transform" href="AssignToShiftsOT.aspx">
                        <div class="tile-content icon">
                            <span class="icon-download"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign OT Shifts</div>
                        </div>
                    </a>

                    <a class="tile double bg-emerald" data-click="transform" href="AdvancedManualAttendance.aspx">
                        <div class="tile-content icon">
                            <span class="icon-enter"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Advanced Manual Attendance</div>
                        </div>
                    </a>

              
                            <%--<a class="tile double bg-amber" data-click="transform" href="AssignToRosterByDay.aspx">
                        <div class="tile-content icon">
                            <span class="icon-loop"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Roster Assign By Day</div>
                        </div>
                    </a>




                    <a class="tile double bg-steel" data-click="transform" href="AssignToRosterByPatern.aspx">
                        <div class="tile-content icon">
                            <span class="icon-loop"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Roster Assign By Pattern</div>
                        </div>
                    </a>

                    <a class="tile double bg-green" data-click="transform" href="AssigntoHoliday.aspx">
                        <div class="tile-content icon">
                            <span class="icon-enter"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign To Holiday</div>
                        </div>
                    </a>

                    <a class="tile double bg-magenta" data-click="transform" href="LeaveCancelSearch.aspx">
                        <div class="tile-content icon">
                            <span class="icon-cancel"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Leave Cancel</div>
                        </div>
                    </a>

                    <a class="tile bg-violet" data-click="transform" href="OTApproval.aspx">
                        <div class="tile-content icon">
                            <span class="icon-auction"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Daily OT Approvals</div>
                        </div>
                    </a>

                    <a class="tile double bg-darkCyan" data-click="transform" href="OTApprovalbySession.aspx">
                        <div class="tile-content icon">
                            <span class="icon-auction"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">OT Approvals by Sessions</div>
                        </div>
                    </a>

                    <a class="tile bg-indigo" data-click="transform" href="RegisterUsersDashboard.aspx">
                        <div class="tile-content icon">
                            <span class="icon-plus"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Register Users for Dashboard</div>
                        </div>
                    </a>--%>

                </div>
            </div>

            


        </div>
    </div>

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
</asp:Content>
