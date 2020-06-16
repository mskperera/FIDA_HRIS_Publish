<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUsersDashboard.aspx.cs" Inherits="Smarter_HRIS.RegisterUsersDashboard" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Users</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
        <!-- bootstrap 3.0.2 -->
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css1/AdminLTE.css" rel="stylesheet" type="text/css" />

    <link href="Styles/jquery-ui.css" rel="stylesheet" />
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" />
    
</head>
<body class="bg-black">
    <form id="form1" runat="server">
    <div>
         
        <div class="form-box" id="login-box">
            <div class="header">Register New User : Dashboard</div>
            <%--<form>--%>
                <div class="body bg-gray">
                    <div class="form-group">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control" placeholder="Full name"></asp:TextBox>
                        <%--<input type="text" id="txtEmployeeName" runat="server" name="name" class="form-control" placeholder="Full name"/>--%>
                    </div>
                    <div class="form-group">
                        <input type="text" id="txtuserName" runat="server" name="userid" class="form-control" placeholder="User ID"/>
                    </div>
                    <div class="form-group">
                        <input type="password" id="txtpassword" runat="server" name="password" class="form-control" placeholder="Password"/>
                    </div>
                    <div class="form-group">
                        <input type="password" id="txtrePassword" runat="server" name="password2" class="form-control" placeholder="Retype password"/>
                    </div>
                </div>
                <div class="footer">                    

                    <button type="submit" id="bttnSubmit" runat="server" onserverclick="bttnSubmit_click" class="btn bg-light-blue btn-block">Sign me up</button>

                    <%--<a href="login.html" class="text-center">I already have a membership</a>--%>
                </div>
            <%--</form>--%>

            <%--<div class="margin text-center">
                <span>Register using social networks</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>--%>
        </div>

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js1/bootstrap.min.js" type="text/javascript"></script>

        <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployeeName.ClientID %>').autocomplete({
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

    </div>
    </form>
</body>
</html>
