<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LeaveBalance.aspx.cs" Inherits="Smarter_HRIS.LeaveBalance" %>

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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch1.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <br />

        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Leave Balance</a></li>
                <li><a href="#_page_2">Abnormal Leave Balances</a></li>
                <li><a href="#_page_3">Leave History</a></li>
            </ul>

            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div class="frames">
                <div class="frame" id="_page_1">
                    <legend>Leave Balance</legend>

                    <div class="grid">
                        <div class="row">
                            <div class="span2">
                                <label>Year & Employee</label>

                            </div>
                            <div class="span3">
                                <asp:DropDownList ID="drpSearchYear" Width="200" runat="server"></asp:DropDownList>

                            </div>
                            <div class="span4">
                                <div class="input-control text">
                                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                </div>
                            </div>
                               <div class="span4">
                                   <asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="large warning" OnClick="bttnSearch_click" />
                                     </div>  
                        </div>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                                <div class="row">
                                    <asp:Panel ID="pnlFields" runat="server">
                                        <div class="span4">
                                            <label>Leave Type<sup class="fg-red">*</sup></label>
                                            <asp:DropDownList ID="drpType" Width="200" runat="server"></asp:DropDownList>
                                            <label>Leave Category<sup class="fg-red">*</sup></label>
                                            <asp:DropDownList ID="drpCategory" Width="200" runat="server"></asp:DropDownList>
                                            <label>Leave Registration<sup class="fg-red">*</sup></label>
                                            <asp:DropDownList ID="drpRegistration" Width="200" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="span4">
                                            <label>Leave Amount<sup class="fg-red">*</sup></label>
                                            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                                            <label>Taken Amount<sup class="fg-red">*</sup></label>
                                            <asp:TextBox ID="txtTakenAmount" runat="server"></asp:TextBox>
                                            <label>Leave Year<sup class="fg-red">*</sup></label>
                                            <asp:DropDownList ID="drpLeaveYear" Width="200" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="span3">
                                            <label>Leave From<sup class="fg-red">*</sup></label>
                                            <input type="date" id="txtLeaveFrom" runat="server" name="txtLeaveFrom" />
                                            <label>Leave To<sup class="fg-red">*</sup></label>
                                            <input type="date" id="txtLeaveto" runat="server" name="txtLeaveFrom" />
                                        </div>
                                        <div class="span2">
                                            <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                                                <i class="icon-floppy"></i>
                                                Save</button>
                                        </div>
                                    </asp:Panel>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdLeaveBalance" runat="server" DataKeyNames="LeaveBalanceID,LeaveTypeID,LeaveCategoryID,LeaveRegistrationID,RegistrationYearsID,LeaveFrom,LeaveTo" Width="100%" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" OnRowCommand="grdLeaveBalance_RowCommand">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="LeaveBalanceID" HeaderText="LeaveBalanceID" Visible="False" />
                                            <asp:BoundField DataField="LeaveYear" HeaderText="Year" />
                                            <asp:BoundField DataField="LeaveTypeName" HeaderText="Leave Type" />
                                            <asp:BoundField DataField="LeaveAmount" HeaderText="Leave Amount" />
                                            <asp:BoundField DataField="AvailableBalance" HeaderText="Available Balance" />
                                            <asp:BoundField DataField="TakenAmount" HeaderText="Taken Amount" />
                                            <asp:BoundField DataField="Balance" HeaderText="Balance" />
                                            <asp:BoundField DataField="LeaveTypeID" HeaderText="LeaveTypeID" Visible="False" />
                                            <asp:BoundField DataField="LeaveCategoryID" HeaderText="LeaveCategoryID" Visible="False" />
                                            <asp:BoundField DataField="LeaveRegistrationID" HeaderText="LeaveRegistrationID" Visible="False" />
                                            <asp:BoundField DataField="RegistrationYearsID" HeaderText="RegistrationYearsID" Visible="False" />
                                            <asp:BoundField DataField="LeaveFrom" HeaderText="LeaveFrom" Visible="False" />
                                            <asp:BoundField DataField="LeaveTo" HeaderText="LeaveTo" Visible="False" />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                </div>
                                <div class="span2">
                                    <br />
                                    <button class="shortcut primary" type="button" style="font-size: small;" runat="server" id="bttnProcess" onserverclick="bttnProcess_click">
                                        <i class="icon-spin"></i>
                                        Update Leave Balance</button>
                                </div>
                                <asp:HiddenField ID="IsEdit" runat="server" />
                                <asp:HiddenField ID="TableID" runat="server" />
                                <asp:HiddenField ID="EmpID" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                </div>

                <div class="frame" id="_page_2">
                    <legend>Abnormal Leave Balances</legend>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <label>Year</label>
                                    </div>
                                    <div class="span3">
                                        <asp:DropDownList ID="drpYear" Width="200" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="span2">
                                        <asp:Button ID="Button1" runat="server" Text="search" CssClass="warning" OnClick="bttnSearchAbnormal_click" />
                                        <%--  onserverclick="bttnProcess_click"--%>
                                    </div>
                                </div>
                                <div class="row">
                                    <%--<asp:GridView ID="grdAbnormalLeaves" runat="server" DataKeyNames="EmployeeID" Width="100%" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" OnRowCommand="grdLeaveBalance_RowCommand">
                                        <AlternatingRowStyle BackColor="White" />--%>

                                    <asp:GridView ID="grdAbnormalLeaves" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                        <%--<asp:GridView ID="grdAbnormalLeaves" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="Vertical">--%>
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                            <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                            <asp:BoundField DataField="NameWithInitials" HeaderText="Name" />
                                            <asp:BoundField DataField="LeaveTypeID" HeaderText="Leave Type ID" />
                                            <asp:BoundField DataField="LeaveTypeName" HeaderText="Leave Type" />
                                            <asp:BoundField DataField="LeaveAmount" HeaderText="Leave Amount" />
                                            <asp:BoundField DataField="TakenAmount" HeaderText="Taken Amount" />
                                            <asp:BoundField DataField="Balance" HeaderText="Balance" />
                                            <asp:BoundField DataField="AvailableBalance" HeaderText="Available Balance" />
                                            <asp:BoundField DataField="PendingLeaves" HeaderText="Pending Leaves" />
                                            <asp:BoundField DataField="Reimburse_leave" HeaderText="Reimburse Leave" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="frame" id="_page_3">
                    <legend>Employee Leave History</legend>
                    <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server" ChildrenAsTriggers="true">
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
                                        <asp:Button ID="bttnSearch1" runat="server" Text="search" CssClass="warning" OnClick="bttnSearch_Click" Style="margin-bottom: 4px;width: 89px;" />
                                        <asp:Button ID="btnExport" runat="server" Text="Download" CssClass="success" OnClick="bttnDownload_click" Visible="false"/>

                                        <%--                                        <button class="shortcut info" runat="server" id="btnExport" onserverclick="bttnDownload_click">
                                            <i class="icon-download"></i>
                                            Download Excel</button>--%>
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
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnExport" />
                        </Triggers>
                    </asp:UpdatePanel>
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
