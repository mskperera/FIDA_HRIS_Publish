<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateUsersHR.aspx.cs" Inherits="Smarter_HRIS.CreateUsersHR" %>

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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
        <legend>Create Users</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />
        <div class="content">
            <div class="grid">
                <div class="row">
                    <div class="span8">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Employee Name"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                    <div class="input-control password warning-state span4" style="margin-left: 12px;">
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
                                    <div class="input-control password warning-state span4" style="margin-left: 12px;">
                                        <input type="text" id="txtUserName1" autocomplete="off" runat="server" placeholder="" onkeypress="return isAlphabetKey(event);" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                        <input type="password" id="txtPassword" autocomplete="off" name="txtPassword" runat="server" placeholder="" onkeyup="CheckPasswordStrength(this.value)" onkeypress="return isAlphabetKey(event);" />
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
                    <div class="input-control password info-state span4" style="margin-left: 12px;">
                        <input type="password" id="txtRepeatPassword" autocomplete="off" name="txtRepeatPassword" runat="server" clientidmode="static" onkeypress="return isAlphabetKey(event);" disabled />
                        <button class="btn-reveal"></button>
                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                    <asp:DropDownList ID="drpCompany" Width="300" Height="34" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="User Type"></asp:Label>
                                </td>
                                <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpType" runat="server" Width="300" Height="34">
                            <asp:ListItem Text="-select-" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Administrator" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="Evaluator" Value="Eval"></asp:ListItem>
                            <asp:ListItem Text="Supervisor" Value="Supervisor"></asp:ListItem>
                            <asp:ListItem Text="Super User" Value="Super"></asp:ListItem>
                        </asp:DropDownList>
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
        <br />
        <script type="text/javascript">
            $(function () {
                $("[id*=grdLoginUsers] td").hover(function () {
                    $("td", $(this).closest("tr")).addClass("hover_row");
                }, function () {
                    $("td", $(this).closest("tr")).removeClass("hover_row");
                });
            });
        </script>

        <style type="text/css">
            td {
                cursor: pointer;
            }

            .hover_row {
                background-color: gainsboro;
            }
        </style>

        <div class="row">
            <asp:GridView ID="grdLoginUsers" runat="server" ShowFooter="true" AutoGenerateColumns="False" Width="50%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                <%--<asp:GridView ID="grdLoginUsers" runat="server" DataKeyNames="Id" Width="50%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">--%>
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="EmpLoginUserID" Visible="False" />
                    <asp:BoundField DataField="UserName" HeaderText="User Name" />
                    <asp:BoundField DataField="Type" HeaderText="User Type" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
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
</asp:Content>
