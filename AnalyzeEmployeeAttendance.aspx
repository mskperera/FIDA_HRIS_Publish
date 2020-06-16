<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AnalyzeEmployeeAttendance.aspx.cs" Inherits="Smarter_HRIS.AnalyzeEmployeeAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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



    <script>


        function Get_AttendanceAnalyzeProgress() {
            Smarter_HRIS.HRIS_Service.Get_AttendanceAnalyzeProgress(Get_AttendanceAnalyzeProgressSuccessCallBack);
        }

        function Get_AttendanceAnalyzeProgressSuccessCallBack(result) {
         
            $('#<%=lblcurrentstage.ClientID%>').html(result["CurrentStageName"]);

            //  document.getElementById('lblkData').innerHTML = result;
        }


        window.setInterval(function () {
            /// call your function here
            // alert('hi');
            Get_AttendanceAnalyzeProgress();
        }, 5000);

    </script>


    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .modal {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 0;
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
            -moz-opacity: 0.8;
        }

        .center {
            z-index: 1000;
            margin: 300px auto;
            padding: 10px;
            width: 130px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }

            .center img {
                height: 115px;
                width: 115px;
            }
    </style>

    <style>
        .attendanceprogress {
            border: solid;
            padding: 10px;
            background-color: #e8f5ff;
            width: 500px;
            font-weight: bold;
        }
    </style>

    
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


    <style>
        .progressfont {
	-webkit-animation-direction: normal;
	-webkit-animation-duration: 10s;
	-webkit-animation-iteration-count: infinite;
	-webkit-animation-name: colours;
	-webkit-animation-timing-function: ease;
}

@-webkit-keyframes colours {
	  0% {color: #39f;}
	 15% {color: #8bc5d1;}
	 30% {color: #f8cb4a;}
	 45% {color: #95b850;}
	 60% {color: #944893;}
	 75% {color: #c71f00;}
	 90% {color: #bdb280;}
	100% {color: #39f;}
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/HRIS_Service.asmx" />
        </Services>
    </asp:ScriptManager>

    <div class="container">

        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:HiddenField ID="lblEmpID" runat="server" />
        <br />
        <h2>Analyze Employee Attendance</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1">Analyze Single Employee Attendance</a></li>
            <li><a href="#tab2">Analyze Employee Attendance</a></li>
        </ul>

        <div class="tab-content">

            <div id="tab1" class="tab-pane fade in active">

                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <div class="container">
                            <div class="row">
                                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                            </div>
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="grid">
                                        <div class="row">
                                            <div class="form-group-sm row">
                                                <label for="ddlCompany" class="col-sm-2 col-form-label">Employee<sup class="fg-red">*</sup></label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtEmployee" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-1">
                                                    <asp:Button ID="bttnSearch2" runat="server" CssClass="primary mediam" Text="Select" OnClick="bttnSearch1_click" />
                                                </div>
                                            </div>


                                            <div class="form-group-sm row">
                                                <label for="ddlCompany" class="col-sm-2 col-form-label">Employee<sup class="fg-red">*</sup></label>
                                                <div class="col-sm-10">
                                                    <asp:Label ID="lblEmployeeName" Font-Bold="true" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>


                                        </div>

                                        <div class="row">
                                            <div class="span2">
                                                <label>From Date<sup class="fg-red">*</sup></label>
                                                <label>To Date<sup class="fg-red">*</sup></label>
                                            </div>
                                            <div class="span2">
                                                <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                                                <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <button class="shortcut success" runat="server" type="button" id="bttnSave" onserverclick="AnalyzeAttendance_click">
                                                <i class=" icon-meter-fast"></i>
                                                Process</button>
                                            <button class="shortcut warning" id="bttnNew" runat="server" onserverclick="bttnNew_click">
                                                <i class="icon-new"></i>
                                                New</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
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
                            <br />
                            <div class="row">
                                <asp:Panel ID="pnlmessagetab2" runat="server"></asp:Panel>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <p>Attendance Full Analyze Progress</p>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="attendanceprogress progressfont">
                                                <div style="color:black">
                                                <table style="background-color:transparent;">
                                                    <%--<tr>
                                                        <td>Total Employee Processed :</td>
                                                        <td style="font-weight:bold;">
                                                            <asp:Label ID="lblEmployeeProcessed" runat="server" Text="Loading..."></asp:Label>&nbsp; <span style="font-weight:normal"> &sol;</span>
                                                            <asp:Label  ID="lbltotalEmployee" runat="server" Text=""></asp:Label>
                                                        </td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td>Progress:</td>
                                                        <td  >
                                                            <%--<asp:Label  ID="lblstagecompleted" runat="server" Text="Loading..."></asp:Label>&nbsp; &sol;--%>
                                                            <asp:Label   ID="lblcurrentstage" runat="server" Text=""></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                            <div class="row">
                                <asp:Panel ID="pnlPreview" runat="server"></asp:Panel>
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



</asp:Content>
