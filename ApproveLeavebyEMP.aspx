<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" EnableEventValidation="false" ValidateRequest="false" AutoEventWireup="true" CodeBehind="ApproveLeavebyEMP.aspx.cs" Inherits="Smarter_HRIS.ApproveLeavebyEMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 211px;
        }

        .auto-style3 {
            width: 271px;
        }

        .auto-style4 {
            width: 30px;
        }

        .auto-style5 {
            width: 211px;
            height: 31px;
        }

        .auto-style6 {
            width: 30px;
            height: 31px;
        }

        .auto-style7 {
            width: 271px;
            height: 31px;
        }

        .auto-style8 {
            height: 31px;
        }

        .auto-style9 {
            width: 223px;
        }

        .auto-style10 {
            height: 31px;
            width: 223px;
        }
    </style>
    <script>
        $(function () {
            $("#datepicker1").datepicker();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <legend>Approve Leave Application
                </legend>
                <div class="grid">
                    <div class="row">
                        <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
                    </div>
                    <asp:HiddenField ID="hiddenLeaveID" runat="server" />
                    <asp:HiddenField ID="hiddenNotifyID" runat="server" />

                    <table class="auto-style1">
                         <tr>
                              <asp:Label ID="lblEmpID" runat="server" Text="" Visible="false"></asp:Label>
                                <td class="auto-style3">
                                    <label>
                                        <asp:Label ID="Label12" runat="server" Text="" Width="500"></asp:Label>
                                    </label>
                                </td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                    </table>
                    <table class="auto-style1">
                        
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label11" class="fg-cyan" runat="server" Text="Applied Person "></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4-fg-cyan">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="lblEmployee" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label2" class="fg-cyan" runat="server" Text="Reason For Leave "></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4-fg-cyan">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="lblReason" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label1" class="fg-cyan" runat="server" Text="Leave Type         " ViewStateMode="Disabled"></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="lblLeaveType" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label7" class="fg-cyan" runat="server" Text="Leave Category         " ViewStateMode="Disabled"></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="lblLeaveCategory" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <label>
                                    <asp:Label ID="Label3" class="fg-cyan" runat="server" Text="Leave application date "></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style6">:</td>
                            <td class="auto-style7">
                                <asp:Label ID="lblAppDate" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label4" class="fg-cyan" runat="server" Text="From Date &amp; Time  :"></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="lblFromDate" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">
                                <label>
                                    <asp:Label ID="lblFromTime" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label5" class="fg-cyan" runat="server" Text="ToDate &amp; Time "></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="lblToDate" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">
                                <label>
                                    <asp:Label ID="lblToTime" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label6" class="fg-cyan" runat="server" Text="Days  "></asp:Label>
                                    <asp:Label ID="lblDays" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4">:</td>
                            <td class="auto-style3">
                                <label>
                                    <asp:Label ID="Label8" class="fg-cyan" runat="server" Text=" Hours  "></asp:Label>
                                    <asp:Label ID="lblHours" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style9">
                                <label>
                                    <asp:Label ID="Label9" class="fg-cyan" runat="server" Text="Minutes  "></asp:Label>
                                    <asp:Label ID="lblMins" runat="server" Text=""></asp:Label>
                                </label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label>
                                    <asp:Label ID="Label10" class="fg-cyan" runat="server" Text="Work Covering Person "></asp:Label>
                                </label>
                            </td>
                            <td class="auto-style4">:</td>
                        </tr>
                    </table>
                    <div class="span7">
                        <asp:Panel ID="pnlCoveringPerson" runat="server"></asp:Panel>
                    </div>
                    <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                </div>

                <br />
                <%--<asp:Button ID="Button1" Class="large info" runat="server" Text="Submit" />--%>
                <asp:Button ID="bttnApprove" runat="server" Text="Approve" CssClass="success" OnClick="bttnApprove_Click" />
                &nbsp;&nbsp;
        <asp:Button ID="bttnReject" runat="server" Text="Reject" CssClass="warning" OnClick="bttnReject_Click" />
                <br />

                <asp:HiddenField ID="hiddenAppliedID" runat="server" />
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
