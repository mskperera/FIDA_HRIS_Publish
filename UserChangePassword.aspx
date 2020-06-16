<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="UserChangePassword.aspx.cs" Inherits="Smarter_HRIS.UserChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Change Password</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="content">
            <div class="grid">
                <div class="row">
                    <div class="span8">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Current Password"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4" style="margin-left: 12px;">
                        <input type="password" value="" id="txtCurrentPassword" runat="server" placeholder="Current Passowrd.." onkeypress="return isAlphabetKey(event);" />
                        <button class="btn-reveal"></button>
                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                        <input type="password" id="txtNewPassword" name="txtNewPassword" runat="server" placeholder="New Passowrd.." onkeyup="CheckPasswordStrength(this.value)"/>
                        <button class="btn-reveal"></button>
                    </div>
                                </td>
                                <td>&nbsp;&nbsp; <span id="password_strength"></span>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Repeat New Password"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                        <input type="password" id="txtRepeatPassword" name="txtRepeatPassword" runat="server" placeholder="Repeat New Passowrd.." clientidmode="static" onkeypress="return isAlphabetKey(event);" disabled/>
                        <button class="btn-reveal"></button>
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
        <%--<div class="grid">
            <div class="row">
                <div class="span3">
                    <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="Repeat New Password"></asp:Label><br />
                    <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" />
                </div>
                <div class="span5">
                    <asp:TextBox ID="txtCurrentPassword" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txtRepeatPassword" runat="server"></asp:TextBox><br />
                </div>
            </div>
        </div>--%>
    </div>
</asp:Content>
