<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Smarter_HRIS.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>HR Login</title>
    <link href="css/metro-bootstrap.css" rel="stylesheet" />
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/iconFont.css" rel="stylesheet" />
    <link href="css/docs.css" rel="stylesheet" />
    <link href="js/prettify/prettify.css" rel="stylesheet" />

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <script src="js/ga.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 449px;
        }
    </style>


</head>
<body class="metro">
    <form id="form1" runat="server">
        <div>

            <div class="container">
                <div class="grid" id="login">
                    <div class="row">
                        <div class="text-center">
                            <br />
                            <br />
                            <br />
                            <div>
                                <%--<img src="Images/productERP.png" />--%>
                                <img src="Images/SmartHRIS2.png" />
                            </div>
                            <br />
                            <%--Please enter your User Name and Password to access the application<br />--%>

                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>

                            <legend>HR Account Information</legend>

                            <table align="center">
                                <tr>
                                    <td><%--<asp:Label class="fg-cyan" ID="Label3" runat="server" Text="User Name ">User Name&nbsp; : &nbsp;</asp:Label>--%>
                                        <label class="fg-black">User Name &nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><%--<asp:Label class="fg-cyan" ID="Label4" runat="server" Text="Password ">Password&nbsp; : &nbsp;</asp:Label>--%>
                                        <label class="fg-black">Password &nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                                </tr>
                            </table>
                            <div class="input-control switch margin10" data-role="input-control">
                                <label class="fg-black">
                                    Remember Me &nbsp;
                                    <input type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />

                            <asp:Button ID="Button1" class="primary" runat="server" Text="Log In" OnClick="Button1_Click" />
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
