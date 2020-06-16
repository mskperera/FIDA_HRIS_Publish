<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="OTPolicy.aspx.cs" Inherits="Smarter_HRIS.OTPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>OT Policy</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <div class="grid">
                    <div class="row">
                        <div class="span4">
                             <label>Company<sup class="fg-red">*</sup></label>
                             <asp:DropDownList ID="drpCompany" runat="server" Width="200"></asp:DropDownList><br />
                            <label>Shift Type<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpShift" runat="server" Width="200"></asp:DropDownList><br />
                            <label>Break Time (00:00:00)</label>
                            <asp:TextBox ID="txtBreakTime" runat="server" CssClass="tb_with_border"></asp:TextBox><br />
                            <label>Is Early OT</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsEarlyOT" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Is Day OT</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsDayOT" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>

                            <label>Is Late OT</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsLateOT" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Shift Start Time (00:00:00)</label>
                            <asp:TextBox ID="txtShiftStartTime" runat="server"></asp:TextBox><br />
                           
                        </div>
                        <div class="span4">
                             <label>OT Shift Start Time (00:00:00)</label>
                            <asp:TextBox ID="txtOTShiftStartTime" runat="server"></asp:TextBox><br />
                            <label>Max OT Limit (00:00:00)</label>
                            <asp:TextBox ID="txtMaxOTLimit" runat="server"></asp:TextBox><br />
                            <label>Min OT Limit (00:00:00)</label>
                            <asp:TextBox ID="txtMinOTLimit" runat="server"></asp:TextBox><br />
                            <label>MaxOTDays</label>
                            <asp:TextBox ID="txtMaxOTDays" runat="server"></asp:TextBox><br />
                            <label>Early_OT_Min_Minutes (00:00:00)</label>
                            <asp:TextBox ID="txtEarly_OT_Min_Minutes" runat="server"></asp:TextBox><br />
                            <label>Early_OT_Max_Minutes (00:00:00)</label>
                            <asp:TextBox ID="txtEarly_OT_Max_Minutes" runat="server"></asp:TextBox><br />
                            <label>Early_OT_Compul_Break (00:00:00)</label>
                            <asp:TextBox ID="txtEarly_OT_Compul_Break" runat="server"></asp:TextBox><br />
                             <label>Early_OT_Round_Rate </label>
                            <asp:TextBox ID="txtEarly_OT_Round_Rate" runat="server"></asp:TextBox><br />

                        </div>
                        <div class="span 4">
                           
                            <label>Day_OT_Min_Minutes (00:00:00)</label>
                            <asp:TextBox ID="txtDay_OT_Min_Minutes" runat="server"></asp:TextBox><br />
                            <label>Day_OT_Max_Minutes (00:00:00)</label>
                            <asp:TextBox ID="txtDay_OT_Max_Minutes" runat="server"></asp:TextBox><br />
                            <label>Day_OT_Compul_Break (00:00:00)</label>
                            <asp:TextBox ID="txtDay_OT_Compul_Break" runat="server"></asp:TextBox><br />
                            <label>Day_OT_Round_Rate (Eg:0,1,2..)</label>
                            <asp:TextBox ID="txtDay_OT_Round_Rate" runat="server"></asp:TextBox><br />
                            <label>Late_OT_Min_Minutes (00:00:00)</label>
                            <asp:TextBox ID="txtLate_OT_Min_Minutes" runat="server"></asp:TextBox><br />
                            <label>Late_OT_Max_Minutes (00:00:00)</label>
                            <asp:TextBox ID="txtLate_OT_Max_Minutes" runat="server"></asp:TextBox><br />
                            <label>Late_OT_Compul_Break (00:00:00)</label>
                            <asp:TextBox ID="txtLate_OT_Compul_Break" runat="server"></asp:TextBox><br />
                             <label>Late_OT_Round_Rate </label>
                            <asp:TextBox ID="txtLate_OT_Round_Rate" runat="server"></asp:TextBox><br />
                        </div>
                    </div>
                    <div class="row">
                        <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <%--            OnRowCommand="grdCity_RowCommand"--%>
                    <div class="row">
                        <div class="span 8">
                            <asp:GridView ID="grdOTPolicy" runat="server" DataKeyNames="OTPolicyID" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="OTPolicyID" HeaderText="OTPolicyID" Visible="False" />
                                    <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                                    <asp:BoundField DataField="BreakTime" HeaderText="Break Time" />
                                    <asp:BoundField DataField="IsEarlyOT" HeaderText="Is EarlyOT" />
                                    <asp:BoundField DataField="IsDayOT" HeaderText="Is DayOT" />

                                    <asp:BoundField DataField="ShiftStartTime" HeaderText="Shift Start Time" />

                                    <asp:BoundField DataField="OTShiftStartTime" HeaderText="OT Shift Start Time" />
                                    <asp:BoundField DataField="MaxOTLimit" HeaderText="Max OTLimit" />
                                    <asp:BoundField DataField="MinOTLimit" HeaderText="Min OTLimit" />
                                    <asp:BoundField DataField="MaxOTDays" HeaderText="Max OTDays" />

                                    <asp:BoundField DataField="Early_OT_Min_Minutes" HeaderText="Early OTMin Minutes" />
                                    <asp:BoundField DataField="Early_OT_Max_Minutes" HeaderText="Early OTMax Minutes" />
                                    <asp:BoundField DataField="Early_OT_Compul_Break" HeaderText="Early OTCompul Break" />
                                    <asp:BoundField DataField="Early_OT_Round_Rate" HeaderText="Early OTRound Rate" />

                                    <asp:BoundField DataField="Day_OT_Min_Minutes" HeaderText="Day OTMin Minutes" />
                                    <asp:BoundField DataField="Day_OT_Max_Minutes" HeaderText="Day OTMax Minutes" />
                                    <asp:BoundField DataField="Day_OT_Compul_Break" HeaderText="Day OTCompul Break" />
                                    <asp:BoundField DataField="Day_OT_Round_Rate" HeaderText="Day OT Round Rate" />

                                    <asp:BoundField DataField="Late_OT_Min_Minutes" HeaderText="Late OTMin Minutes" />
                                    <asp:BoundField DataField="Late_OT_Max_Minutes" HeaderText="Late OTMax Minutes" />
                                    <asp:BoundField DataField="Late_OT_Compul_Break" HeaderText="Late OTCompul Break" />
                                    <asp:BoundField DataField="Late_OT_Round_Rate" HeaderText="Late OTRound Rate" />
                                     <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />

                                    <%--  <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
