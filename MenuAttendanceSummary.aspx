<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuAttendanceSummary.aspx.cs" Inherits="Smarter_HRIS.MenuAttendanceSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <asp:Panel ID="pnlHR" runat="server">
                <div class="row">
                    <div class="tile-group six">
                        <asp:HiddenField ID="lblUserID" runat="server" />
                        <div class="tile-group-title fg-black">Attendance Summery</div>
                        <a class="tile double bg-cyan live" data-click="transform" href="UnAnalyzedAttendanceData.aspx" runat="server" id="A1">
                            <div class="tile-content icon">
                                <span class=" icon-stats-up"></span>
                            </div>
                            <div class="brand">
                                <div class="label">UnAnalyzed Attendance Data</div>
                            </div>
                        </a>
                        <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HRAttandanceDisplayV_1.aspx" runat="server" id="HR_Attandance_DisplayV1">
                            <div class="tile-content icon">
                                <span class="icon-user-3"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-user-3"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Attendance Display</span>
                                    <span class="email-data-text">Attendance Display</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Attendance Display</div>
                            </div>
                        </a>

                        <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HRAttandanceDisplay.aspx" runat="server" id="HR_Attandance_Display">
                            <div class="tile-content icon">
                                <span class="icon-download"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-download"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Edit Attendance</span>
                                    <span class="email-data-text">Edit Attendance</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Edit Attendance</div>
                            </div>
                        </a>

                        <a class="tile double bg-cobalt" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HRAttandanceView.aspx" runat="server" id="HR_Attandance_View">
                            <div class="tile-content icon">
                                <span class="icon-cancel"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-cancel"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Delete Attendance</span>
                                    <span class="email-data-text">Delete Attendance</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Delete Attendance</div>
                            </div>
                        </a>

                        <a class="tile double bg-cobalt" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AttendanceDynamicReport.aspx" runat="server" id="A2">
                            <div class="tile-content icon">
                                <span class="icon-stats-up"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-stats-up"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Attendance Dynamic Report</span>
                                    <span class="email-data-text">Attendance Dynamic Report</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Attendance Dynamic Report</div>
                            </div>
                        </a>


                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
