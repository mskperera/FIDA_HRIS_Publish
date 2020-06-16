<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LeaveApplyByHR.aspx.cs" Inherits="Smarter_HRIS.LeaveApplyByHR" %>

<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/dcalendar.picker.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 211px;
        }

        .auto-style3 {
            width: 271px;
        }

        .auto-style4 {
            width: 30px;
        }

        .auto-style5 {
            width: 211px;
            height: 31px;
        }

        .auto-style6 {
            width: 30px;
            height: 31px;
        }

        .auto-style7 {
            width: 271px;
            height: 31px;
        }

        .auto-style8 {
            height: 31px;
        }

        .auto-style9 {
            width: 223px;
        }

        .auto-style10 {
            height: 31px;
            width: 223px;
        }
    </style>
    <script>
        $(function () {
            $("#datepicker1").datepicker();
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
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
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeAllNames",
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



    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>



    <style>
        /*gridview*/
        .table table tbody tr td a,
        .table table tbody tr td span {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }

        .table table > tbody > tr > td > span {
            z-index: 3;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7;
        }

        .table table > tbody > tr > td:first-child > a,
        .table table > tbody > tr > td:first-child > span {
            margin-left: 0;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px;
        }

        .table table > tbody > tr > td:last-child > a,
        .table table > tbody > tr > td:last-child > span {
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }

        .table table > tbody > tr > td > a:hover,
        .table table > tbody > tr > td > span:hover,
        .table table > tbody > tr > td > a:focus,
        .table table > tbody > tr > td > span:focus {
            z-index: 2;
            color: #23527c;
            background-color: #eee;
            border-color: #ddd;
        }
        /*end gridview */
    </style>

    <script type="text/javascript">

        function SelectAllCheckboxes1(chk) {
            $('#<%=grdLeaveDetails.ClientID%>').find("input:checkbox").each(function () {
                if (this != chk) { this.checked = chk.checked; }
            });
        }
    </script>


    <style>
        .has-search .form-control-feedback {
            position: absolute;
            z-index: 2;
            display: block;
            width: 2.375rem;
            height: 2.375rem;
            line-height: 2.375rem;
            text-align: center;
            pointer-events: none;
            color: #aaa;
        }
    </style>


    <link href="dialogbox/themes/alertify.core.css" rel="stylesheet" />
    <link href="dialogbox/themes/alertify.default.css" rel="stylesheet" />

    <meta name="viewport" content="width=device-width">
    <style>
        .alertify-log-custom {
            background: blue;
        }
    </style>


    <script>

        function confirmboxdeleteleave() {
            reset();
           // var hdnfld = document.getElementById('<%= confirmation.ClientID %>');

            alertify.confirm("Do you want to Delete Selected Leaves?", function (e) {
                if (e) {
                    // hdnfld.value = '1';
                    return true;
                    alertify.success("Success...");

                } else {
                    // hdnfld.value = '0';
                    return false;
                    alertify.error("Operation was Cancelled by the User...");
                }
            });
                   //     return false;
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="confirmation" runat="server" ClientIDMode="Static" />

        <h2>Leave Apply</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1">Leave Application Bulk Upload </a></li>
            <li><a href="#tab2">Leave Application</a></li>
        </ul>

        <div class="tab-content">

            <div id="tab1" class="tab-pane fade in active">
                <div style="font-weight: normal; font-size: large;">Leave Application Bulk Upload
                </div>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>


                        <div class="container">
                            <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>

                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-4">
                                    <button class="shortcut info" type="button" runat="server" id="bttnDownload" onserverclick="bttnDownload_ServerClick">
                                        <i class="icon-download"></i>
                                        Download Excel</button>
                                </div>
                                <div class="col-md-4">
                                    <asp:Panel ID="pnlUpload" runat="server">

                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <br />
                                        <asp:Button ID="bttnUploadEx" CssClass="shortcut info" runat="server" Text="Upload" OnClick="bttnUploadEx_Click" />

                                    </asp:Panel>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>

                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group row">
                                        <label for="txtEmployee" class="col-sm-3 col-form-label">Employee</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox CssClass="form-control" AutoPostBack="true" ID="txtEmployee" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group row">
                                        <label for="txtFromDate" class="col-sm-4 col-form-label">From Date</label>
                                        <div class="col-sm-8">
                                            <input type="date" id="bulkFromDate" class="form-control" runat="server" name="txtFromDate" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group row">
                                        <label for="txtToDate" class="col-sm-4 col-form-label">To Date</label>
                                        <div class="col-sm-8">
                                            <input type="date" id="bulkToDate" class="form-control" runat="server" name="txtToDate" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-1">
                                    <button class="shortcut info" type="button" runat="server" id="btnsearch" onserverclick="btnsearch_ServerClick">
                                        <i class="icon-search"></i>
                                        Search</button>
                                </div>
          
                                <div class="col-md-1">
                                    <asp:LinkButton Font-Underline="false" CssClass="shortcut warning" runat="server" ID="btnremove" OnClientClick="return confirm('Are you sure you want to Delete Selected Leave/s?');return false;" OnClick ="btndelete_ServerClick">
                                <i class="icon-remove"></i>Delete
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <br />

                            <br />

                            <div class="col-md-12">
                                <asp:GridView ID="grdLeaveDetails" CssClass="table table-bordered bs-table table-hover"
                                    DataKeyNames="LeaveApplyID" Width="100%"
                                    runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" PageSize="1000" ForeColor="#333333"
                                    GridLines="Vertical" PageIndex="0" AllowPaging="true" PagerSettings-Position="TopAndBottom">
                                    <HeaderStyle BackColor="#337ab7 " Font-Size="XX-Small" Font-Bold="false" ForeColor="White" />
                                    <EditRowStyle BackColor="#ffffcc" />
                                    <EmptyDataRowStyle ForeColor="Red" CssClass="table table-bordered" />
                                    <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                                    <Columns>
                                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="true" />
                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                        <asp:BoundField DataField="LeaveTypeName" HeaderText="Leave Type Name" />
                                        <asp:BoundField DataField="ApplyDate" HeaderText="Apply Date" DataFormatString="{0:yyyy/M/dd}" />
                                        <asp:BoundField DataField="FromDate" HeaderText="From Date" DataFormatString="{0:yyyy/M/dd}" />
                                        <asp:BoundField DataField="ToDate" HeaderText="To Date" DataFormatString="{0:yyyy/M/dd}" />
                                        <asp:BoundField DataField="StartTime" HeaderText="Start Time" DataFormatString="{0:hh\:mm\:ss}" />
                                        <asp:BoundField DataField="EndTime" HeaderText="End Time" DataFormatString="{0:hh\:mm\:ss}" />
                                        <asp:BoundField DataField="Days" HeaderText="Days" />
                                        <asp:BoundField DataField="Hours" HeaderText="Hours" />
                                        <asp:BoundField DataField="Minutes" HeaderText="Minutes" />
                                        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                                        <asp:BoundField DataField="IsApproved" HeaderText="IsApproved" />
                                        <asp:BoundField DataField="LeaveDayCount" HeaderText="Leave Day Count" />
                                        <asp:BoundField DataField="LeaveName" HeaderText="Leave Name" />

                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Check All
                                <input id="Checkbox2" type="checkbox" onclick="SelectAllCheckboxes1(this)" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="ApproveCheckBox" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
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

                    </ContentTemplate>

                    <Triggers>
                        <asp:PostBackTrigger ControlID="bttnDownload" />
                        <asp:PostBackTrigger ControlID="bttnUploadEx" />
                        <asp:PostBackTrigger ControlID="btnsearch" />
                        <asp:PostBackTrigger ControlID="btnremove" />

                        
                    </Triggers>
                </asp:UpdatePanel>



            </div>






            <div id="tab2" class="tab-pane fade">
                <div style="font-weight: normal; font-size: large;">Leave Application</div>

                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <asp:HiddenField ID="lblUserID" runat="server" />
                        <asp:HiddenField ID="lblEmpID" runat="server" />

                        <div class="container">
                            <div class="row">

                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                                <div class="col-md-12">
                                    <div class="form-group-sm row">
                                        <label for="drpCompany1" class="col-sm-2 col-form-label fg-cyan" style="font-weight: normal;">Employee Name <sup class="fg-red">*</sup></label>
                                        <div class="col-sm-6">
                                            <div class="input-control password warning-state">
                                                <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-sm-2">
                                            <asp:Button ID="Button3" runat="server" Text="search" CssClass="large warning" OnClick="bttnSearch_Click" />
                                            <%--  onserverclick="bttnProcess_click"--%>
                                        </div>
                                    </div>

                                    <br />
                                    <div class="form-group-sm row">
                                        <label for="drpSession1" class="col-sm-2 col-form-label fg-cyan" style="font-weight: normal;">Reason For Leave <sup class="fg-red">*</sup></label>
                                        <div class="col-sm-10">
                                            <div id="Div4" runat="server">
                                                <asp:TextBox ID="txtreason" CssClass="form-control" runat="server" Width="500px"></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>

                                    <br />


                                    <div class="form-group-sm row">
                                        <asp:Label ID="Label1" class="col-sm-2 col-form-label fg-cyan" runat="server" Text="Leave Type" ViewStateMode="Disabled"></asp:Label>
                                        <div class="col-sm-10">
                                            <div id="Div1" runat="server">
                                                <asp:DropDownList ID="drpLeavetype" CssClass="form-control" runat="server" Width="213px" AutoPostBack="true" OnSelectedIndexChanged="drpLeavetype_SelectedIndexChanged" />

                                            </div>
                                        </div>
                                    </div>

                                    <br />


                                    <div class="form-group-sm row">
                                        <asp:Label ID="kk" class="col-sm-2 col-form-label fg-cyan" runat="server" Text="Leave Category" ViewStateMode="Disabled"></asp:Label>
                                        <div class="col-sm-10">
                                            <div id="Div2" runat="server">

                                                <asp:DropDownList ID="drpLeaveCategory" CssClass="form-control" runat="server" Width="213px" AutoPostBack="true" OnSelectedIndexChanged="drpLeaveCategory_SelectedIndexChanged" />

                                            </div>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="form-group-sm row">
                                        <asp:Label ID="Label2" class="col-sm-2 col-form-label fg-cyan" runat="server" Text="Leave application date" ViewStateMode="Disabled"></asp:Label>
                                        <div class="col-sm-10">
                                            <div id="Div3" runat="server">
                                                <asp:Label ID="lblAppDate" class="col-sm-6 col-form-label fg-cyan" runat="server" Text="__ __"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                    <br />



                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group-sm row">
                                                <asp:Label ID="Label3" class="col-sm-2 col-form-label fg-cyan" runat="server" Text="From Date  &amp; Time"></asp:Label>
                                                <div class="col-sm-3">
                                                    <input type="date" class="form-control" id="txtFromDate" runat="server" name="txtFromDate" />
                                                </div>
                                                <div class="col-sm-2">
                                                    <input type="time" class="form-control" id="txtFromTime" runat="server" name="usr_time" />
                                                </div>

                                                <div class="col-sm-2">
                                                    <%--OnClick="Button2_Click"--%>
                                                    <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
                                                </div>
                                            </div>
                                        </div>

                                        <br />
                                        <br />
                                        <div class="col-md-12">
                                            <div class="form-group-sm row">
                                                <asp:Label ID="Label5" class="col-sm-2 col-form-label fg-cyan" runat="server" Text="ToDate &amp; Time "></asp:Label>
                                                <div class="col-sm-3">
                                                    <input type="date" class="form-control" id="txtToDate" runat="server" name="txtToDate" />

                                                </div>
                                                <div class="col-sm-2">
                                                    <input type="time" class="form-control" id="txtToTime" runat="server" name="usr_time" />
                                                </div>

                                                <div class="col-sm-2">
                                                    <asp:Button ID="Button2" class="small info" runat="server" Text="Validate" OnClick="Button2_Click" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <br />
                                    <br />

                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>
                                                <asp:Label ID="Label6" class="fg-cyan" runat="server" Text="Days  "></asp:Label>
                                                <asp:TextBox ID="txtDate" runat="server" Width="88px" OnTextChanged="txtDate_TextChanged"></asp:TextBox>
                                                <%--OnTextChanged="txtDate_TextChanged"--%>
                                            </label>
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                <asp:Label ID="Label8" class="fg-cyan" runat="server" Text=" Hours  "></asp:Label>
                                                <asp:TextBox ID="txtHours" runat="server" Width="111px"></asp:TextBox>
                                            </label>
                                        </div>

                                        <div class="col-md-3">
                                            <label>
                                                <asp:Label ID="Label9" class="fg-cyan" runat="server" Text="Minutes  "></asp:Label>
                                                <asp:TextBox ID="txtMins" runat="server" Width="120px"></asp:TextBox>
                                            </label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button ID="Button1" Class="large info" runat="server" Text="Submit" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                    <br />

                                </div>
                                <br />

                                <%--<asp:Button ID="Button3" Class="large success" runat="server" Text="New" OnClick="Button1_Click" />--%>
                                <%--<div class="row">
                        <button class="shortcut success" runat="server" id="bttnSave" onserverclick="Button1_Click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                            </div>
                        <br />--%>
                                <%--OnClick="Button1_Click"--%>
                                <br />
                                <br />
                                <div class="grid">
                                    <div class="row">
                                        <div class="span10">
                                            <asp:Panel ID="pnlLeaveBalance" runat="server"></asp:Panel>
                                        </div>
                                    </div>

                                </div>
                            </div>
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

        </div>
    </div>



    <script src="dialogbox/lib/alertify.min.js"></script>
    <script>
        function reset() {
            $("#toggleCSS").attr("href", "dialogbox/themes/alertify.default.css");
            alertify.set({
                labels: {
                    ok: "OK",
                    cancel: "Cancel"
                },
                delay: 5000,
                buttonReverse: false,
                buttonFocus: "ok"
            });
        }

        // ==============================
        // Standard Dialogs
        $("#alert").on('click', function () {
            reset();
            alertify.alert("This is an alert dialog");
            return false;
        });

 

        $("#prompt").on('click', function () {
            reset();
            alertify.prompt("This is a prompt dialog", function (e, str) {
                if (e) {
                    alertify.success("You've clicked OK and typed: " + str);
                } else {
                    alertify.error("You've clicked Cancel");
                }
            }, "Default Value");
            return false;
        });

        // ==============================
        // Ajax
        $("#ajax").on("click", function () {
            reset();
            alertify.confirm("Confirm?", function (e) {
                if (e) {
                    alertify.alert("Successful AJAX after OK");
                } else {
                    alertify.alert("Successful AJAX after Cancel");
                }
            });
        });

        // ==============================
        // Standard Dialogs
        $("#notification").on('click', function () {
            reset();
            alertify.log("Standard log message");
            return false;
        });

        $("#success").on('click', function () {
            reset();
            alertify.success("Success log message");
            return false;
        });

        $("#error").on('click', function () {
            reset();
            alertify.error("Error log message");
            return false;
        });

        // ==============================
        // Custom Properties
        $("#delay").on('click', function () {
            reset();
            alertify.set({ delay: 10000 });
            alertify.log("Hiding in 10 seconds");
            return false;
        });

        $("#forever").on('click', function () {
            reset();
            alertify.log("Will stay until clicked", "", 0);
            return false;
        });

        $("#labels").on('click', function () {
            reset();
            alertify.set({ labels: { ok: "Accept", cancel: "Deny" } });
            alertify.confirm("Confirm dialog with custom button labels", function (e) {
                if (e) {
                    alertify.success("You've clicked OK");
                } else {
                    alertify.error("You've clicked Cancel");
                }
            });
            return false;
        });

        $("#focus").on('click', function () {
            reset();
            alertify.set({ buttonFocus: "cancel" });
            alertify.confirm("Confirm dialog with cancel button focused", function (e) {
                if (e) {
                    alertify.success("You've clicked OK");
                } else {
                    alertify.error("You've clicked Cancel");
                }
            });
            return false;
        });

        $("#order").on('click', function () {
            reset();
            alertify.set({ buttonReverse: true });
            alertify.confirm("Confirm dialog with reversed button order", function (e) {
                if (e) {
                    alertify.success("You've clicked OK");
                } else {
                    alertify.error("You've clicked Cancel");
                }
            });
            return false;
        });

        // ==============================
        // Custom Log
        $("#custom").on('click', function () {
            reset();
            alertify.custom = alertify.extend("custom");
            alertify.custom("I'm a custom log message");
            return false;
        });

        // ==============================
        // Custom Themes
        $("#bootstrap").on('click', function () {
            reset();
            $("#toggleCSS").attr("href", "../themes/alertify.bootstrap.css");
            alertify.prompt("Prompt dialog with bootstrap theme", function (e) {
                if (e) {
                    alertify.success("You've clicked OK");
                } else {
                    alertify.error("You've clicked Cancel");
                }
            }, "Default Value");
            return false;
        });
	</script>


</asp:Content>
