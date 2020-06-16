<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateUsersHR1.aspx.cs" Inherits="Smarter_HRIS.CreateUsersHR1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
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
        <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
        <legend>Create Users</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Employee Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:LinkButton ID="bttnSearch" runat="server" CssClass="btn-search" OnClick="bttnSearch_click"></asp:LinkButton>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4">
                        <input type="text" value="" id="txtUserName1" runat="server" placeholder="" onkeypress="return isAlphabetKey(event);"/>
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtPassword" runat="server" placeholder="" onkeyup="CheckPasswordStrength(this.value)" onkeypress="return isAlphabetKey(event);"/>
                        <button class="btn-reveal"></button>
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
                    <div class="input-control password info-state span4">
                        <input type="password" value="" id="txtRepeatPassword" runat="server" placeholder="" clientidmode="static" onkeypress="return isAlphabetKey(event);"/>
                        <button class="btn-reveal"></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <asp:DropDownList ID="drpCompany" Width="300" runat="server" Height="30" padding-bottom="5"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Type"></asp:Label>
                </td>

                <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpType" runat="server" Width="300" Height="30">
                            <asp:ListItem Text="-select-" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Administrator" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="Evaluator" Value="Eval"></asp:ListItem>
                            <asp:ListItem Text="Supervisor" Value="Supervisor"></asp:ListItem>
                            <asp:ListItem Text="Super User" Value="Super"></asp:ListItem>
                            <%--   <asp:ListItem>Super_User</asp:ListItem>--%>
                        </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="bttnSubmit" runat="server" Text="Save" CssClass="primary" OnClick="bttnSubmit_Click" Width="50" Height="25" />
    </div>
</asp:Content>
