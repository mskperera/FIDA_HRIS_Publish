<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="LoginHRPasswordReset_ByVerification.aspx.cs" Inherits="Smarter_HRIS.LoginHRPasswordReset_ByVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR Login</title>
    <link href="../css/metro-bootstrap.css" rel="stylesheet" />
    <link href="../css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="../css/sComponentStyles.css" rel="stylesheet" />

    <style type="text/css">
        #message {
            color: #000;
            position: relative;
        }

            #message p {
                font-size: 11pt;
            }

        .valid {
            color: green;
        }

            .valid:before {
                color: green;
                position: relative;
                left: -35px;
                content: "✔";
            }

        .invalid {
            color: red;
        }

            .invalid:before {
                color: red;
                position: relative;
                left: -35px;
                content: "✖";
            }
    </style>

    <script type="text/javascript">
        function CheckPasswordStrength(password) {
            var password_strength = document.getElementById("password_strength");
            var password_dissable = document.getElementById("txtRepeatPassword");
            var msg = document.getElementsByClassName("invalid");

            var myInput = document.getElementById("<%=txtNewPassword.ClientID%>");
            var letter = document.getElementById('letter');
            var capital = document.getElementById('capital');
            var number = document.getElementById('number');
            var length = document.getElementById('length');
            var char = document.getElementById('char');

            //TextBox left blank.
            if (password.length == 0) {
                password_strength.innerHTML = "";

                if (myInput.value.length == 0) {
                    letter.classList.remove("valid");
                    letter.classList.add("invalid");
                    document.getElementById("letter").style.color = "black";

                    capital.classList.remove("valid");
                    capital.classList.add("invalid");
                    document.getElementById("capital").style.color = "black";

                    char.classList.remove("valid");
                    char.classList.add("invalid");
                    document.getElementById("char").style.color = "black";

                    number.classList.remove("valid");
                    number.classList.add("invalid");
                    document.getElementById("number").style.color = "black";

                    length.classList.remove("valid");
                    length.classList.add("invalid");
                    document.getElementById("length").style.color = "black";
                }
                return;
            }

            //Regular Expressions.
            var regex = new Array();
            regex.push("[A-Z]");
            regex.push("[a-z]");
            regex.push("[0-9]");
            regex.push("[$@$!%*#?&]");

            var passed = 0;

            for (var i = 0; i < regex.length; i++) {
                if (new RegExp(regex[i]).test(password)) {
                    passed = i;
                }
            }

            if (passed > 2 && password.length > 7) {
                passed++;
            }

            var color = "";
            var strength = "";
            switch (passed) {
                case 0:
                    strength = "Weak";
                    color = "red";
                    document.getElementById("txtRepeatPassword").disabled = true;
                    break;
                case 1:
                    strength = "Weak";
                    color = "red";
                    document.getElementById("txtRepeatPassword").disabled = true;
                    break;
                case 2:
                    strength = "Weak";
                    color = "red";
                    document.getElementById("txtRepeatPassword").disabled = true;
                    break;
                case 3:
                    strength = "Good";
                    color = "darkorange";
                    document.getElementById("txtRepeatPassword").disabled = true;
                    break;
                case 4:
                    switch (password.length) {
                        case 8:
                            strength = "Strong";
                            color = "green";
                            document.getElementById("txtRepeatPassword").disabled = false;
                            break;
                        case 9:
                            strength = "Very Strong";
                            color = "darkgreen";
                            document.getElementById("txtRepeatPassword").disabled = false;
                            break;
                        default:
                            strength = "Very Strong";
                            color = "darkgreen";
                            document.getElementById("txtRepeatPassword").disabled = false;
                            break;
                    }
                    break;
                case 5:
            }
            password_strength.innerHTML = strength;
            password_strength.style.color = color;

            var str;
            var lowerCaseLetters = /[a-z]/g;
            if (myInput.value.match(lowerCaseLetters)) {
                letter.classList.remove("invalid");
                letter.classList.add("valid");
                document.getElementById("letter").style.color = "green";
            } else {
                letter.classList.remove("valid");
                letter.classList.add("invalid");
                document.getElementById("letter").style.color = "black";
            }

            var upperCaseLetters = /[A-Z]/g;
            if (myInput.value.match(upperCaseLetters)) {
                capital.classList.remove("invalid");
                capital.classList.add("valid");
                document.getElementById("capital").style.color = "green";
            } else {
                capital.classList.remove("valid");
                capital.classList.add("invalid");
                document.getElementById("capital").style.color = "black";
            }

            var numbers = /[0-9]/g;
            if (myInput.value.match(numbers)) {
                number.classList.remove("invalid");
                number.classList.add("valid");
                document.getElementById("number").style.color = "green";
            } else {
                number.classList.remove("valid");
                number.classList.add("invalid");
                document.getElementById("number").style.color = "black";
            }

            var chars = /[$@$!%*#?&]/g;
            if (myInput.value.match(chars)) {
                char.classList.remove("invalid");
                char.classList.add("valid");
                document.getElementById("char").style.color = "green";
            } else {
                char.classList.remove("valid");
                char.classList.add("invalid");
                document.getElementById("char").style.color = "black";
            }

            if (myInput.value.length >= 8) {
                length.classList.remove("invalid");
                length.classList.add("valid");
                document.getElementById("length").style.color = "green";
            } else {
                length.classList.remove("valid");
                length.classList.add("invalid");
                document.getElementById("length").style.color = "black";
            }
        }
    </script>

    <script>
        function isAlphabetKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode == 45) {

                return false;
            }

            return true;
        }
    </script>








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

        .title {
            font-size: 20px;
            font-weight: 400;
            padding: 10px;
        }

        .PassResetBackDrop {
            width: 100%;
            height: 100%;
            position: fixed;
            left: 0;
            top: 0;
          background-color: #0068cc !important;
        }

        .PasswordInput {
            padding: 7px 5px;
            width: 40%;
            margin: 10px 0px;
        }

        .Panel {
            display: flex;
            margin: 0 auto;
        }

        .PasswordReset {
            width: 50%;
        }

        .PasswordInputLabel {
            font-size: 17px;
            margin: 10px 0px;
            font-family: Arial;
        }

        .titleHeader {
            font-family: Arial;
            font-size: 24px;
            font-weight: bold;
            color: rgba(0,0,0,.87);
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



             .PassResetSucessfulButton {
            background-color: #219200 !important;
            /*background-image: linear-gradient(to right top, #1c4889, #204997);*/
            margin: 20px;
            color: white !important;
            min-width: 200px;
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

            .PassResetSucessfulButton:hover {
                background-color: #1d7105 !important;
                border: 2px #007feb solid;
                border: 1px #006bff solid !important;
            }

        .PassResetSuccessfulPopup {
            margin: 0 auto;
            background-color: aliceblue;
            /*background-image: linear-gradient(to right top, #cae0ff, #c4ddff, #bed9ff, #b8d6ff, #b2d2ff);*/
            width: 80%;
            height: auto;
            text-align: center;
            margin-top: 5%;
            border-radius: 20px;
            padding: 40px;
            display:none;
        }

        .PassResetSuccessfulBackDrop {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            background-color: rgb(26, 38, 65);
            display:none;
        }
    </style>

    <script>

        function ClosePassResetSuccessfulPopupForm() {
            var x = document.getElementById("PassResetSuccessfulBackDrop");
            x.style.display = "none";

            var p = document.getElementById("PassResetSuccessfulPopup");
            p.style.display = "none";
        }

        function ShowPassResetSuccessfulPopupForm() {
            var x = document.getElementById("PassResetSuccessfulBackDrop");
            x.style.display = "block";

            var p = document.getElementById("PassResetSuccessfulPopup");
            p.style.display = "block";
        }

    </script>

</head>


<body>
    <form id="form1" runat="server">
        <div class="container">

            <div id="PassResetSuccessfulBackDrop" class="PassResetSuccessfulBackDrop">
                <div id="PassResetSuccessfulPopup" class="PassResetSuccessfulPopup">

                    <div runat="server" style="font-size:24px;color:green;font-family:Arial">Your password has been reset successfully!</div>

                    <asp:Button ID="btn_resetSuccessful" runat="server" Text="Click here to return to the login page" CssClass="PassResetSucessfulButton" OnClick="btn_resetSuccessful_Click" />

                </div>
            </div>

            <div class="PassResetBackDrop">
                <div class="PassResetPopup">
                    <div class="titleHeader">HR Login Password Reset</div>

                    <div class="Panel">

                        <div class="PasswordReset">
                            <div style="margin-top: 40px">

                                <div style="margin-bottom: 15px">
                                    <asp:Label CssClass="PasswordInputLabel" ID="Label5" runat="server" Text="New Password"></asp:Label>
                                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                                        <input type="password" id="txtNewPassword" class="PasswordInput" name="txtNewPassword" runat="server" placeholder="New Passowrd.." onkeyup="CheckPasswordStrength(this.value)" />

                                    </div>
                                    <span id="password_strength"></span>
                                </div>

                                <asp:Label ID="Label6" CssClass="PasswordInputLabel" runat="server" Text="Repeat New Password"></asp:Label>
                                <div class="input-control password info-state span4" style="margin-left: 12px;">
                                    <input type="password" id="txtRepeatPassword" class="PasswordInput" name="txtRepeatPassword" runat="server" placeholder="Repeat New Passowrd.." clientidmode="static" onkeypress="return isAlphabetKey(event);" disabled />

                                </div>

                                <asp:Button ID="bttnSubmit" runat="server" Text="Submit" CssClass="PassResetButton" OnClick="bttnSubmit_Click" />
                            </div>
                        </div>


                        <div id="message" class="PasswordReset">
                            <h4>Password must contain the following:</h4>
                            <p id="letter" class="invalid">A <b>Lowercase</b> letter <b>(a,b,c ... z)</b></p>
                            <p id="capital" class="invalid">A <b>Capital (uppercase)</b> letter <b>(A,B,C ... Z)</b></p>
                            <p id="number" class="invalid">A <b>Number</b> <b>(1 - 9)</b></p>
                            <p id="char" class="invalid">A <b>Special Charactor</b> <b>($@$!%*#?&)</b></p>
                            <p id="length" class="invalid">Minimum <b>8 Characters</b> <b>(Abc@1234)</b></p>
                        </div>


                    </div>

                    <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
