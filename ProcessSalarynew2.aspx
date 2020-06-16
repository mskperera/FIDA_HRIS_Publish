<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ProcessSalarynew2.aspx.cs" Inherits="Smarter_HRIS.ProcessSalarynew2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <%--<script src="Select/jquery-1.7.1.js"></script>--%>
    <%--<script src="js/jquery-1.11.1.js"></script>--%>
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">







    <style>
        .nav-tabs {
            border-bottom: 2px solid #DDD;
        }

            .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
                border-width: 0;
            }

            .nav-tabs > li > a {
                border: none;
                color: #666;
            }

                .nav-tabs > li.active > a, .nav-tabs > li > a:hover {
                    border: none;
                    color: #4285F4 !important;
                    background: transparent;
                }

                .nav-tabs > li > a::after {
                    content: "";
                    background: #4285F4;
                    height: 2px;
                    position: absolute;
                    width: 100%;
                    left: 0px;
                    bottom: -1px;
                    transition: all 250ms ease 0s;
                    transform: scale(0);
                }

            .nav-tabs > li.active > a::after, .nav-tabs > li:hover > a::after {
                transform: scale(1);
            }

        .tab-nav > li > a::after {
            background: #21527d none repeat scroll 0% 0%;
            color: #fff;
        }

        .tab-pane {
            padding: 15px 0;
        }

        .tab-content {
            padding: 20px;
        }

        .card {
            background: #FFF none repeat scroll 0% 0%;
            box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3);
            margin-bottom: 30px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />

        <br />

        <h2>Attendance Summary</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#menu1">Process Attendance Summary</a></li>
            <li><a href="#menu2">Attendance Summary Details</a></li>
            <li><a href="#menu3">Approve Attendance Summary</a></li>
        </ul>

        <div class="tab-content">

            <div id="menu1" class="tab-pane fade in active">

                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>


                        <div class="container">
                            <div class="row">
                                <div style="font-weight: normal; font-size: large;">Process Attendance Summary</div>
                                <asp:Panel ID="pnlmessagetab1" runat="server"></asp:Panel>
                            </div>

                            <div class="row">

                            </div>
                        </div>


                    </ContentTemplate>
                </asp:UpdatePanel>


            </div>

            <div id="menu2" class="tab-pane fade">

                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>

                        <div class="container">
                            <div class="row">
                                <div style="font-weight: normal; font-size: large;">Attendance Summary Details</div>
                                <asp:Panel ID="pnlmessagetab2" runat="server"></asp:Panel>
                            </div>


                            <div class="row">
                                <div class="col-md-6">

                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

                                    <button class="shortcut success" runat="server" id="bttnFreeze">
                                        <i class="icon-locked"></i>
                                        Freeze</button>

                                </div>
                            </div>
                        </div>



                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div id="menu3" class="tab-pane fade">
                <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>


                        <div class="content">

                            <div class="row">
                                <div style="font-weight: normal; font-size: large;">Attendance Summary Details</div>
                                <asp:Panel ID="pnlmessagetab3" runat="server"></asp:Panel>
                            </div>

                            <div class="row">


                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

                            </div>

                        </div>


                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>



            <script>
                $(document).ready(function () {
                    $(".nav-tabs a").click(function () {
                        $(this).tab('show');
                    });
                });
            </script>

        </div>


    </div>

</asp:Content>
