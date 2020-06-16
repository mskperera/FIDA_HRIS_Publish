<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ManageHRUserPassword1.aspx.cs" Inherits="Smarter_HRIS.ManageHRUserPassword1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .ddl {
            width: 300px;
            height: 35px;
            margin-bottom: 10px;
        }
    </style>

    <script type="text/javascript">
        function CheckPasswordStrength(password) {
            var password_strength = document.getElementById("password_strength");
            var password_dissable = document.getElementById("txtRepeatPassword");

            //TextBox left blank.
            if (password.length == 0) {
                password_strength.innerHTML = "";
                //  password_dissable.innerHTML = "cvc";
                return;
            }

            //Regular Expressions.
            var regex = new Array();
            regex.push("[A-Z]"); //Uppercase Alphabet.
            regex.push("[a-z]"); //Lowercase Alphabet.
            regex.push("[0-9]"); //Digit.
            regex.push("[$@$!%*#?&]"); //Special Character.

            var passed = 0;

            //Validate for each Regular Expression.
            for (var i = 0; i < regex.length; i++) {
                if (new RegExp(regex[i]).test(password)) {
                    passed++;
                }
            }

            //Validate for length of Password.
            if (passed > 2 && password.length > 8) {
                passed++;
            }

            //Display status.
            var color = "";
            var strength = "";
            switch (passed) {
                case 0:
                case 1:
                    strength = "Weak";
                    color = "red";
                    document.getElementById("txtRepeatPassword").disabled = true;
                    break;
                case 2:
                    strength = "Good";
                    color = "darkorange";
                    document.getElementById("txtRepeatPassword").disabled = true;
                    break;
                case 3:
                case 4:
                    strength = "Strong";
                    color = "green";
                    document.getElementById("txtRepeatPassword").disabled = false;
                    break;
                case 5:
                    strength = "Very Strong";
                    color = "darkgreen";
                    document.getElementById("txtRepeatPassword").disabled = false;
                    break;
            }
            password_strength.innerHTML = strength;
            password_strength.style.color = color;
        }
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Change Password</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Select User"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpUser" runat="server" AutoPostBack="True" CssClass="ddl"></asp:DropDownList><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtNewPassword" runat="server" placeholder="New Passowrd.." onkeyup="CheckPasswordStrength(this.value)"/>
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
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtRepeatPassword" runat="server" placeholder="Repeat New Passowrd.." clientidmode="static" />
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
        </table>
        <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" onclick="bttnSubmit_Click"/>
    </div>
</asp:Content>
