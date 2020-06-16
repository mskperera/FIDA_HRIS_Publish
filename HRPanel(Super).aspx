<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRPanel(Super).aspx.cs" Inherits="Smarter_HRIS.HRPanel_beta_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR Panel</title>
    <link href="css/metro-bootstrap.css" rel="stylesheet"/>
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet"/>
    <link href="css/iconFont.css" rel="stylesheet"/>
    <link href="css/docs.css" rel="stylesheet"/>
    <link href="js/prettify/prettify.css" rel="stylesheet"/>

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <script src="js/start-screen.js"></script>
</head>
<body class="metro">
    <form id="form1" runat="server">
    <div>
    
        <div class="tile-area tile-area-light">
            <h1 class="tile-area-title fg-black">HR Dashboard<sup><small>(super)</small></sup></h1>
            <div class="user-id bg-white">
                
                <div class="user-id-image">
                    <a class="fg-white" href="LoginHR.aspx" data-hint="Logout|LogOut from HR Dashboard Super Panel" data-hint-position="left"><span class="icon-exit"></span></a>
                            <%--<ul class="dropdown-menu place-right" data-role="dropdown">
                                <li><a href="#">Change Password</a></li>
                                <li><a href="LoginHR.aspx">Log Out</a></li>
                            </ul>--%>
                    <%--<span class="icon-user no-display1"></span>
                    <img src="images/Battlefield_4_Icon.png" class="no-display">--%>
                </div>
                <div class="user-id-name fg-black">
                    <span class="first-name">Welcome to</span>
                    <span class="last-name">HR Dashboard</span>
                </div>
            </div>

            <div class="tile-group six">
                <div class="tile-group-title fg-black">HR</div>
                <a class="tile double double-vertical bg-red" data-click="transform" href="EmpAssignToGroup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-download"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign To Group</div>
                        </div>
                    </a>

                    <a class="tile double bg-emerald" data-click="transform" href="AssignToShifts.aspx">
                        <div class="tile-content icon">
                            <span class="icon-enter"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign To Shift</div>
                        </div>
                    </a>

                    <a class="tile double bg-amber" data-click="transform" href="AssignToRosterByDay.aspx">
                        <div class="tile-content icon">
                            <span class="icon-loop"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Roster Assign By Day</div>
                        </div>
                    </a>

                    <a class="tile double bg-cyan" data-click="transform" href="ImageUpload.aspx">
                        <div class="tile-content icon">
                            <span class="icon-image"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Employee Image Upload</div>
                        </div>
                    </a>

                    <a class="tile double bg-orange" data-click="transform" href="DocumentUpload.aspx">
                        <div class="tile-content icon">
                            <span class="icon-file"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Employee Document Upload</div>
                        </div>
                    </a>

                    <a class="tile double bg-magenta" data-click="transform" href="EmpSubordinates.aspx">
                        <div class="tile-content icon">
                            <span class="icon-accessibility"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assign Covering Persons</div>
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

                    <a class="tile bg-lightRed" data-click="transform" href="EmployeeResetPassword.aspx">
                        <div class="tile-content icon">
                            <span class="icon-accessibility"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Reset Employee Password</div>
                        </div>
                    </a>
            </div>
            <!-- End group -->

            <div class="tile-group three">
                <div class="tile-group-title fg-black">Recruitment</div>
                <a class="tile  bg-darkGreen" data-click="transform" href="CreateJobOpening.aspx">
                        <div class="tile-content icon">
                            <span class="icon-mic"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Create Job Opening</div>
                        </div>
                    </a>

                    <a class="tile double bg-darkCobalt" data-click="transform" href="RegisterCandidate.aspx">
                        <div class="tile-content icon">
                            <span class="icon-user-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Register Candidte</div>
                        </div>
                    </a>

                    <a class="tile double bg-darkViolet" data-click="transform" href="QuestionnaireSetup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-clipboard-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                        </div>
                    </a>

                    <a class="tile  bg-darkMagenta" data-click="transform" href="ScheduleInterview.aspx">
                        <div class="tile-content icon">
                            <span class="icon-calendar"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Schedule Interview</div>
                        </div>
                    </a>

                    <a class="tile triple bg-darkOrange" data-click="transform" href="ConductInterview.aspx">
                        <div class="tile-content icon">
                            <span class="icon-screen"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Conduct Interview</div>
                        </div>
                    </a>
            </div>
            <!-- End tile group -->

            <div class="tile-group three">
                <div class="tile-group-title fg-black">Performance Evaluation</div>
                <a class="tile bg-amber" data-click="transform" href="EvaluationSession.aspx">
                        <div class="tile-content icon">
                            <span class="icon-tab"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Evaluation Session</div>
                        </div>
                    </a>

                    <a class="tile double bg-cobalt" data-click="transform" href="EvalQuestionnaireSetup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-clipboard-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                        </div>
                    </a>

                    <a class="tile bg-red" data-click="transform" href="EvalScheduleInterview.aspx">
                        <div class="tile-content icon">
                            <span class="icon-calendar"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Schedule Evaluation</div>
                        </div>
                    </a>

                    <a class="tile double bg-violet" data-click="transform" href="EvalConductEvaluation.aspx">
                        <div class="tile-content icon">
                            <span class="icon-screen"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Conduct Evaluation</div>
                        </div>
                    </a>
            </div>
            <!-- End group -->

            <div class="tile-group three">
                <div class="tile-group-title fg-black">Training</div>
                <a class="tile double bg-lightOlive" data-click="transform" href="TRegisterTraining.aspx">
                        <div class="tile-content icon">
                            <span class="icon-target"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Register Training</div>
                        </div>
                    </a>

                    <a class="tile  bg-darkIndigo" data-click="transform" href="TQuestionnaireSetup.aspx">
                        <div class="tile-content icon">
                            <span class="icon-clipboard-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Questionnaire Setup</div>
                        </div>
                    </a>

                    <a class="tile  bg-darkBlue" data-click="transform" href="TScheduleTraining.aspx">
                        <div class="tile-content icon">
                            <span class="icon-calendar"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Schedule Training</div>
                        </div>
                    </a>

                    <a class="tile double bg-orange" data-click="transform" href="TReviewTraining.aspx">
                        <div class="tile-content icon">
                            <span class="icon-screen"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Review Training</div>
                        </div>
                    </a>
            </div>
            <!-- End group -->

            <div class="tile-group one">
                <div class="tile-group-title fg-black">Settings</div>
                <a class="tile half bg-darkBlue" data-click="transform" href="#"  data-hint="Password|Change existing password" data-hint-position="bottom">
                <div class="tile-content icon">
                    <img src="images/x.jpg"/>
                </div>
                </a>

                <a class="tile half bg-darkBlue" data-click="transform" href="CreateUsersHR.aspx"  data-hint="Users|Add new users" data-hint-position="bottom">
                <div class="tile-content icon">
                    <img src="images/x.jpg"/>
                </div>
                </a>

                    
            </div>
            <!-- End group -->

            <%--<div class="tile-group double">
                <div class="tile double" data-click="transform">
                    <div class="tile-content image-set">
                        <img src="images/1.jpg">
                        <img src="images/2.jpg">
                        <img src="images/3.jpg">
                        <img src="images/4.jpg">
                        <img src="images/5.jpg">
                    </div>
                </div>
                <div class="tile double live" data-role="live-tile" data-effect="slideUpDown" data-click="transform">
                    <div class="tile-content image">
                        <img src="images/1.jpg">
                    </div>
                    <div class="tile-content image">
                        <img src="images/2.jpg">
                    </div>
                    <div class="tile-content image">
                        <img src="images/3.jpg">
                    </div>
                    <div class="tile-content image">
                        <img src="images/4.jpg">
                    </div>
                    <div class="tile-content image">
                        <img src="images/5.jpg">
                    </div>

                    <div class="tile-status">
                        <span class="label">Images</span>
                    </div>
                </div>
            </div>--%>
        </div>
        <script src="js/hitua.js"></script>


    </div>
    </form>
</body>
</html>
