<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="RateMasterUpload.aspx.cs" Inherits="Smarter_HRIS.RateMasterUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />

       <link href="css/bootstrap-3.3.2/bootstrap-custom.css" rel="stylesheet" />
    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="Modal_Boxes/sMessageBoxes/sMessageBoxes.css" rel="stylesheet" />
    <link href="css/PopupForm.css" rel="stylesheet" />
       <link href="css/sFileUploadZone.css" rel="stylesheet" />
    <link href="css/sTabPage.css" rel="stylesheet" />
    <link href="Modal_Boxes/DetailsBox/sDetailsBox.css" rel="stylesheet" />

       <script>
           function fselect() {


               var filename = $('input[type=file]').val().split('\\').pop();
               if (filename)
                   document.getElementById('filepath').innerHTML = filename;
               else
                   document.getElementById('filepath').innerHTML = 'No File Selected.';
           }

    </script>

    <style>
        .metro .text-center {
            text-align: center;
            height: 150px;
        }
    </style>

    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

    <style>
        .OrgStruct {
            border: 1px solid #ababab;
            border-radius: 6px;
            padding: 5px 10px;
            margin-bottom: 5px;
            height:auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <asp:HiddenField ID="hiddenFUserID" runat="server" />

        <legend>Rate Master Excel Upload</legend>
        <div class="grid">
            <div >


                <div class="OrgStruct">

                    <div class="span4">
                        <button class="shortcut info" type="button" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                            <i class="icon-download"></i>
                            Download Excel</button>
                        <button class="shortcut info" type="button" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">
                            <i class="icon-upload"></i>
                            Upload Excel</button>

                    </div>

      

                               <asp:Panel ID="pnlUpload" runat="server">

                                <!-- Drop Zone -->
                                <div class="upload-drop-zone">
                                    

                             
                                    <div class="sBtn image-preview-input">
                                        <i class="fa fa-paperclip"></i>&nbsp;Choose File
                                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="fselect();" />
                                        <!-- rename it -->
                                    </div>

                                    <div style="font-size: 15px; color: white; margin: 10px 10px" id="filepath">No File Selected.</div>

                                    <button class="success large" runat="server" id="bttnUploadExcel" onserverclick="bttnUploadExcel_click">
                                        <i class="fa fa-upload"></i>&nbsp;Upload
                                    </button>
                                </div>
                            </asp:Panel>


                </div>



            </div>

            <div class="row">
                <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>

                <asp:Panel ID="pnlRunning" runat="server">
                    <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    <label style="position: relative; top: 50%; left: 40%">Please wait ...</label>
                </asp:Panel>
            </div>
        </div>
    </div>


</asp:Content>
