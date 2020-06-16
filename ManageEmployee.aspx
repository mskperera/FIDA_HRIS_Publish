<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ManageEmployee.aspx.cs" Inherits="Smarter_HRIS.ManageEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <asp:Panel ID="pnlHR" runat="server">
                <div class="row">
                    <div class="tile-group six">
                        <asp:HiddenField ID="lblUserID" runat="server" />
                        <div class="tile-group-title fg-black">Manage Employee</div>
                        <a class="tile double bg-cobalt live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="AddEmployee.aspx" runat="server" id="Add_Employee">
                            <div class="tile-content icon">
                                <span class="icon-user-3"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-user-3"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Manage New Employee</span>
                                    <span class="email-data-text">Add New Employee</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Manage New Employee</div>
                            </div>
                        </a>

                        <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="HierachyUpdateEmployee.aspx" runat="server" id="Menu_HierachyUpdateEmployee">
                            <div class="tile-content icon">
                                <span class="icon-spin"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-spin"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Hierachy Update Employee</span>
                                    <span class="email-data-text">Update Employee Details</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Hierachy Update Employee</div>
                            </div>
                        </a>

                        <a class="tile double bg-cobalt" data-role="live-tile" data-effect="slideUp" data-click="transform" href="SystemUpdateSearch.aspx" runat="server" id="Menu_SystemUpdateSearch">
                            <div class="tile-content icon">
                                <span class="icon-cancel"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-cancel"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">View Approvals</span>
                                    <span class="email-data-text">View Approvals</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">View Approvals</div>
                            </div>
                        </a>

                        <a class="tile double bg-cyan live" data-role="live-tile" data-effect="slideUp" data-click="transform" href="UpdateEmployeeNo.aspx" runat="server" id="Update_Employee_Number">
                            <div class="tile-content icon">
                                <span class=" icon-accessibility"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class=" icon-accessibility"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Update Employee Number</span>
                                    <span class="email-data-text">Update Employee Number</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Update Employee Number</div>
                            </div>
                        </a>

                              <a class="tile double bg-cobalt" data-role="live-tile" data-effect="slideUp" data-click="transform" href="DownloadHRDetails.aspx" runat="server" id="Download_HRDetails">
                            <div class="tile-content icon">
                                <span class="icon-download-2"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-download-2"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Download Employee Details</span>
                                    <span class="email-data-text">Download Employee Details</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Download Employee Details</div>
                            </div>
                        </a>
                            <a class="tile double bg-green" data-click="transform" href="GroupAssignToCustomerLocation.aspx" runat="server" id="A4">
                <div class="tile-content icon">
                    <span class="icon-user-3"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Group Assign To Customer Location</div>
                </div>
            </a>

                 <a class="tile double bg-green" data-click="transform" href="GroupAssignToCompanyLocation.aspx" runat="server" id="A5">
                <div class="tile-content icon">
                    <span class="icon-home"></span>
                </div>
                <div class="brand">
                    <div class="label fg-white">Group Assign To Company Location</div>
                </div>
            </a>
                    </div>


                </div>
             
                
            
                
                <div class="row">
                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Master Setup</div>
                        <a class="tile double bg-cobalt" data-role="live-tile" data-effect="slideUp" data-click="transform" href="EmpMasterSetup.aspx" runat="server" id="Emp_MasterSetup">
                            <div class="tile-content icon">
                                <span class="icon-enter"></span>
                            </div>
                            <div class="tile-content email">
                                <div class="email-image">
                                    <span class="icon-enter"></span>
                                </div>
                                <div class="email-data">
                                    <span class="email-data-title">Employee Master Setup</span>
                                    <span class="email-data-text">Setup Master Details</span>
                                </div>
                            </div>
                            <div class="brand">
                                <div class="label fg-white">Employee Master Setup</div>
                            </div>
                        </a>

                    </div>
                </div>

                      <div class="row">
                    <div class="tile-group six">
                        <div class="tile-group-title fg-black">Employee Profile Setting</div>
             
                          <a class="tile double bg-amber" data-click="transform" href="EmployeeProfileSettings.aspx" runat="server" id="A2">
                            <div class="tile-content icon">
                                <span class="icon-wrench"></span>
                            </div>
                            <div class="brand">
                                <div class="label" style="font-size: 15px">Employee Profile Settings</div>
                            </div>
                        </a>

                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
