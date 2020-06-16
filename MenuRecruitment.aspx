<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuRecruitment.aspx.cs" Inherits="Smarter_HRIS.MenuRecruitment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Recruitment</div>
            <asp:HiddenField ID="lblUserID" runat="server" />
            <a class="tile double bg-cobalt" data-click="transform" href="CreateJobOpening.aspx" runat="server" id="Create_Job_Opening">
                <div class="tile-content icon">
                    <span class="icon-mic"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Create Job Opening</div>
                </div>
            </a>

            <a class="tile double bg-cyan" data-click="transform" href="RegisterCandidate.aspx" runat="server" id="Register_Candidate">
                <div class="tile-content icon">
                    <span class="icon-user-2"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Register Candidte</div>
                </div>
            </a>

            <a class="tile double bg-cobalt" data-click="transform" href="QuestionnaireSetup.aspx" runat="server" id="Questionnaire_Setup">
                <div class="tile-content icon">
                    <span class="icon-clipboard-2"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                </div>
            </a>

            <a class="tile double bg-cyan" data-click="transform" href="ScheduleInterview.aspx" runat="server" id="Schedule_Interview">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Schedule Interview</div>
                </div>
            </a>

            <a class="tile double bg-cobalt" data-click="transform" href="ConductInterview.aspx" runat="server" id="Conduct_Interview">
                <div class="tile-content icon">
                    <span class="icon-screen"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Conduct Interview</div>
                </div>
            </a>

        </div>
    </div>
</asp:Content>
