<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="Pay_Item_Audit_Duplicate.aspx.cs" Inherits="Smarter_HRIS.Pay_Item_Audit_Duplicate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />

    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .modal {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 0;
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
            -moz-opacity: 0.8;
        }

        .center {
            z-index: 1000;
            margin: 300px auto;
            padding: 10px;
            width: 130px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }

            .center img {
                height: 115px;
                width: 115px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="span4">
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <div class="modal">
                            <div class="center">
                                <img alt="" src="images/loader6.gif" />
                                <%--          <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />--%>
                            </div>
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </div>
            <div class="container">
                <legend>Delete Pay Items</legend>
                <asp:HiddenField ID="lblUserID" runat="server" />
                <div class="grid">
                    <div class="row">
                        <div class="span2">
                            <label>Company<sup class="fg-red">*</sup></label>
                            <label>Session<sup class="fg-red">*</sup></label>
                            <label>Allowance<sup class="fg-red">*</sup></label>
                        </div>
                        <div class="span3">
                            <asp:DropDownList ID="drpCompany1" runat="server" Width="200"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList>
                             <asp:DropDownList ID="drpAllowance" runat="server" Width="200"></asp:DropDownList>
                        </div>
                        <div class="span4">
                            <button class="shortcut primary" runat="server" id="bttnProcess" onserverclick="bttnDelete_click">
                                <%--onserverclick="bttnProcess_click">--%>
                                <i class="icon-spin"></i>
                                Process</button>
                            <button class="shortcut success" runat="server" id="Button4" onserverclick="bttnNew_click">
                                <i class="icon-new"></i>
                                New</button>
                        </div>

                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                    </div>
                </div>
                <br />
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
