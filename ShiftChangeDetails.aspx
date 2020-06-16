<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ShiftChangeDetails.aspx.cs" Inherits="Smarter_HRIS.ShiftChangeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Shift Change Details</legend>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="grid">
            <div class="row">
                <div class="span3">
                    <%--<label ><h5 class="fg-cyan">From :</h5></label>--%>
                    <asp:Label ID="Label1" runat="server" CssClass="fg-cyan" Text="From : " Font-Bold="True"></asp:Label>
                    <input type="date" id="txtFromDate" runat="server" name="FromDate" />

                </div>
                <div class="span3">
                    <%--<label ><h5 class="fg-cyan">To :</h5></label>--%>
                    <asp:Label ID="Label2" runat="server" CssClass="fg-cyan" Text="To : " Font-Bold="True"></asp:Label>
                    <input type="date" id="txtToDate" runat="server" name="ToDate" />
                </div>
                <div class="span3">
                    <button class="image-button info" runat="server" id="bttnSearch" type="button" onserverclick="Submit_click">
                        Search
                    <i class="icon-download-2 bg-cobalt fg-white"></i>
                    </button>
                </div>
            </div>


            <div class="row">
                <div class="span8">
                    <asp:Label ID="Label4" Font-Bold="true" Font-Underline="true" runat="server"></asp:Label>
                    <asp:Panel ID="pnlShiftChange1" runat="server"></asp:Panel>
                    <asp:GridView ID="grdChangedShifts1" runat="server" DataKeyNames="ShiftChangeID,EmpID1,ShiftID1" AutoGenerateColumns="False" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ShiftChangeID" HeaderText="ShiftChangeID" Visible="False" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                            <asp:BoundField DataField="EmpID1" HeaderText="EmpID" Visible="False" />
                            <asp:BoundField DataField="ShiftID1" HeaderText="ShiftID" Visible="False" />
                            <%--         <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo" />--%>
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
        </div>
    </div>
</asp:Content>
