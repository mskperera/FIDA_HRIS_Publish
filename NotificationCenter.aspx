<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" EnableEventValidation="false" ValidateRequest="false" AutoEventWireup="true" CodeBehind="NotificationCenter.aspx.cs" Inherits="Smarter_HRIS.LeaveApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <legend>Notification Center</legend>
        <div class="row">
            <div>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            </div>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="LeavesVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Leave Details
                    <asp:Label ID="lblLeave" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
                    <div class="content">
                        <div class="grid">
                            <div class="row">
                                <table class='table striped bordered hovered'>
                                    <thead class="bg-green fg-white">
                                        <th>Message</th>
                                        <th>Approved Date</th>
                                        <th>Importance</th>
                                        <th></th>
                                        <th></th>
                                    </thead>

                                    <tbody>
                                        <asp:Panel ID="pnlLeaves" runat="server"></asp:Panel>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="BlkLeavesVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Bulk Leave Details
                    <asp:Label ID="lblBLKLeave" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
                    <div class="content">
                        <div class="grid">
                            <div class="row">
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <asp:Panel ID="Panel2" runat="server"></asp:Panel>
                                <asp:Button ID="Button1" runat="server" Text="Approve Selected" CssClass="info small" OnClick="bttnLeaveApprove_click" />
                                &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reject Selected" CssClass="info small" OnClick="bttnBlkLeaveReject_click" />
                                <script type="text/javascript">
                                    $("[id*=chkHeader]").live("click", function () {
                                        var chkHeader = $(this);
                                        var grid = $(this).closest("table");
                                        $("input[type=checkbox]", grid).each(function () {
                                            if (chkHeader.is(":checked")) {
                                                $(this).attr("checked", "checked");
                                                $("td", $(this).closest("tr")).addClass("selected");
                                            } else {
                                                $(this).removeAttr("checked");
                                                $("td", $(this).closest("tr")).removeClass("selected");
                                            }
                                        });
                                    });
                                    $("[id*=chkRow]").live("click", function () {
                                        var grid = $(this).closest("table");
                                        var chkHeader = $("[id*=chkHeader]", grid);
                                        if (!$(this).is(":checked")) {
                                            $("td", $(this).closest("tr")).removeClass("selected");
                                            chkHeader.removeAttr("checked");
                                        } else {
                                            $("td", $(this).closest("tr")).addClass("selected");
                                            if ($("[id*=chkRow]", grid).length == $("[id*=chkRow]:checked", grid).length) {
                                                chkHeader.attr("checked", "checked");
                                            }
                                        }
                                    });
                                </script>

                                <script type="text/javascript">
                                    $(function () {
                                        $("[id*=grdBlkLeave] td").hover(function () {
                                            $("td", $(this).closest("tr")).addClass("hover_row");
                                        }, function () {
                                            $("td", $(this).closest("tr")).removeClass("hover_row");
                                        });
                                    });
                                </script>

                                <style type="text/css">
                                    td {
                                        cursor: pointer;
                                    }

                                    .hover_row {
                                        background-color: thistle;
                                    }
                                </style>


                                <div class="row">
                                    <h3>select </h3>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdBlkLeave" DataKeyNames="leave,notify" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="7" GridLines="Vertical" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellSpacing="3" OnRowCommand="grdBlkLeave_RowCommand">
                                        <%--OnRowCommand="grdBlkLeave_RowCommand"--%>
                                        <AlternatingRowStyle BackColor="Gainsboro" />
                                        <Columns>
                                            <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:CheckBox ID="chkHeader" runat="server" />
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chkRow" runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Message" HeaderText="Message" />
                                            <asp:BoundField DataField="Date" HeaderText="Date" />
                                            <asp:TemplateField HeaderText="Approve">
                                                <ItemTemplate>
                                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="info small" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="More >" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="leave" HeaderText="leave" Visible="false" />
                                            <asp:BoundField DataField="notify" HeaderText="notify" Visible="false" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#009900" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="AttendanceVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Attendance Details
                    <asp:Label ID="lblAttendance" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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
                                        <asp:Panel ID="pnlAttendance" runat="server"></asp:Panel>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="BlkAttendanceVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white" href="#"><i class="icon-tag"></i>Bulk Attendance Details
                    <asp:Label ID="lblBlkAttendance" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
                    <div class="content">
                        <asp:HiddenField ID="msgCount" runat="server" />
                        <asp:Button ID="bttnApprove" runat="server" Text="Approve Selected" CssClass="info small" OnClick="bttnBlkApprove_click" />
                        &nbsp;
                        <asp:Button ID="bttnReject" runat="server" Text="Reject Selected" CssClass="info small" OnClick="bttnBlkReject_click" />
                        <div class="grid">
                            <div class="row">
                                <script type="text/javascript">
                                    $("[id*=chkHeader]").live("click", function () {
                                        var chkHeader = $(this);
                                        var grid = $(this).closest("table");
                                        $("input[type=checkbox]", grid).each(function () {
                                            if (chkHeader.is(":checked")) {
                                                $(this).attr("checked", "checked");
                                                $("td", $(this).closest("tr")).addClass("selected");
                                            } else {
                                                $(this).removeAttr("checked");
                                                $("td", $(this).closest("tr")).removeClass("selected");
                                            }
                                        });
                                    });
                                    $("[id*=chkRow]").live("click", function () {
                                        var grid = $(this).closest("table");
                                        var chkHeader = $("[id*=chkHeader]", grid);
                                        if (!$(this).is(":checked")) {
                                            $("td", $(this).closest("tr")).removeClass("selected");
                                            chkHeader.removeAttr("checked");
                                        } else {
                                            $("td", $(this).closest("tr")).addClass("selected");
                                            if ($("[id*=chkRow]", grid).length == $("[id*=chkRow]:checked", grid).length) {
                                                chkHeader.attr("checked", "checked");
                                            }
                                        }
                                    });
                                </script>

                                <script type="text/javascript">
                                    $(function () {
                                        $("[id*=grdBlkAttendance] td").hover(function () {
                                            $("td", $(this).closest("tr")).addClass("hover_row");
                                        }, function () {
                                            $("td", $(this).closest("tr")).removeClass("hover_row");
                                        });
                                    });
                                </script>

                                <style type="text/css">
                                    td {
                                        cursor: pointer;
                                    }

                                    .hover_row {
                                        background-color: thistle;
                                    }
                                </style>

                                <h7> select </h7>

                                <asp:GridView ID="grdBlkAttendance" DataKeyNames="attn,notify" runat="server" AutoGenerateColumns="False" CellPadding="7" GridLines="Vertical" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellSpacing="3" OnRowCommand="grdBlkAttendance_RowCommand">
                                    <AlternatingRowStyle BackColor="Gainsboro" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chkHeader" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkRow" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Message" HeaderText="Message" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" />
                                        <asp:TemplateField HeaderText="Approve">
                                            <ItemTemplate>
                                                <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="info small" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="More >" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="attn" HeaderText="attn" Visible="false" />
                                        <asp:BoundField DataField="notify" HeaderText="notify" Visible="false" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#009900" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="EmployeeVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Manage Employee Details
                    <asp:Label ID="lblSysUpdates" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
                    <div class="content">
                        <div class="grid">
                            <div class="row">
                                <table class='table striped bordered hovered'>
                                    <thead class="bg-green fg-white">
                                        <th>Message</th>
                                        <th>Date</th>
                                        <th>Approve To</th>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="AdditionDeductionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Additions & Deductions Details
                    <asp:Label ID="lblAddiDeduct" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="FixAdditionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Fix Additions Details
                    <asp:Label ID="lblFixAdditions" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="FixDeductionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Fix Deductions Details
                    <asp:Label ID="lblFixDeductions" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="VariableAdditionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Variable Additions Details
                    <asp:Label ID="lblVariableAdditions" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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
                                        <asp:Panel ID="pnlVariableAdition" runat="server"></asp:Panel>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="VariableDeductionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Variable Deductions Details
                    <asp:Label ID="lblDeductions" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="LoanVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Loan Details
                    <asp:Label ID="lblLoans" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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
                                        <asp:Panel ID="pnlLoans" runat="server"></asp:Panel>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="BulkAdditionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Bulk Additions Details
                    <asp:Label ID="lblBulkAdditions" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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
                                        <asp:Panel ID="pnlBulkAddition" runat="server"></asp:Panel>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="BulkDeductionVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Bulk Deductions Details
                    <asp:Label ID="lblBulkDeductions" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="LoanSettlementVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Loan Settlement Details
                    <asp:Label ID="lblLoanSettlements" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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

            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="BankTrnsVisible" runat="server">
                <div class="accordion-frame">
                    <a class="heading ribbed-darkCobalt fg-white"><i class="icon-tag"></i>Loan Bank Transfer Details
                    <asp:Label ID="lblBnkTrnsfr" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
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
                                        <asp:Panel ID="pnlBankTrnsfr" runat="server"></asp:Panel>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
