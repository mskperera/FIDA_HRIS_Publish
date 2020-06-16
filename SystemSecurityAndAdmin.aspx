<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="SystemSecurityAndAdmin.aspx.cs" Inherits="Smarter_HRIS.SystemSecurityAndAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tile-group six">
            <div class="tile-group-title fg-black">System Security</div>
            <h4>Audit Logs And User Rights</h4>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ViewLog.aspx" runat="server" id="View_Log">
                <div class="tile-content icon">
                    <span class="icon-libreoffice"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-libreoffice"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Audit Details Log</span>
                        <span class="email-data-text">Audit Details Log</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Audit Details Log</div>
                </div>
            </a>

            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AssignUserRights.aspx" runat="server" id="Assign_User_Rights">
                <div class="tile-content icon">
                    <span class="icon-cancel"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-cancel"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Assign User Rights</span>
                        <span class="email-data-text">Assign User Rights</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Assign User Rights</div>
                </div>
            </a>


            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ViewUserPriviladges.aspx" runat="server" id="A1">
                <div class="tile-content icon">
                    <span class=" icon-user"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-user"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">View User Priviladges</span>
                        <span class="email-data-text">View User Priviladges</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">View User Priviladges</div>
                </div>
            </a>
        </div>

        <div class="tile-group six">
            <h4>Reporting Users And Dashboard</h4>
              <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="CreateReportingUsers.aspx" runat="server" id="Create_Reporting_Users">
                <div class="tile-content icon">
                    <span class=" icon-cog"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-cog"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Create Users For Report Portal</span>
                        <span class="email-data-text">Create Users For Report Portal</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Create Users For Report Portal</div>
                </div>
            </a>
            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ReportAssignment.aspx" runat="server" id="Report_Assignment">
                <div class="tile-content icon">
                    <span class="icon-enter"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-enter"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Report Assign to Users</span>
                        <span class="email-data-text">Report Assign to Users</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Report Assign to Users</div>
                </div>
            </a>
            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="RegisterUsersDashboard.aspx" runat="server" id="Register_Users_Dashboard">
                <div class="tile-content icon">
                    <span class="icon-screen"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-screen"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Register Users for Dashboard</span>
                        <span class="email-data-text">Register Users for Dashboard</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Register Users for Dashboard</div>
                </div>
            </a>    
        </div>



        <div class="tile-group six">
            <h4>Manage HR Panel Users</h4>
             <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="CreateUsersHR.aspx" runat="server" id="Create_Users_HR">
                <div class="tile-content icon">
                    <span class="icon-paragraph-justify"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-paragraph-justify"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Create Users For HR Panel</span>
                        <span class="email-data-text">Create Users For HR Panel</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Create Users</div>
                </div>
            </a>
            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ChangePriviladgeType.aspx" runat="server" id="Change_Priviladge_Type">
                <div class="tile-content icon">
                    <span class="icon-share-3"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-share-3"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Change Priviladge Type</span>
                        <span class="email-data-text">Change Priviladge Type</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label">Change Priviladge Type</div>
                </div>
            </a>

            <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="UserChangePassword.aspx" runat="server" id="User_Change_Password">
                <div class="tile-content icon">
                    <span class="icon-move-horizontal"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-move-horizontal"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Change Password</span>
                        <span class="email-data-text">Change Password</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Change Password</div>
                </div>
            </a>


            <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ManageHRUserPassword.aspx" runat="server" id="A2">
                <div class="tile-content icon">
                    <span class="icon-radio-checked"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class=" icon-radio-checked"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Manage HR User Password</span>
                        <span class="email-data-text">Manage HR User Password</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Manage HR User Password</div>
                </div>
            </a>
                 <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="ResetAccounts.aspx" runat="server" id="A3">
                <div class="tile-content icon">
                    <span class="icon-unlocked"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-unlocked"></span>
                    </div>
                    <div class="email-data">
                        <span class="email-data-title">Reset Account</span>
                        <span class="email-data-text">Reset Expired Account</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Reset Account</div>
                </div>
            </a>
        </div>
  

<%--               <div class="tile-group six">
            <h4>Language and Translations</h4>

                 <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="Language_Translation.aspx" runat="server" id="A8">
                <div class="tile-content icon">
                    <span class="icon-earth"></span>
                </div>
                <div class="tile-content email">
                    <div class="email-image">
                        <span class="icon-earth"></span>
                    </div>
                    <div class="email-data">
                        <span class="icon-earth">Language Translations</span>
                        <span class="icon-earth">Language Translations</span>
                    </div>
                </div>
                <div class="brand">
                    <div class="label fg-white">Language Translations</div>
                </div>
            </a>
        </div>--%>
  
        </div>
</asp:Content>
