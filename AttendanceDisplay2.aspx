<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AttendanceDisplay2.aspx.cs" Inherits="Smarter_HRIS.AttendanceDisplay2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Attendance Display<small> v2.0.1</small></legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
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
            <%--<div class="row">
                <button class="shortcut success" runat="server" id="bttnSend" onserverclick="Submit_click" type="button">
                    <i class="icon-upload"></i>
                    Search
                </button>
            </div>--%>
            <div class="row">
                <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" Font-Size="Smaller">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" >
                        <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" >
                        <ControlStyle Font-Bold="False" />
                        <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ShiftStart" HeaderText="Shift Start" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ShiftEnd" HeaderText="Shift End" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EmployeeIN" HeaderText="Employee IN" >
                        <ControlStyle Font-Bold="False" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EmployeeOUT" HeaderText="Employee OUT" >
                        <ControlStyle Font-Bold="False" />
                        <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BreakStart" HeaderText="Break Start" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BreakEnd" HeaderText="Break End" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TotalBreakTime" HeaderText="Break Time" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="WorkHours" HeaderText="Work Hours" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
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
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
</asp:Content>
