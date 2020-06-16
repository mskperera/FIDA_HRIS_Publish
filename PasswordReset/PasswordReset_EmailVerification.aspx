<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset_EmailVerification.aspx.cs" Inherits="Smarter_HRIS.PasswordReset_EmailVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Reset Email Verification</title>


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
            padding: 10px !important;
            background-color: #0068cc !important;
            /*background-image: linear-gradient(to right top, #1c4889, #204997);*/
            margin: 20px !important;
            color: white !important;
            border: 1px white solid !important;
            border-radius: 4px !important;
            font-size: 20px !important;
        }

            .PassResetButton:hover {
           background-color: #0153a5 !important;
                border: 2px #007feb solid;
                border: 1px #006bff solid !important;
            }

   .Panel {
            display: flex;
            margin: 0 auto;
        }
        .title {
            font-size: 20px;
            font-weight: 400;
            padding: 10px;
            font-family: Arial;
        }

        .PassResetBackDrop {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            background-color: #2360a1;
        }

        .EmailInput {
            padding: 7px 5px;
            width: 40%;
        }

        .message {
            color: red;
            font-size: 20px;
            margin-top: 10px;
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

        function ValidateEmail(mail) {
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value)) {
                return (true)
            }
            alert("You have entered an invalid email address!")
            return (false)
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

                    <div class="Panel">

                        <div style="width:40%">
                            <div style="text-align:center">

                            <h2 style="margin-bottom: 20px;">Forgot your password?</h2>
                            <img style="width:400px" src="../Images/emailverifaction_img.png" />
                            
                            </div>
                        </div>
                        <div style="width:60%">
                            <div style="margin-top:20px;">


                                <div class="title">Enter your registered email address here...</div>
                                <input runat="server" id="txtemail" class="EmailInput" type="text" placeholder="Email Address" />
                                <p>Ex:abc@domain.com</p>



                                <div>
                                    <input type="button" runat="server" id="btn_verify" class="PassResetButton" onserverclick="btn_verify_ServerClick" value="Submit" />
                                </div>

                                <div>
                                    <label class="message" runat="server" style="color: red; font-weight: bold;" id="lbl_message"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>


    </form>


</body>
</html>
