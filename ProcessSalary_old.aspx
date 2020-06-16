<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ProcessSalary_old.aspx.cs" Inherits="Smarter_HRIS.ProcessSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


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


    <script type="text/javascript">
        $(function () {
            var tabName = $("[id*=TabName]").val() != "" ? $("[id*=TabName]").val() : "home";
            $('#Tabs a[href="#' + tabName + '"]').tab('show');
            $("#Tabs a").click(function () {
                $("[id*=TabName]").val($(this).attr("href").replace("#", ""));
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <div class="container">
                <br />
                <asp:HiddenField ID="lblUserID" runat="server" />

                <asp:HiddenField ID="TabName" runat="server" Value="image" />

                <ul id="Tabs" class="nav nav-tabs">
                    <li class="active"><a href="#tab1">Process Salary</a></li>
                    <li><a href="#tab2">Salary Details</a></li>
                    <li><a href="#tab3">Approve Salary</a></li>
                    <li><a href="#tab4">Process Employee</a></li>
                    <li><a href="#tab5">Process Allowances</a></li>

                </ul>

                <div id="my-tab-content" class="tab-content">

                    <div id="tab1" class="tab-pane fade in active">


                        <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                            <ProgressTemplate>
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="container">


                                    <div class="grid">

                                        <div class="row">
                                            <div style="font-weight: normal; font-size: large;">Process Salary</div>
                                            <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                                        </div>


                                        <div class="row">
                                            <div class="span2">
                                                <label>Company<sup class="fg-red">*</sup></label>
                                                <label>Session<sup class="fg-red">*</sup></label>
                                            </div>
                                            <div class="span3">
                                                <asp:DropDownList ID="drpCompany1" runat="server" Width="200"></asp:DropDownList><br />
                                                <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList>
                                            </div>
                                            <div class="span4">
                                                <button class="shortcut primary" runat="server" id="bttnProcess" onserverclick="bttnProcess_click">
                                                    <i class="icon-spin"></i>
                                                    Process</button>
                                                <button class="shortcut success" runat="server" id="Button4" onserverclick="bttnNew_click">
                                                    <i class="icon-new"></i>
                                                    New</button>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    <div id="tab2" class="tab-pane fade">
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>


                                <div class="container">
                                    <div class="row">
                                        <div style="font-weight: normal; font-size: large;">Salary Details</div>
                                        <asp:Panel ID="pnlmessagetab2" runat="server"></asp:Panel>
                                    </div>

                                    <div class="row">
                                        <label>Employee<sup class="fg-red">*</sup></label>

                                        <asp:TextBox ID="txtEmp" runat="server"></asp:TextBox>&nbsp;&nbsp;
              
                            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                                        <div class="grid">
                                            <div class="row">
                                                <div class="span3">
                                                    <label>Session<sup class="fg-red">*</sup></label>
                                                    <asp:DropDownList ID="drpSession" runat="server" Width="200"></asp:DropDownList>
                                                    <br />
                                                    <br />
                                                    <button class="shortcut primary" runat="server" id="bttnSearch" onserverclick="bttnSearch_click">
                                                        <i class="icon-search"></i>
                                                        Search</button>
                                                </div>
                                                <div class="span9">
                                                    <asp:Panel ID="pnlPreview" runat="server"></asp:Panel>
                                                </div>
                                            </div>

                                        </div>
                                    </div>


                                    <asp:HiddenField ID="IsEdit" runat="server" />
                                    <asp:HiddenField ID="TableID" runat="server" />
                                    <asp:HiddenField ID="EmpID1" runat="server" />
                                </div>






                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    <div id="tab3" class="tab-pane fade">
                        <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                            <ProgressTemplate>
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:UpdatePanel ID="UpdatePanel5" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="container">
                                    <div class="row">
                                        <div style="font-weight: normal; font-size: large;">Approve Salary</div>
                                        <asp:Panel ID="pnlmessagetab3" runat="server"></asp:Panel>
                                    </div>

                                    <div class="grid">
                                        <div class="row">
                                            <div class="span2">
                                                <label>Company<sup class="fg-red">*</sup></label>
                                                <label>Session<sup class="fg-red">*</sup></label>
                                            </div>
                                            <div class="span3">
                                                <asp:DropDownList ID="drpCompany2" runat="server" Width="200"></asp:DropDownList><br />
                                                <asp:DropDownList ID="drpSession2" runat="server" Width="200"></asp:DropDownList>
                                            </div>
                                            <div class="span4">
                                                <button class="shortcut primary" runat="server" id="bttnApprove" onserverclick="bttnApprove_click">
                                                    <i class="icon-auction"></i>
                                                    Approve</button>
                                                <button class="shortcut success" runat="server" id="bttnFreeze" onserverclick="bttnFreeze_click">
                                                    <i class="icon-locked"></i>
                                                    Freeze</button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
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

                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:HiddenField ID="IsReplicated" runat="server" />

                    </div>

                    <div id="tab4" class="tab-pane fade">
                        <asp:UpdateProgress ID="UpdateProgress4" runat="server">
                            <ProgressTemplate>
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:UpdatePanel ID="UpdatePanel6" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="container">
                                    <div class="row">
                                        <div style="font-weight: normal; font-size: large;">Process Employee</div>
                                        <asp:Panel ID="pnlmessagetab4" runat="server"></asp:Panel>
                                    </div>

                                    <div class="grid">
                                        <div class="row">

                                            <div class="span4">
                                                <button class="shortcut primary" runat="server" id="Button1" onserverclick="bttnProcess1_click">
                                                    <i class="icon-spin"></i>
                                                    Process</button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <asp:Panel ID="pnlMessages12" runat="server"></asp:Panel>
                                        </div>
                                    </div>

                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:HiddenField ID="HiddenField1" runat="server" />


                    </div>
                    <div id="menu4" class="tab-pane fade">
                        <asp:UpdateProgress ID="UpdateProgress5" runat="server">
                            <ProgressTemplate>
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:UpdatePanel ID="UpdatePanel7" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="container">
                                    <div class="row">
                                        <div style="font-weight: normal; font-size: large;">Process Allowances</div>
                                        <asp:Panel ID="pnlmessagetab5" runat="server"></asp:Panel>
                                    </div>


                                    <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                                        <ContentTemplate>
                                            <div class="grid">
                                                <div class="row">
                                                    <div class="span2">
                                                        <label>Company<sup class="fg-red">*</sup></label>
                                                        <label>Session<sup class="fg-red">*</sup></label>
                                                        <label>Allowance<sup class="fg-red">*</sup></label>
                                                    </div>
                                                    <div class="span3">
                                                        <asp:DropDownList ID="drpCompany11" runat="server" Width="200"></asp:DropDownList><br />
                                                        <asp:DropDownList ID="drpSession11" runat="server" Width="200"></asp:DropDownList><br />
                                                        <asp:DropDownList ID="drpAllowance" runat="server" Width="200"></asp:DropDownList>
                                                    </div>
                                                    <div class="span4">
                                                        <button class="shortcut primary" runat="server" id="Button2" onserverclick="bttnProcessAllowance">
                                                            <i class="icon-spin"></i>
                                                            Process</button>
                                                        <button class="shortcut success" runat="server" id="Button3" onserverclick="bttnNew_click">
                                                            <i class="icon-new"></i>
                                                            New</button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <asp:Panel ID="pnlMessages122" runat="server"></asp:Panel>
                                                </div>
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

                    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>

                    <script>
                        webshims.setOptions('forms-ext', { types: 'date' });
                        webshims.polyfill('forms forms-ext');
                    </script>


                </div>
      
                  </ContentTemplate>
    </asp:UpdatePanel>















</asp:Content>
