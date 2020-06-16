<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AttendanceApprove.aspx.cs" Inherits="Smarter_HRIS.AttendanceApprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <br />
        <legend>Approve OT Session</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress3" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div class="grid">
                    <div class="row">
                        <div class="span2">
                            <label>Company<sup class="fg-red">*</sup></label>
                            <label>Session<sup class="fg-red">*</sup></label>
                        </div>
                        <div class="span3">
                            <asp:DropDownList ID="drpCompany2" runat="server" Width="200"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSession2" runat="server" Width="200"></asp:DropDownList>
                        </div>
                        <div class="span4">
                            <button class="shortcut primary" runat="server" id="bttnApprove" onserverclick="bttnApprove_click">
                                <i class="icon-auction"></i>
                                Approve</button>
                            <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnApprove_click">
                                <i class="icon-new"></i>
                                New</button>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
                    </div>
                    <%--      <div class="row text-center">
                    <asp:Panel ID="pnlNotify" runat="server">
                        <div class="window flat shadow">
                            <label>This attendance is not approved yet. Do you want to approve and freeze ?</label>
                            <button class="info" id="bttnYes" runat="server" onserverclick="bttnYes_click">Yes</button>
                            <button class="danger" id="bttnNo" runat="server" onserverclick="bttnNo_click">No</button>
                        </div>
                    </asp:Panel>
                </div>--%>
                </div>

                <asp:HiddenField ID="IsReplicated" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
