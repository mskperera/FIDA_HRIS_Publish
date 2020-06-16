<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HREvalPanel.aspx.cs" Inherits="Smarter_HRIS.HREvalPanel1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <div class="row">

                <div class="tile-group six">
                    <div class="tile-group-title fg-black">Performance Evaluation</div>
                    
                    <a class="tile triple bg-amber" data-click="transform" href="EvaluationSession.aspx">
                        <div class="tile-content icon">
                            <span class="icon-tab"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Evaluation Session</div>
                        </div>
                    </a>

                    <a class="tile triple bg-cobalt" data-click="transform" href="EvalQuestionnaireSetup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-clipboard-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                        </div>
                    </a>

                    <a class="tile triple bg-red" data-click="transform" href="EvalScheduleInterview.aspx">
                        <div class="tile-content icon">
                            <span class="icon-calendar"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Schedule Evaluation</div>
                        </div>
                    </a>

                    <a class="tile triple bg-violet" data-click="transform" href="EvalConductEvaluation.aspx">
                        <div class="tile-content icon">
                            <span class="icon-screen"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Conduct Evaluation</div>
                        </div>
                    </a>

                </div>
            </div>
        </div>
        </div>
</asp:Content>
