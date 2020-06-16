<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset_VerifyByCode.aspx.cs" Inherits="Smarter_HRIS.PasswordReset_VerifyByCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Reset Verify By Code</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">



    <style>
        .product .img-responsive {
            margin: 0 auto;
        }
    </style>

    <style>
        .avatar {
            vertical-align: middle;
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }
    </style>


    <style>
        .PassResetPopup {
            margin: 0 auto;
              background-color: #ffffff;
              box-shadow: 10px 10px 8px #2e2e2e;
            /*background-image: linear-gradient(to right top, #cae0ff, #c4ddff, #bed9ff, #b8d6ff, #b2d2ff);*/
            width: 80%;
            height: auto;
            text-align: center;
            margin-top: 5%;
            border-radius: 20px;
            padding: 40px;
        }

        .PassResetButton {
            background-color: #0068cc !important;
            /*background-image: linear-gradient(to right top, #1c4889, #204997);*/
            margin: 20px;
            color: white !important;
            width: 200px;
            display: inline-block;
            padding: 6px 10px;
            font-weight: 500;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            user-select: none;
            font-size: 15px;
            line-height: 1.5;
            border-radius: 4px;
            font-family: arial;
            border: 1px white solid !important;
            border-radius: 4px !important;
            font-size: 20px !important;
        }

            .PassResetButton:hover {
                background-color: #0153a5 !important;
                border: 2px #007feb solid;
                border: 1px #006bff solid !important;
            }

        .title {
            font-size: 20px;
            font-weight: 400;
            margin-top:10px;
        }

        .msgemail {
            font-size: 20px;
            font-weight: 400;
            font-weight: bold;
            color: #0153a5;
        }


        .PassResetBackDrop {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
             background-color: #0068cc !important;
        }

        .EmailInput {
            margin-top: 15px;
            padding: 7px 5px;
            width: 40%;
        }
        li{
            font-size:17px;
        }
    </style>


    <script>

        function ClosePassResetPopupForm() {
            var x = document.getElementById("passresetBackdrop");
            x.style.display = "none";

            var p = document.getElementById("passresetPop");
            p.style.display = "none";
        }

        function ShowPassResetPopupForm() {
            var x = document.getElementById("passresetBackdrop");
            x.style.display = "block";

            var p = document.getElementById("passresetPop");
            p.style.display = "block";
        }
    </script>




</head>
<body>
    <form id="form1" runat="server">

        <br />
        <br />


        <div class="container">

            <div class="PassResetBackDrop">
                <div class="PassResetPopup">

                    <div>
                        <img id="userImage" style="margin-top: 10px;margin-right:5px" runat="server" src="avatar.png" alt="Avatar" class="avatar" />
  
                    </div>
                                          <label style="font-weight:bold" runat="server" id="txtloginName"></label>
                    <div><a runat="server" id="isNotYouLink" style="font-weight: bold" href="#" onserverclick="isNotYouLink_ServerClick">Is this not you? click to back</a></div>

                    <div class="title">
                        We sent you a verification code to      <span class="msgemail" runat="server" id="txtmessageEmail">__</span>
                        <br />
                        It's may be take few minutes for this code to arrive.
                        <div style="margin-top: 10px;">
                            <div style="width: 60%; margin: 0 auto; background-color: #fc3e00; padding: 10px 20px;border-radius:6px">
                                   <p style="color:white;text-align:left;font-size:17px;font-weight:bold">Note:</p>
                                <ul style="text-align: left; color: white">
                                    <li>This code will be valid for 15 minutes after you request it.</li>
                                    <li>Do not close this window until verify code</li>
                                    <li>If a code doesn't arrive, check your email's spam folder before requesting a new one.</li>
                                     <li>If you did not receive a code, Request new code or contact us</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <input runat="server" id="txtverificatoinCode" class="EmailInput" type="text" placeholder="Enter Verification Code Here" />
               
                    <div>
                        <input type="button" runat="server" id="btn_reset" class="PassResetButton" onserverclick="btn_reset_ServerClick" value="Verify" />

                    </div>

                    <div>
                        <label runat="server" style="color: red; font-weight: bold;" id="lbl_message"></label>
                    </div>
                </div>
            </div>



        </div>


    </form>


</body>
</html>
