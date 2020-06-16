<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Smarter_HRIS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

    <link href="css/metro-bootstrap.css" rel="stylesheet" />
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/iconFont.css" rel="stylesheet" />
    <link href="css/docs.css" rel="stylesheet" />
    <link href="js/prettify/prettify.css" rel="stylesheet" />
    <script src="Language_Translation/LangTranslations.js"></script>

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>
    <link href="css/sTabPage.css" rel="stylesheet" />

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <style type="text/css">

        .auto-style1 {
            width: 449px;
        }
    </style>


    <style>
        .LanguageSelectionContentPopup {
            margin: 0 auto;
            background-image: linear-gradient(to right top, #cae0ff, #c4ddff, #bed9ff, #b8d6ff, #b2d2ff);
            width: 80%;
            height: 50%;
            text-align: center;
            margin-top: 10%;
            border-radius: 20px;
            padding: 40px;
        }

        .LangButton {
            padding: 20px !important;
            /*background-color:#0f28b9 !important;*/
            background-image: linear-gradient(to right top, #1c4889, #204997);
            margin: 10px !important;
            color: white !important;
            border: 1px white solid !important;
            border-radius: 4px !important;
            font-size: 20px !important;
        }

            .LangButton:hover {
                background-image: linear-gradient(to right top, #204997, #b2d2ff);
            }

        .ButtonFonts {
        }

        .title {
            font-size: 30px;
            font-weight: bold;
            padding: 10px;
        }

        .LangBackDrop {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            background-color: rgba(0,0,0,0.5);
            display:none;
        }

    
    </style>

    <script>

        function setLanguage(lang) {

            localStorage.setItem('language', lang);
            TranslateElements_all();
            CloseLanguateForm();

        }
        function CloseLanguateForm() {
            var x = document.getElementById("languageForm");
            x.style.display = "none";
        }
        function ShowLanguateForm() {
            var x = document.getElementById("languageForm");
            x.style.display = "block";
        }


        function IsPostBack() {
            var ret = '<%= Page.IsPostBack%>' == 'True';
        return ret;
    }


        $(window).bind("load", function () {
            if (!IsPostBack()) {
                ShowLanguateForm();
            }
            else
                TranslateElements_all();
        
        });
     
    </script>


</head>
<body class="metro">
    <form id="form1" runat="server">
        <div>
            <div id="languageForm" class="LangBackDrop">
                <div class="LanguageSelectionContentPopup">

                    <div class="title">Select your familiar language... </div>
                    <div class="title">ඔබට පහසු භාෂාව තෝරාගන්න... </div>


                    <input type="button" class="LangButton" value="English" onclick="setLanguage('english')" />
                    <input type="button" class="LangButton" value="සිංහල" onclick="setLanguage('sinhala')" />

                </div>

            </div>
            <div class="container">
                <div class="grid loginControlContainer" id="login">
                    <div class="row">
                        <div class="text-center">
                            <br />
                            <br />
                            <br />
                            <div>
                                <%--<img src="Images/productERP.png" />--%>
                                <img src="Images/SmartHRIS1.png" />
                            </div>
                            <br />
                            <%--Please enter your User Name and Password to access the application--%>
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <legend>Account Information</legend>

                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 offset-4">
                            <div class="col-md-8 offset-2">
                                <div class="form-group row">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control LoginTextBox" ID="txtUsername"
                                            placeholder="Enter User Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control LoginTextBox" TextMode="Password" ID="txtPassword"
                                            placeholder="Enter Password" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="text-center">

                            <div class="input-control switch margin10" data-role="input-control">
                                <label class="fg-black">
                                   <span style="margin-right:5px">Remember Me</span>  <input type="checkbox" />

                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />

                            <asp:Button CssClass="LoginBtn" ID="Button1"  runat="server" Text="Login" OnClick="Button1_Click" />


                        </div>
                    </div>

                </div>


            </div>
        </div>

    </form>
</body>
</html>
