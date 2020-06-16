<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ShiftChange.aspx.cs" Inherits="Smarter_HRIS.ShiftChange1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmp1.ClientID %>').autocomplete({
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
            $('#<%= txtEmp2.ClientID %>').autocomplete({
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
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <legend>Shift Change</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            
                 <div class="row">
                    <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                        <i class="icon-enter"></i>
                        Update</button>

                    <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                        <i class="icon-new"></i>
                        New</button>
                     
                </div>

          
            <div class="row">
                <div class="span2">
                    <label>Remarks</label>
                    <label>Date 1</label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="txtRemarks" runat="server" style="width:300px;"></asp:TextBox>
                    <input type="date" id="txtDate" runat="server" name="txtDate" />
                </div>
                <div class="span2">
                    <br />
                    <label>Date 2</label>
                </div>
                <div class="span4">
                    <br />
                    <input type="date" id="txtDate2" runat="server" name="txtDate2" />
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <div class="span2">
                        <label>Employee 1</label>
                    </div>
                    <div class="span3">
                        <asp:TextBox ID="txtEmp1" runat="server" style="width:300px;"></asp:TextBox>
                    </div>

                </div>
                <div class="span6">
                    <div class="span2">
                        <label>Employee 2</label>
                    </div>
                    <div class="span3">
                        <asp:TextBox ID="txtEmp2" runat="server" style="width:300px;"></asp:TextBox>
                    </div>

                </div>
                <div class="span2">
                    <asp:Button ID="bttnSearch" runat="server" CssClass="info" Text="Search Shifts" OnClick="bttnSearch_click" />
                </div>
            </div>
            <div class="row">
                <div class="span5">
                    <asp:Label ID="Label1" Font-Bold="true" Font-Underline="true" runat="server">Employee 1's Assigned Shifts</asp:Label>
                    <asp:Panel ID="pnlShift1" runat="server"></asp:Panel>
                    <asp:GridView ID="grdShift1" runat="server" DataKeyNames="GroupAssignToShiftID,EmployeeMasterID,ShiftID" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="GroupAssignToShiftID" HeaderText="GroupAssignToShiftID" Visible="False" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                            <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeMasterID" Visible="False" />
                            <asp:BoundField DataField="ShiftID" HeaderText="ShiftID" Visible="False" />
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <%--<div class="input-control checkbox">
                                            <label>
                                                <input type="checkbox" id="chkSelect" runat="server" />
                                                <span class="check"></span>
                                            </label>
                                        </div>--%>
                                    <asp:CheckBox ID="chkSelect" runat="server" />
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
                <div class="span1">
                    <br />
                    <br />
                    <asp:LinkButton ID="bttnSwap" CssClass="button large bg-transparent fg-cyan" runat="server" OnClick="bttnSwap_click"><i class="icon-tab"></i><%--&nbsp;<i class="icon-arrow-right-2"></i>--%></asp:LinkButton><br />
                    <%--<asp:LinkButton ID="bttnRemove" runat="server"></asp:LinkButton>--%>
                </div>
                <div class="span5">
                    <asp:Label ID="Label2" Font-Bold="true" Font-Underline="true" runat="server">Employee 2's Assigned Shifts</asp:Label>
                    <asp:Panel ID="pnlShift2" runat="server"></asp:Panel>
                    <asp:GridView ID="grdShift2" runat="server" AutoGenerateColumns="False" DataKeyNames="GroupAssignToShiftID,EmployeeMasterID,ShiftID" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="GroupAssignToShiftID" HeaderText="GroupAssignToShiftID" Visible="False" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                            <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeMasterID" Visible="False" />
                            <asp:BoundField DataField="ShiftID" HeaderText="ShiftID" Visible="False" />
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <%--<div class="input-control checkbox">
                                            <label>
                                                <input type="checkbox" id="chkSelect" runat="server" />
                                                <span class="check"></span>
                                            </label>
                                        </div>--%>
                                    <asp:CheckBox ID="chkSelect" runat="server" />
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
            </div>


            <div class="row">
                <div class="span5">
                    <asp:Label ID="Label4" Font-Bold="true" Font-Underline="true" runat="server">Employee 1's Changed Shifts For This Month</asp:Label>
                    <asp:Panel ID="pnlShiftChange1" runat="server"></asp:Panel>
                    <asp:GridView ID="grdChangedShifts1" runat="server" DataKeyNames="ShiftChangeID,EmpID1,ShiftID1" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ShiftChangeID" HeaderText="ShiftChangeID" Visible="False" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                            <asp:BoundField DataField="EmpID1" HeaderText="EmpID" Visible="False" />
                            <asp:BoundField DataField="ShiftID1" HeaderText="ShiftID" Visible="False" />
                            <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo" />
                            <asp:BoundField DataField="NameWithInitials" HeaderText="EmployeeName" />
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
                <div class="span1">
                </div>
                <div class="span5">
                    <asp:Label ID="Label5" Font-Bold="true" Font-Underline="true" runat="server">Employee 2's Changed Shifts For This Month</asp:Label>
                    <asp:Panel ID="pnlShiftChange2" runat="server"></asp:Panel>
                    <asp:GridView ID="grdChangedShifts2" runat="server" AutoGenerateColumns="False" DataKeyNames="ShiftChangeID,EmpID2,ShiftID2" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ShiftChangeID" HeaderText="ShiftChangeID" Visible="False" />
                            <asp:BoundField DataField="Date2" HeaderText="Date" />
                            <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                            <asp:BoundField DataField="EmpID2" HeaderText="EmpID2" Visible="False" />
                            <asp:BoundField DataField="ShiftID2" HeaderText="ShiftID2" Visible="False" />
                            <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo" />
                            <asp:BoundField DataField="NameWithInitials" HeaderText="EmployeeName" />
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


            <div class="row">
                <asp:Label ID="Label3" Font-Bold="true" Font-Underline="true" runat="server">Shift Change Log</asp:Label>
                <asp:GridView ID="grdChangedLog" runat="server" AutoGenerateColumns="False" DataKeyNames="ShiftID1,EmpID1,ShiftID2,EmpID2" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date 1" />
                        <asp:BoundField DataField="Shift1" HeaderText="Shift 1" />
                        <asp:BoundField DataField="ShiftID1" HeaderText="ShiftID1" Visible="False" />
                        <asp:BoundField DataField="EmpName1" HeaderText="Employee Name 1" />
                        <asp:BoundField DataField="EmpID1" HeaderText="EmpID1" Visible="False" />
                        <asp:BoundField DataField="Date2" HeaderText="Date 2" />
                        <asp:BoundField DataField="Shift2" HeaderText="Shift 2" />
                        <asp:BoundField DataField="ShiftID2" HeaderText="ShiftID2" Visible="False" />
                        <asp:BoundField DataField="EmpName2" HeaderText="Employee Name 2" />
                        <asp:BoundField DataField="EmpID2" HeaderText="EmpID2" Visible="False" />
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
        <asp:HiddenField ID="EEmpID1" runat="server" />
        <asp:HiddenField ID="EEmpID2" runat="server" />
    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
