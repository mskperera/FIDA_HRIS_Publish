<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ApproveManualAttendancebyEMP.aspx.cs" Inherits="Smarter_HRIS.ApproveManualAttendancebyEMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <legend>Manual Attendance Approval</legend>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="hiddenNotifyID" runat="server" />
                <%--<div class="grid">
            <div class="row">
                <div class="span2">
                    <label>Employee Name</label>
                    <label>Attendance Type</label>
                    <label>Date</label>
                    <label>Time</label>
                    <label>Remarks</label>
                </div>
                <div class="span3">

                </div>
            </div>
        </div>--%>
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
                <div class="span6">
                    <hr />
                    <table>
                        <tr>
                            <td>
                                <label>Employee Name</label>
                            </td>
                            <td>:&nbsp;&nbsp;<asp:Label ID="lblEmpName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Attendance Type</label>
                            </td>
                            <td>:&nbsp;&nbsp;<asp:Label ID="lblAttendanceType" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Date</label>
                            </td>
                            <td>:&nbsp;&nbsp;<asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Time</label>
                            </td>
                            <td>:&nbsp;&nbsp;<asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Remarks</label>
                            </td>
                            <td>:&nbsp;&nbsp;<asp:Label ID="lblRemarks" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Applied Date</label>
                            </td>
                            <td>:&nbsp;&nbsp;<asp:Label ID="lblAppliedDate" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="bttnApprove" runat="server" Text="Approve" CssClass="success" OnClick="bttnApprove_Click" />
                    <asp:Button ID="bttnReject" runat="server" Text="Reject" CssClass="warning" OnClick="bttnReject_Click" />
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
