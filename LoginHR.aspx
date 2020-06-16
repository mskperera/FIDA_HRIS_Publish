<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginHR.aspx.cs" Inherits="Smarter_HRIS.LoginHR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR Login</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/BackDrop.css" rel="stylesheet" />




    <style>
        .product .img-responsive {
            margin: 0 auto;
        }
    </style>




    <style>
        .PassResetPopup {
            margin: 0 auto;
            background-color:aliceblue;
            /*background-image: linear-gradient(to right top, #cae0ff, #c4ddff, #bed9ff, #b8d6ff, #b2d2ff);*/
            width: 80%;
            height: 40%;
            text-align: center;
            margin-top: 5%;
            border-radius: 20px;
            padding: 40px;
            display: none;
        }

        .PassResetButton {
            padding: 10px !important;
            background-color:#0068cc !important;
            /*background-image: linear-gradient(to right top, #1c4889, #204997);*/
            margin: 20px !important;
            color: white !important;
            border: 1px white solid !important;
            border-radius: 4px !important;
            font-size: 20px !important;
        }

            .PassResetButton:hover {
            background-color:#0066cc !important;
            border:2px #007feb solid;
            }

        .ButtonFonts {
        }
  .title {
            font-size: 20px;
            font-weight: 400;
            padding: 10px;
        }

        .PassResetBackDrop {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            background-color: rgb(26, 38, 65);
            display:none;
        }

     
        .EmailInput{
            padding:7px 5px;
            width:40%;

        }
    </style>


    <script>

        function ClosePassResetPopupForm() {
            var x = document.getElementById("passresetBackdrop");
            x.style.display = "none";

            var p = document.getElementById("passresetPop");
            p.style.display = "none";
        }

        function ShowPassResetPopupForm() {
            var x = document.getElementById("passresetBackdrop");
            x.style.display = "block";

            var p = document.getElementById("passresetPop");
            p.style.display = "block";
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">

        <br />
        <br />


        <div class="container">

            <div id="passresetBackdrop" class="PassResetBackDrop">
                <div id="passresetPop" class="PassResetPopup">

                      <div class="title">Enter User Name</div>
                       <input runat="server" id="txtuser" class="EmailInput" type="text" placeholder="User Name"/>
                    <label runat="server" id="lbl_message"></label>
                    <br />
                    <input type="button" runat="server" id="btn_reset" class="PassResetButton" onserverclick="btn_reset_ServerClick" value="Next" />

                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                </div>

                <div class="col-md-6">
                    <div style="margin: 0 auto">
                        <img src="Images/SmartHRIS2.png" class="img-responsive" />
                    </div>
                </div>

                <div class="col-md-3">
                </div>

            </div>

            <br />

            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">

                    <div class="text-center">

                        <div class="page-header">
                            <h3>HR Account Information</h3>
                        </div>

                    </div>

                    <br />




                    <div class="form-group row">
                        <label for="txtUsername" class="col-sm-4 col-form-label">
                            <div class="text-right">User Name</div>
                        </label>
                        <div class="col-sm-8">
                            <div class="text-left">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="txtUsername" placeholder="Enter User Name" runat="server"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>




                    <div class="form-group row">
                        <label for="txtPassword" class="col-sm-4 col-form-label">
                            <div class="text-right">Password</div>
                        </label>
                        <div class="col-sm-8">
                            <div class="text-left">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" TextMode="Password" ID="txtPassword"
                                        placeholder="Enter Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>







                    <asp:Button ID="Button1" class="btn btn-primary btn-block" runat="server" Text="Log In" OnClick="Button1_Click" />



                    <div style="margin-top: 10px; text-align: center; font-weight: bold; font-size: 17px;">
                        <a runat="server" onserverclick="btn_reset_ServerClick" href="#">Forgot Password?</a>
                    </div>
                    <br />
                    <div class="checkbox">
                        Remember Me 
                             <label>

                                 <label class="switch">
                                     <input id="chkIsActive" type="checkbox" />
                                     <span class="slider round"></span>
                                 </label>
                             </label>
                    </div>

                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>





                </div>


                <div class="col-md-4">
                </div>


            </div>
        </div>


    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
