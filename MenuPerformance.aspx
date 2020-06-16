<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="MenuPerformance.aspx.cs" Inherits="Smarter_HRIS.MenuPerformance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="tile-group six">
            <div class="tile-group-title fg-black">Performance Evaluation</div>
            <asp:HiddenField ID="lblUserID" runat="server" />
            <a class="tile bg-cobalt" data-click="transform" href="EvaluationSession.aspx" runat="server" id="Evaluation_Session">
                <div class="tile-content icon">
                    <span class="icon-tab"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Evaluation Session</div>
                </div>
            </a>

            <a class="tile double bg-cyan" data-click="transform" href="EvalQuestionnaireSetup.aspx" runat="server" id="Eval_Questionnaire_Setup">
                <div class="tile-content icon">
                    <span class="icon-clipboard-2"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                </div>
            </a>

            <a class="tile bg-cobalt" data-click="transform" href="EvalScheduleInterview.aspx" runat="server" id="Eval_Schedule_Interview">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Schedule Evaluation</div>
                </div>
            </a>

            <a class="tile double bg-cyan" data-click="transform" href="EvalConductEvaluation.aspx" runat="server" id="EvalConduct_Evaluation">
                <div class="tile-content icon">
                    <span class="icon-screen"></span>
                </div>
                <div class="brand">
                    <div class="label" style="font-size: 15px">Conduct Evaluation</div>
                </div>
            </a>

        </div>
    </div>
</asp:Content>
