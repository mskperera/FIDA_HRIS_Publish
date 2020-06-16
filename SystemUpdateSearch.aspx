<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="SystemUpdateSearch.aspx.cs" Inherits="Smarter_HRIS.SystemUpdateSearch" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>System Change Details</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

        <br />
        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Notifications</a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approved Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>
                                <tbody>
                                    <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white"><i class="icon-tag"></i>Manage Employee Details <asp:Label ID="lblSysUpdates" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlHieUpdates" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Additions & Deductions Details <asp:Label ID="lblAddiDeduct" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlAddiDeduct" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white"><i class="icon-tag"></i>Fix Aditions Details <asp:Label ID="lblFixAdditions" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlFixAdition" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Fix Deductions Details <asp:Label ID="lblFixDeductions" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlFixDeduction" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white"><i class="icon-tag"></i>Variable Additions Details <asp:Label ID="lblVariableAdditions" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlVariableAddtions" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Variable Deductions Details <asp:Label ID="lblDeductions" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlDeductions" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white"><i class="icon-tag"></i>Loan Details <asp:Label ID="lblLoans" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlLoan" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Bulk Additions Details <asp:Label ID="lblBulkAdditions" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlBulkAdditions" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white"><i class="icon-tag"></i>Bulk Deductions Details <asp:Label ID="lblBulkDeductions" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label> </a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:Panel ID="pnlBulkDeductions" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Loan Settlement Details <asp:Label ID="lblLoanSettlements" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                   <asp:Panel ID="pnlLoanSettlement" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

          <div class="accordion with-marker" data-role="accordion" data-closeany="false">
            <div class="accordion-frame">
                <a class="heading ribbed-cyan fg-white"><i class="icon-tag"></i>Bank Transfer Details <asp:Label ID="lblBankTransfer" Visible="true" runat="server"  Font-Bold="true" Text=""></asp:Label></a>
                <div class="content">
                    <div class="grid">
                        <div class="row">
                            <table class='table striped bordered hovered'>
                                <thead class="bg-green fg-white">
                                    <th>Message</th>
                                    <th>Approve To</th>
                                    <th>Date</th>
                                    <th>Importance</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                   <asp:Panel ID="pnlBankTransfer" runat="server"></asp:Panel>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
