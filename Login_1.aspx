<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_1.aspx.cs" Inherits="Smarter_HRIS.Login_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link href="css/metro-bootstrap.css" rel="stylesheet" />
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/iconFont.css" rel="stylesheet" />
    <link href="css/docs.css" rel="stylesheet" />
    <link href="js/prettify/prettify.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />


    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>
    <script src="Language_Translation/LangTranslations.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>

    <!-- Local JavaScript -->
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>
    <%-- <script src="js/ga.js"></script>--%>
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
            /*margin-top: 10%;*/
            border-radius: 20px;
            padding: 40px;
            display:block;
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
        }
    </style>

    <script>
        $(window).bind("load", function () {
            ShowLanguateForm();
        });

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
    </script>


</head>
<body class="metro">

    <form id="form1" runat="server">
        <asp:HiddenField ID="lblPassword" runat="server" />
        <div id="languageForm" class="LangBackDrop">
            <div class="LanguageSelectionContentPopup">

                <div class="title">Select your familiar language... </div>
                <div class="title">ඔබට පහසු භාෂාව තෝරාගන්න... </div>


                <input type="button" class="LangButton" value="English" onclick="setLanguage('english')" />
                <input type="button" class="LangButton" value="සිංහල" onclick="setLanguage('sinhala')" />

            </div>

        </div>
        <div class="container">
            <div class="grid" id="login">
                <div style="padding-top: 100px">


                    <div style="margin: 0 auto; width: 80%">


                        <div style="text-align: center">
                            <%--<img src="Images/productERP.png" />--%>
                            <img src="Images/SmartHRIS1.png" />
                        </div>

                        <label style="text-align: center" runat="server" id="lblError1" forecolor="Red"></label>
                        <h2 style="text-align: center">Account Information</h2>


                        <div style="padding: 30px 0">

                            <div style="text-align: center">

                                <div style="margin: 0 auto; width: 50%">
                                    <div style="display: flex; margin: 5px">
                                        <label style="margin-right: 10px; font-size: 20px; width: 150px" class="fg-black">User Name </label>
                                        <input type="text" id="txtUsername1" runat="server" />
                                    </div>

                                    <div style="display: flex; margin: 5px">
                                        <label style="margin-right: 10px; font-size: 20px; width: 150px" class="fg-black">Password</label>
                                        <div>
                                            <input style="height: 35px" type="password" runat="server" id="txtPassword1" />



                                        </div>

                                    </div>

                                    <div style="margin: 10px 0">
                                        <asp:Button ID="Button1" class="primary" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                </div>

                                <div class="input-control switch margin10" data-role="input-control">
                                    <label class="fg-black">
                                        Remember Me &nbsp;
                                        <input type="checkbox" />

                                        <span class="check"></span>
                                    </label>
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
