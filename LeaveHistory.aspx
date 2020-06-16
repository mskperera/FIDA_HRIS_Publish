<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LeaveHistory.aspx.cs" Inherits="Smarter_HRIS.LeaveHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <legend>Employee Leave History</legend>
    <asp:UpdatePanel ID="UpdatePanel2"  runat="server">
        <ContentTemplate>
            <div class="grid">
                <div class="row">
                    <div class="span2">
                        <label>Employee Name</label>
                    </div>
                    <div class="input-control password warning-state span4" style="margin-left: 12px;">
                        <asp:TextBox ID="txtSearch1" runat="server"></asp:TextBox>
                    </div>
                    <div class="span2" style="margin-left: 40px;">
                        <label>From Date</label>
                        <label>To Date</label>
                    </div>
                    <div class="span3">
                        <input type="date" id="txtFrmDate" runat="server" name="txtFrmDate" style="width: 198px;" />
                        <input type="date" id="txtToDate" runat="server" name="txtToDate" style="width: 198px;" />
                    </div>
                    <div class="span2">
                        <asp:Button ID="bttnSearch1" runat="server" Text="search" CssClass="warning" OnClick="bttnSearch_Click" Style="margin-bottom: 4px;" />
                        <%--    <asp:Button ID="btnExport" runat="server" Text="Download" CssClass="success" OnClick="bttnDownload_click" Visible="false" />--%>

                        <button class="shortcut info" runat="server" id="btnExport" onserverclick="bttnDownload_click">
                            <i class="icon-download"></i>
                            Download Excel</button>
                    </div>
                </div>

                <div class="row" id="Grid" runat="server">
                    <br />
                    <div class="span8">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </div>
                    <div class="span5">
                        <asp:Label ID="fromDate" runat="server"></asp:Label><br />
                    </div>
                    <div class="row">
                        <div class="span13">
                            <asp:Panel ID="pnlLeaveBalance" runat="server"></asp:Panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span13" id="PendingLeaves1" runat="server">
                            <asp:Panel ID="pnlPendingLeaves" runat="server"></asp:Panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span13" id="ApprovedLeaves" runat="server">
                            <asp:Panel ID="pnlApprovedLeaves" runat="server"></asp:Panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span13" id="RejectedLeaves" runat="server">
                            <asp:Panel ID="pnlRejectedLeaves" runat="server"></asp:Panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span13" id="CancelledLeaves" runat="server">
                            <asp:Panel ID="pnlCancelledLeaves" runat="server"></asp:Panel>
                        </div>
                    </div>
                </div>

            </div>
            <asp:HiddenField ID="EmpID1" runat="server" />
            <asp:HiddenField ID="hfGridHtml" runat="server" />
        </ContentTemplate>
        <%-- <Triggers>
                            <asp:PostBackTrigger ControlID="btnExport" />
                        </Triggers>--%>
    </asp:UpdatePanel>
</asp:Content>
