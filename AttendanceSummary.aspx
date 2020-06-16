<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AttendanceSummary.aspx.cs" Inherits="Smarter_HRIS.AttendanceSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <%--<script src="Select/jquery-1.7.1.js"></script>--%>
    <%--<script src="js/jquery-1.11.1.js"></script>--%>
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmp.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>


    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

    <%--  <script type="text/javascript">
         var config = {
             '.chosen-select': {},
         }
         for (var selector in config) {
             $(selector).chosen(config[selector]);
         }
                    </script>--%>


    <style>
        .nav-tabs {
            border-bottom: 2px solid #DDD;
        }

            .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
                border-width: 0;
            }

            .nav-tabs > li > a {
                border: none;
                color: #666;
            }

                .nav-tabs > li.active > a, .nav-tabs > li > a:hover {
                    border: none;
                    color: #4285F4 !important;
                    background: transparent;
                }

                .nav-tabs > li > a::after {
                    content: "";
                    background: #4285F4;
                    height: 2px;
                    position: absolute;
                    width: 100%;
                    left: 0px;
                    bottom: -1px;
                    transition: all 250ms ease 0s;
                    transform: scale(0);
                }

            .nav-tabs > li.active > a::after, .nav-tabs > li:hover > a::after {
                transform: scale(1);
            }

        .tab-nav > li > a::after {
            background: #21527d none repeat scroll 0% 0%;
            color: #fff;
        }

        .tab-pane {
            padding: 15px 0;
        }

        .tab-content {
            padding: 20px;
        }

        .card {
            background: #FFF none repeat scroll 0% 0%;
            box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3);
            margin-bottom: 30px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />



        <h2>Attendance Summary</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#home">Process Attendance Summary</a></li>
            <li><a href="#menu1">Attendance Summary Details</a></li>
            <li><a href="#menu2">Approve Attendance Summary</a></li>
        </ul>

        <div class="tab-content">

            <div id="home" class="tab-pane fade in active">

                <div style="font-weight: normal; font-size: large;">Process Attendance Summary</div>
                <div class="container">
                    <br />
                    <div class="row">


                        <div class="col-md-6">
                            <div class="form-group-sm row">
                                <label for="drpCompany1" class="col-sm-2 col-form-label" style="font-weight: normal;">Company<sup class="fg-red">*</sup></label>
                                <div class="col-sm-10">
                                    <div id="Div1" runat="server">
                                        <asp:DropDownList CssClass="form-control" ID="drpCompany1" AutoPostBack="true" OnSelectedIndexChanged="drpCompany1_SelectedIndexChanged" runat="server" Width="200"></asp:DropDownList><br />

                                    </div>
                                </div>
                            </div>

                            <div class="form-group-sm row">
                                <label for="drpSession1" class="col-sm-2 col-form-label" style="font-weight: normal;">Session<sup class="fg-red">*</sup></label>
                                <div class="col-sm-10">
                                    <div id="Div2" runat="server">
                                        <asp:DropDownList CssClass="form-control" ID="drpSession1" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-6">

                            <button class="shortcut primary" runat="server" id="bttnProcess" onserverclick="bttnProcess_click">
                                <i class="icon-spin"></i>
                                Process</button>
                            <button class="shortcut info" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                                <i class="icon-download"></i>
                                Download Excel</button>
                            <button class="shortcut info" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">
                                <i class="icon-upload"></i>
                                Upload Excel</button>

                        </div>

                    </div>
                    <br />

                    <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                    <br />
                    <div class="row">

                        <div class="col-md-8">



                            <asp:Panel ID="pnlUpload" runat="server">
                                <div class="row">

                                    <div class="col-md-4">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>

                                    <div class="col-md-4">
                                        <button class="image-button primary" runat="server" id="bttnUploadExcel" onserverclick="bttnUploadExcel_click">
                                            Upload
                                                        <i class="icon-upload-3 bg-cobalt"></i>
                                        </button>

                                    </div>
                                    <div class="col-md-4">

                                        <i runat="server" id="spnner1" class="fa fa-spinner fa-spin" style="font-size: 48px; color: blue"></i>

                                    </div>
                                </div>
                            </asp:Panel>





                            <%--       <asp:Panel ID="pnlRunning" runat="server">
                                <i class="fa fa-spinner fa-spin" style="font-size: 48px; color: blue"></i>
                                <label style="position: relative; top: 50%; left: 40%">Please wait ...</label>
                            </asp:Panel>--%>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <asp:GridView ID="grdUploadAttendance" DataKeyNames="EmployeeID,SessionID,CompanyID" Width="90%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                <asp:BoundField DataField="TotalDaysOfMonth" HeaderText="Total Days Of Month" />
                                <asp:BoundField DataField="NoOfWorkingDays" HeaderText="Working Days" />
                                <asp:BoundField DataField="NoOfHolidays" HeaderText="Holidays" />
                                <asp:BoundField DataField="NoOfNoPayDays" HeaderText="NoPay Days" />
                                <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>

                </div>


            </div>


            <div id="menu1" class="tab-pane fade">


                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">

                    <ContentTemplate>
                        <div class="container">
                            <div style="font-weight: normal; font-size: large;">Attendance Summary Details</div>
                            <br />
                            <div class="row">
                                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>

                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                            </div>
                            <br />
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group-sm row">
                                        <label for="txtEmp" class="col-sm-2 col-form-label" style="font-weight: normal;">Employee<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <div id="dvEmp" runat="server">
                                                <asp:TextBox CssClass="form-control" AutoPostBack="true" OnTextChanged="txtEmployee_TextChanged" ID="txtEmp" runat="server"></asp:TextBox>
                                            </div>
                                            <label id="lblEmpName" runat="server"></label>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="form-group-sm row">
                                        <label for="drpSession" class="col-sm-4 col-form-label" style="font-weight: normal;">Session<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-8">
                                            <asp:DropDownList CssClass="form-control" ID="drpSession" runat="server" Width="200"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="form-group-sm row">
                                        <label for="txtTotalDaysofMonth" class="col-sm-4 col-form-label" style="font-weight: normal;">Total Days of Month<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" Style="width: 100px;" ID="txtTotalDaysofMonth" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="form-group-sm row">
                                        <label for="txtNoofWorkingDays" class="col-sm-4 col-form-label" style="font-weight: normal;">No of Working Days<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" Style="width: 100px;" ID="txtNoofWorkingDays" runat="server"></asp:TextBox>
                                        </div>
                                    </div>


                                </div>
                                <div class="col-md-6">

                                    <div class="form-group-sm row">
                                        <label for="txtNoofHlidays" class="col-sm-4 col-form-label" style="font-weight: normal;">No of Holidays<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-8">

                                            <asp:TextBox Style="width: 100px;" CssClass="form-control" ID="txtNoofHlidays" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="form-group-sm row">
                                        <label for="txtNoofNoPayDays" class="col-sm-4 col-form-label" style="font-weight: normal;">No of NoPay Days<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" Style="width: 100px;" ID="txtNoofNoPayDays" runat="server"></asp:TextBox>

                                        </div>
                                    </div>

                                </div>
                            </div>

                            <br />

                            <div class="row">
                                <div class="col-md-4">
                                    <button class="shortcut success" runat="server" type="button" id="bttnSave" onserverclick="bttnSave_click">
                                        <i class="icon-floppy"></i>
                                        Save</button>
                                    <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                                        <i class="icon-new"></i>
                                        New</button>


                                </div>

                                <div class="col-md-8">

                                    <div class="row">

                                        <div class="col-md-5">
                                            <div class="align-text-bottom">
                                                <div class="form-group-sm row">
                                                    <div>
                                                        <label for="drpCompany1" class="col-sm-3 col-form-label" style="font-weight: normal;">Company</label>
                                                        <div class="col-sm-9">
                                                            <div id="Div3" runat="server">
                                                                <asp:DropDownList CssClass="form-control" ID="drp_companySearch" AutoPostBack="true" OnSelectedIndexChanged="drp_companySearch_SelectedIndexChanged" runat="server" Width="200"></asp:DropDownList><br />

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group-sm row">
                                                <label for="drpSession1" class="col-sm-3 col-form-label" style="font-weight: normal;">Session</label>
                                                <div class="col-sm-9">
                                                    <div id="Div4" runat="server">
                                                        <asp:DropDownList CssClass="form-control" ID="drp_sessionSearch" runat="server" Width="200"></asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <button class="shortcut info" runat="server" id="bttnSearch" onserverclick="bttnSearch_click">
                                                <i class="icon-search"></i>
                                                <span data-hint="Search|Fill Employee or Session to filter search results" data-hint-mode="2" data-hint-position="top">Search</span></button>

                                        </div>

                                    </div>
                                </div>
                            </div>

                            <br />
                            <%--<div class="row">
                                    <legend>Search Attendance Summary</legend>
                                    <asp:Label ID="Label1" runat="server" Text="Employee"></asp:Label>
                                </div>--%>
                            <div class="row">
                                <asp:GridView CssClass="table table-bordered bs-table table-hover" ID="grdAttSummary" DataKeyNames="AttendanceSummaryID,EmployeeID,SessionID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="Vertical" OnRowCommand="grdAttSummary_RowCommand">
                                    <HeaderStyle BackColor="#337ab7 " Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#ffffcc" />
                                    <EmptyDataRowStyle ForeColor="Red" CssClass="table table-bordered" />
                                    <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                                    <Columns>
                                        <asp:BoundField DataField="AttendanceSummaryID" HeaderText="AttendanceSummaryID" Visible="False" />
                                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="true" />
                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee" />
                                        <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                        <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                        <asp:BoundField DataField="TotalDayOfMonth" HeaderText="TotalDays Of Month" />
                                        <asp:BoundField DataField="NoOfWorkingDays" HeaderText="Working Days" />
                                        <asp:BoundField DataField="NoOfHolidays" HeaderText="Holidays" />
                                        <asp:BoundField DataField="NoPayDays" HeaderText="NoPay Days" />
                                        <asp:TemplateField HeaderText="Actions">
                                            <ItemTemplate>
                                                <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>




                                </asp:GridView>
                            </div>
                        </div>
                        <asp:HiddenField ID="IsEdit" runat="server" />
                        <asp:HiddenField ID="TableID" runat="server" />
                        <asp:HiddenField ID="EmpID1" runat="server" />

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="bttnSave" />
                        <asp:AsyncPostBackTrigger ControlID="bttnNew" />
                        <asp:AsyncPostBackTrigger ControlID="bttnSearch" />
                    </Triggers>
                </asp:UpdatePanel>

            </div>

            <div id="menu2" class="tab-pane fade">



                <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
  
 
                  

                        <div class="content">


                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group-sm row">
                                        <label for="drpCompany2" class="col-sm-2 col-form-label" style="font-weight: normal;">Company<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList CssClass="form-control" ID="drpCompany2" AutoPostBack="true" OnSelectedIndexChanged="drpCompany2_SelectedIndexChanged" runat="server" Width="200"></asp:DropDownList>

                                        </div>
                                    </div>

                                    <div class="form-group-sm row">
                                        <label for="drpSession2" class="col-sm-2 col-form-label" style="font-weight: normal;">Session<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList CssClass="form-control" ID="drpSession2" runat="server" Width="200"></asp:DropDownList>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-md-6">

                                    <button class="shortcut primary" type="button" runat="server" id="bttnApprove" onserverclick="bttnApprove_click">
                                        <i class="icon-auction"></i>
                                        Approve</button>
                                    <button class="shortcut success" type="button" runat="server" id="bttnFreeze" onserverclick="bttnFreeze_click">
                                        <i class="icon-locked"></i>
                                        Freeze</button>

                                </div>

                            </div>
                            <div class="row">
                              <div class="col-md-12" style="margin-bottom:10px">
                                <asp:Panel ID="panelApproveAttendaneSummary" runat="server"></asp:Panel>
                            </div>
                            </div>
                            <div class="row text-center">
                                <asp:Panel ID="pnlNotify" runat="server">
                                    <div class="window flat shadow">
                                        <label>This attendance is not approved yet. Do you want to approve and freeze ?</label>
                                        <button class="info" id="bttnYes" type="button" runat="server" onserverclick="bttnYes_click">Yes</button>
                                        <button class="danger" id="bttnNo" type="button" runat="server" onserverclick="bttnNo_click">No</button>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>


                        <asp:HiddenField ID="IsReplicated" runat="server" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>



            <script>
                $(document).ready(function () {
                    $(".nav-tabs a").click(function () {
                        $(this).tab('show');
                    });
                });
            </script>


        </div>


        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>

        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>

    </div>

</asp:Content>
