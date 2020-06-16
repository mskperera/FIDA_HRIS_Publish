<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuleActivationPage.aspx.cs" Inherits="Smarter_HRIS.ModuleActivationPage" %>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Activation</title>
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
         
        <div class="form-box" id="login-box" style="width:500px;">
            <div class="header">Activate Module : <asp:Label ID="lblModuleName" runat="server"></asp:Label></div>
            <%--<form>--%>
                <div class="body bg-gray">
                    <div class="form-group">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtKey" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Enter key here"></asp:TextBox>
                    </div>
                </div>
                <div class="footer">                    
                    <button type="submit" id="bttnSubmit" runat="server" onserverclick="bttnSave_click" class="btn bg-light-blue btn-block">Activate</button>
                </div>
        </div>

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js1/bootstrap.min.js" type="text/javascript"></script>

        <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    </div>
    </form>
</body>
</html>