<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuTraining.aspx.cs" Inherits="Smarter_HRIS.MenuTraining" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Training</div>
            <asp:HiddenField ID="lblUserID" runat="server" />
            <a class="tile double bg-cobalt" data-click="transform" href="TRegisterTraining.aspx" runat="server" id="TRegister_Training">
                <div class="tile-content icon">
                    <span class="icon-target"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Register Training</div>
                </div>
            </a>

            <a class="tile  bg-cyan" data-click="transform" href="TQuestionnaireSetup.aspx" runat="server" id="TQuestionnaire_Setup">
                <div class="tile-content icon">
                    <span class="icon-clipboard-2"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                </div>
            </a>

            <a class="tile  bg-cobalt" data-click="transform" href="TScheduleTraining.aspx" runat="server" id="TSchedule_Training">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Schedule Training</div>
                </div>
            </a>

            <a class="tile double bg-cyan" data-click="transform" href="TReviewTraining.aspx" runat="server" id="TReview_Training">
                <div class="tile-content icon">
                    <span class="icon-screen"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Review Training</div>
                </div>
            </a>

        </div>
    </div>
</asp:Content>
