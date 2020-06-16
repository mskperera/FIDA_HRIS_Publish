<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ProcessSalary.aspx.cs" Inherits="Smarter_HRIS.ProcessSalarynew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />


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


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">






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

    
       <style>
        Label {
            /*vertical-align: top;
            font-size: 15px;*/
            font-weight: normal;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />

        <br />

        <h2>Process Salary</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1">Process Salary</a></li>
            <li><a href="#tab2">Salary Details</a></li>
            <li><a href="#tab3">Approve Salary</a></li>
            <li><a href="#tab4">Process Employee</a></li>
            <li><a href="#tab5">Process Allowances</a></li>
        </ul>

        <div class="tab-content">

            <div id="tab1" class="tab-pane fade in active">
                <div style="font-weight: normal; font-size: large;">Process Salary</div>
                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>

                        <br />
                        <div class="container">
                            <div class="row">

                                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Company<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpCompany1" CssClass="form-control" OnSelectedIndexChanged="drpCompany1_SelectedIndexChanged" runat="server" Width="200px" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Session<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpSession1" CssClass="form-control" runat="server" Width="200px" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <button class="shortcut primary" type="button" runat="server" id="bttnProcess" onserverclick="bttnProcess_click">
                                        <i class="icon-spin"></i>
                                        Process</button>
                                    <button class="shortcut success" type="button" runat="server" id="Button4" onserverclick="bttnNew_click">
                                        <i class="icon-new"></i>
                                        New</button>
                                </div>
                            </div>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>


            </div>

            <div id="tab2" class="tab-pane fade">
                <div style="font-weight: normal; font-size: large;">Salary Details</div>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>

                        <br />
                        <div class="container">
                            <div class="row">

                                <asp:Panel ID="pnlmessagetab2" runat="server"></asp:Panel>
                            </div>

                            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Employee<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtEmp" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtEmp_TextChanged" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Session<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpSession" CssClass="form-control" runat="server" Width="200px" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                            </div>
                              <br />
                            <div class="row">
                                <button class="shortcut primary" runat="server" id="bttnSearch" onserverclick="bttnSearch_click">
                                    <i class="icon-search"></i>
                                    Search</button>
                            </div>


                            <div class="row">
                                <asp:Panel ID="pnlPreview" runat="server"></asp:Panel>
                            </div>
                        </div>


                        <asp:HiddenField ID="IsEdit" runat="server" />
                        <asp:HiddenField ID="TableID" runat="server" />
                        <asp:HiddenField ID="EmpID1" runat="server" />





                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div id="tab3" class="tab-pane fade">
                <div style="font-weight: normal; font-size: large;">Approve Salary</div>
                <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>


                           <br />

                        <div class="container">
                            <div class="row">

                                <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Company<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpCompany2" CssClass="form-control" runat="server" OnSelectedIndexChanged="drpCompany2_SelectedIndexChanged" Width="200"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Session<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpSession2" CssClass="form-control" runat="server" Width="200"></asp:DropDownList>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <br />

                            <div class="row">


                                <div class="span4">
                                    <button class="shortcut primary" runat="server" id="bttnApprove" onserverclick="bttnApprove_click">
                                        <i class="icon-auction"></i>
                                        Approve</button>
                                    <button class="shortcut success" runat="server" id="bttnFreeze" onserverclick="bttnFreeze_click">
                                        <i class="icon-locked"></i>
                                        Freeze</button>
                                </div>
                            </div>

                            <div class="row text-center">
                                <asp:Panel ID="pnlNotify" runat="server">
                                    <div class="window flat shadow">
                                        <label>This attendance is not approved yet. Do you want to approve and freeze ?</label>
                                        <button class="info" id="bttnYes" runat="server" onserverclick="bttnYes_click">Yes</button>
                                        <button class="danger" id="bttnNo" runat="server" onserverclick="bttnNo_click">No</button>
                                    </div>
                                </asp:Panel>
                            </div>


                        </div>


                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div id="tab4" class="tab-pane fade">
                <div style="font-weight: normal; font-size: large;">Process Employee</div>
            
    
                                  <p style="color:#7d7a7a"><span class="glyphicon glyphicon-info-sign"></span> process employee will fix errors related to employee informations mismatch in the system.</p>  
            
                     <br />
                <asp:UpdateProgress ID="UpdateProgress4" runat="server">
                    <ProgressTemplate>
                    <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>


                        <div class="container">
                            <div class="row">

                                <asp:Panel ID="pnlMessages12" runat="server"></asp:Panel>
                            </div>

                       
                                <div class="row">

                                    <div class="span4">
                                        <button class="shortcut primary" runat="server" id="Button1" onserverclick="bttnProcess1_click">
                                            <i class="icon-spin"></i>
                                            Process</button>
                                    </div>


                                </div>

                  

                        </div>
                        <asp:HiddenField ID="HiddenField1" runat="server" />


                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div id="tab5" class="tab-pane fade">
                <div style="font-weight: normal; font-size: large;">Process Allowances</div>
                <asp:UpdateProgress ID="UpdateProgress5" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel5" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                           <br />

                        <div class="container">
                            <div class="row">

                                <asp:Panel ID="pnlMessages122" runat="server"></asp:Panel>
                            </div>


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Company<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpCompany11" CssClass="form-control" runat="server" OnSelectedIndexChanged="drpCompany11_SelectedIndexChanged" AutoPostBack="true" Width="200"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Session<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpSession11" CssClass="form-control" runat="server" Width="200"></asp:DropDownList>


                                        </div>
                                    </div>
                                    <div class="form-group-sm row">
                                        <label for="ddlCompany" class="col-sm-2 col-form-label">Allowance<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <asp:DropDownList ID="drpAllowance" CssClass="form-control" runat="server" Width="200"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <button class="shortcut primary" runat="server" id="Button2" onserverclick="bttnProcessAllowance">
                                        <i class="icon-spin"></i>
                                        Process</button>
                                    <button class="shortcut success" runat="server" id="Button3" onserverclick="bttnNew_click">
                                        <i class="icon-new"></i>
                                        New</button>
                                </div>
                            </div>
                        </div>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                    


                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button2" />
                        <asp:AsyncPostBackTrigger ControlID="Button3" />
                    </Triggers>
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


    </div>

</asp:Content>
