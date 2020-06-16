<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Smarter_HRIS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>

    <%--    <script src="@Url.Content("~/assets/admin/sweetalert/sweetalert.min.js")"></script>
   <link rel="stylesheet" type="text/css" href="@Url.Content("~/assets/admin/sweetalert/sweetalert.css")">--%>
    <script src="SweetAlert/sweetalert-master/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="SweetAlert/sweetalert-master/dist/sweetalert.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
    
    <script type="text/javascript">
        function BDayalert(empName) {
            swal({

                title: '<span style="font-family: cursive"> Hi</span> <span style="font-size: 25px"> ' + empName + '</span> ',
                text: ' <span style="font-size: 20px">Many happy returns of the day !!</span>.</br><span style="color:#81acfd"><small> Team Smart HRIS ™ </small> </span>',
                imageUrl: "Images/SmartHRIS0.png",
                imageSize: '300x80',
                showConfirmButton: false,
                allowOutsideClick: true,
                html: true,
                modal: true,
                width: 600,
                padding: 100,
                background: '#fff url(/Images/birthday.jpg)'
            });
        }
    </script>

    <%--3 months--%>
    <script type="text/javascript">
        function ProbationAlert3(empName) {
            swal({
                title: 'Hi <span style="font-size: 25px"> ' + empName + '</span> ',
                //text: ' <span style="font-size: 20px">Many happy returns of the day !!</span>.</br><span style="color:#81acfd"><small> Team Smart HRIS ™ </small> </span>',
                text: 'Congratulations you have just completed 3 months',
                imageUrl: "Images/SmartHRIS0.png",
                imageSize: '300x80',
                showConfirmButton: false,
                allowOutsideClick: true,
                html: true,
                modal: true,
                width: 600,
                padding: 100,
            });
        }
    </script>

    <%--6 months--%>
    <script type="text/javascript">
        function ProbationAlert6(empName) {
            swal({
                title: 'Hi <span style="font-size: 25px"> ' + empName + '</span> ',
                //text: ' <span style="font-size: 20px">Many happy returns of the day !!</span>.</br><span style="color:#81acfd"><small> Team Smart HRIS ™ </small> </span>',
                text: 'Congratulations you have just completed 6 months',
                imageUrl: "Images/SmartHRIS0.png",
                imageSize: '300x80',
                showConfirmButton: false,
                allowOutsideClick: true,
                html: true,
                modal: true,
                width: 600,
                padding: 100,
            });
        }
    </script>

    <script type="text/javascript">
        function ProbationAlert9(empName) {
            swal({
                title: 'Hi <span style="font-size: 25px"> ' + empName + '</span> ',
                //text: ' <span style="font-size: 20px">Many happy returns of the day !!</span>.</br><span style="color:#81acfd"><small> Team Smart HRIS ™ </small> </span>',
                text: 'Congratulations you have just completed 9 months',
                imageUrl: "Images/SmartHRIS0.png",
                imageSize: '300x80',
                showConfirmButton: false,
                allowOutsideClick: true,
                html: true,
                modal: true,
                width: 600,
                padding: 100,
            });
        }
    </script>

    <script type="text/javascript">
        function ProbationAlert12(empName) {
            swal({
                title: 'Hi <span style="font-size: 25px"> ' + empName + '</span> ',
                //text: ' <span style="font-size: 20px">Many happy returns of the day !!</span>.</br><span style="color:#81acfd"><small> Team Smart HRIS ™ </small> </span>',
                text: 'Congratulations you have just completed 12 months',
                imageUrl: "Images/SmartHRIS0.png",
                imageSize: '300x80',
                showConfirmButton: false,
                allowOutsideClick: true,
                html: true,
                modal: true,
                width: 600,
                padding: 100,
            });
        }
    </script>


    <style>
        .sweet-alert h2 {
            margin-bottom: 5px;
            margin-top: 0px;
        }

        .sweet-alert .sa-icon.sa-custom {
            display: block;
            width: 300px;
            height: 100px;
            margin-bottom: 10px;
        }

        /*.sweet-alert[data-has-confirm-button=false][data-has-cancel-button=false] {
            background: bisque;
            background: url(Images/birthday.jpg);
        }*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <div class="row">
                <div class="tile-group six">

                    <a class="tile double double-vertical bg-cobalt" data-click="transform" href="EmployeeProfile.aspx">
                        <div class="tile-content icon">
                            <span class="icon-user-3"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Employee Profile</div>
                        </div>
                    </a>

         <%--                <a class="tile double bg-emerald" data-click="transform" href="AttendanceDisplay3.aspx">
                        <div class="tile-content icon">
                            <span class="icon-stats"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Attendance Display</div>
                        </div>
                    </a>--%>

                    <a class="tile double bg-emerald" data-click="transform" href="AttendanceView.aspx">
                        <div class="tile-content icon">
                            <span class="icon-stats"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Attendance Display</div>
                        </div>
                    </a>

                    <a class="tile double bg-amber" data-click="transform" href="LeaveApply.aspx">
                        <div class="tile-content icon">
                            <span class="icon-new-tab"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Leave Application</div>
                        </div>
                    </a>

                    <a class="tile double bg-violet" data-click="transform" href="LockScreen1.aspx">
                <div class="tile-content icon">
                    <span class="icon-user-3"></span>
                </div>
                <div class="brand">
                    <div class="label trans" style="font-size:15px">Lock Sceen (beta)</div>
                </div>
                </a>

                    <a class="tile double bg-cyan" data-click="transform" href="MessagingPortal.aspx">
                        <div class="tile-content icon">
                            <span class="icon-mail"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Mail Portal (Beta)</div>
                        </div>
                    </a>

                    <a class="tile double bg-mauve" data-click="transform" href="ManualAttendance.aspx">
                        <div class="tile-content icon">
                            <span class="icon-pencil"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Apply Manual Attendance</div>
                        </div>
                    </a>

                    <a class="tile double bg-violet" data-click="transform" href="EmployeeDesktop.aspx">
                        <div class="tile-content icon">
                            <span class="icon-screen"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Employee Desktop</div>
                        </div>
                    </a>

                    <a class="tile double bg-lightRed" data-click="transform" href="NotificationCenter.aspx">
                        <div class="tile-content icon">
                            <span class="icon-broadcast"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Notification Center</div>
                        </div>
                    </a>

                    <a class="tile double bg-darkCyan" data-click="transform" href="ShiftChangeDetails.aspx">
                        <div class="tile-content icon">
                            <span class="icon-smiley"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Shift Change Details</div>
                        </div>
                    </a>


                    <a class="tile double bg-darkCyan" runat="server" id="otapprovetile" data-click="transform" href="OTApproval_SelfServicePortal.aspx">
                        <div class="tile-content icon">
                            <span class="icon-smiley"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">OT Approval</div>
                        </div>
                    </a>


                    <a class="tile bg-gray" runat="server" id="logout" data-click="transform" href="Login.aspx">
                        <div class="tile-content icon">
                            <span class="icon-switch"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Log Out</div>
                        </div>
                    </a>


                    <a class="tile bg-orange" runat="server" id="passwordchange" data-click="transform" href="EmpChangePassword.aspx">
                        <div class="tile-content icon">
                            <span class="icon-key-2"></span>
                        </div>
                        <div class="brand">
                            <div class="label trans" style="font-size: 15px">Password Change</div>
                        </div>
                    </a>

                 <%--                       <a class="tile double bg-darkOrange" data-click="transform" href="AssingnEmployeeToSupervisor.aspx" >
                        <div class="tile-content icon">
                            <span class=" icon-share-3"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Assingn EmployeeTo Supervisor</div>
                        </div>
                    </a>
                      <a class="tile double bg-darkTeal" data-click="transform" href="VarifyEmployee.aspx">
                        <div class="tile-content icon">
                            <span class=" icon-checkmark"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Varify Employee Work</div>
                        </div>
                    </a>--%>
                </div>
            </div>
        </div>



        <%--<div class='accordion with-marker' data-role='accordion' data-closeany='true'>
            <div class='accordion-frame'>
                <a class='heading ribbed-darkCobalt fg-white' href='#'><i class='icon-mail'></i>Kokila    -    Subject 001      -      April 10</a>
                    <div class='content'>
                        <p class="fg-gray">From : <b>Kokila</b><br />
                        Subject : <b>Subject 001</b><br /></p>
                        <p class="fg-gray">@ 2015-04-10 09:45:00</p>
                        <p>this is body content......uygfugawdufgasdhfuawegfiasgdfkhwgeikyasgdfahwgekufyagsdifagiefgaweifgaisdfhaiweygfaisyudgf</p>
                        </div>
                    </div>
            </div>--%>
    </div>
</asp:Content>
