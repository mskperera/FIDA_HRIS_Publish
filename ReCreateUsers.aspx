<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReCreateUsers.aspx.cs" Inherits="Smarter_HRIS.ReCreateUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Smart HRIS</title>
    <link href="bootstrap/css/bootstrap.css" />
    <link href="bootstrap/css/bootstrap.min.css" />
    <link href="css/metro-bootstrap.css" rel="stylesheet" />
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/iconFont.css" rel="stylesheet" />
    <link href="css/docs.css" rel="stylesheet" />
    <link href="js/prettify/prettify.css" rel="stylesheet" />

    <!-- Load JavaScript Libraries -->
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>
    <script src="js/metro/metro-datepicker.js"></script>
    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <script src="js/ga.js"></script>

    <link href="Styles/jquery-ui.css" rel="stylesheet" />
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>

    <style>
        @media print {
            .no-print, .no-print * {
                display: none !important;
            }
        }
    </style>

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

            var myInput = document.getElementById("<%=txtPassword.ClientID%>");
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

</head>
<body class="metro">
    <form id="form1" runat="server">
        <div>
            <%-- --------------%>
            <header>
                <div class="navigation-bar dark no-print">
                    <div class="navbar-content container">
                        <div>
                        </div>

                        <a href="#" class="element"><span class="icon-grid-view"></span>SMARTER HRIS <sup>tm</sup></a>
                        <span class="element-divider"></span>

                        <div class="no-tablet-portrait">
                            <a class="element brand" href="#"><span class="icon-undo" onclick="history.go(-1);"></span></a>
                        </div>
                        <span class="element-divider"></span>

                        <div class="no-tablet-portrait">
                            <button class="element image-button image-left" runat="server" id="bttn_Home">
                                <img src="images/home.png" />
                            </button>
                        </div>
                        <span class="element-divider"></span>

                        <a class="pull-menu" href="#"></a>
                        <ul class="element-menu">
                            <li>
                                <a class="dropdown-toggle dark" href="#">Support</a>
                                <ul class="dropdown-menu dark" data-role="dropdown">
                                    <li><a href="Versions.aspx">Versions</a></li>
                                    <li><a href="#">Help</a></li>
                                    <li>
                                        <a href="#" class="dropdown-toggle">About</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                        <div class="no-tablet-portrait">
                            <span class="element-divider"></span>
                            <a class="element brand" href="#"><span class="icon-spin"></span></a>
                            <a class="element brand" href="#"><span class="icon-printer"></span></a>
                            <span class="element-divider"></span>
                            <div class="element place-right">
                                <a class="dropdown-toggle dark" href="#"><span class="icon-cog"></span></a>
                                <ul class="dropdown-menu dark place-right" data-role="dropdown" runat="server" id="menu">
                                    <li><a href="UserChangePassword.aspx">Change Password</a></li>
                                    <li><a href="LoginHR.aspx">Log Out</a></li>

                                </ul>
                            </div>
                            <span class="element-divider place-right"></span>
                            <button class="element image-button image-left place-right">
                            </button>

                            <div class="times" data-role="times" style="padding-top: 10px; font-size: 15px" data-style-background="bg-darkViolet" data-style-divider="fg-darkViolet"></div>
                        </div>
                    </div>
                </div>
            </header>

            <%-------------------%>

            <div class="container">
                <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
                <legend>Reset Password</legend>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />

                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <div class="span8">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
                                        </td>
                                        <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4" style="margin-left: 12px;">
                        <input type="text" value="" id="txtUserName1" runat="server" placeholder="" readonly />
                    </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                                        </td>
                                        <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4" style="margin-left: 12px;"> 
                        <input type="password" value="" id="txtOldPassword" runat="server" placeholder="" />
                    </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
                                        </td>
                                        <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                        <input type="password" value="" id="txtPassword" runat="server" placeholder="" onkeyup="CheckPasswordStrength(this.value)" onkeypress="return isAlphabetKey(event);" />
                    </div>
                                        </td>
                                        <td>&nbsp;&nbsp; <span id="password_strength"></span>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="Repeat Password"></asp:Label>
                                        </td>
                                        <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                        <input type="password" value="" id="txtRepeatPassword" runat="server" placeholder="" clientidmode="static" onkeypress="return isAlphabetKey(event);" disabled/>
                    </div>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" />
                            </div>
                            <div class="span5">
                                <div id="message">
                                    <h4>Password must contain the following:</h4>
                                    <p id="letter" class="invalid">A <b>Lowercase</b> letter <b>(a,b,c ... z)</b></p>
                                    <p id="capital" class="invalid">A <b>Capital (uppercase)</b> letter <b>(A,B,C ... Z)</b></p>
                                    <p id="number" class="invalid">A <b>Number</b> <b>(1 - 9)</b></p>
                                    <p id="char" class="invalid">A <b>Special Charactor</b> <b>($@$!%*#?&)</b></p>
                                    <p id="length" class="invalid">Minimum <b>8 Characters</b> <b>(Abc@1234)</b></p>
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
