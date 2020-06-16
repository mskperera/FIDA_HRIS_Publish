<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateShifts.aspx.cs" Inherits="Smarter_HRIS.CreateShifts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Create Shifts</legend>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

               <asp:HiddenField ID="lblUserID" runat="server" />
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <div class="grid">
                    <div class="row">
                        <div class="span3">
                            <label>Shift Name<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtShiftName" runat="server"></asp:TextBox>
                            <label>Begin In Time<sup class="fg-red">*</sup></label>
                            <input type="time" id="txtBeginIn" runat="server" name="txtBeginIn" /><br />
                            <label>Shift Start Time<sup class="fg-red">*</sup></label>
                            <input type="time" id="txtShiftStart" runat="server" name="txtShiftStart" /><br />
                            <label>Allow Late<sup class="fg-grayLight">(hh:mm:ss)</sup><sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtAllowLate" runat="server"></asp:TextBox>
                            <label>Shift Ending In<sup class="fg-red">*</sup></label>
                            <input type="time" id="txtEndingIn" runat="server" name="txtEndingIn" /><br />
                        </div>
                        <div class="span3">
                            <label>Begin Out<sup class="fg-red">*</sup></label>
                            <input type="time" id="txtBeginOut" runat="server" name="txtBeginOut" /><br />
                            <label>Allow Early<sup class="fg-grayLight">(hh:mm:ss)</sup><sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtAllowEarly" runat="server"></asp:TextBox>
                            <label>Shift End Time<sup class="fg-red">*</sup></label>
                            <input type="time" id="txtShiftEnd" runat="server" name="txtShiftEnd" /><br />
                            <label>Shift Ending Out<sup class="fg-red">*</sup></label>
                            <input type="time" id="txtEndingOut" runat="server" name="txtEndingOut" /><br />
                            <label>Is Active Shift<sup class="fg-red">*</sup></label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsActive" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />
                        </div>
                        <div class="span3">
                            <label>Must CheckIN</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkMustCheckIN" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />
                            <label>Must CheckOUT</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkMustCheckOUT" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />
                            <label>Assign Break<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpBreak" Width="200" runat="server"></asp:DropDownList><br />
                            <label>Shift Category<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpShiftCategory" Width="200" runat="server"></asp:DropDownList><br />
                        </div>
                        <div class="span3">
                            <label>Day Pass</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkDayPass" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />
                            <label>Shift Type<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpShiftType" Width="200" runat="server"></asp:DropDownList><br />
                            <label>OT Rate<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpOTRate" Width="200" runat="server"></asp:DropDownList><br />
                            <label>WorkDay Count<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtWorkDayCount" runat="server"></asp:TextBox>
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
                    <div class="row">
                        <asp:GridView ID="grdShift" runat="server" AutoGenerateColumns="False" DataKeyNames="ShiftID,AllowLate,AllowEarly,MustCheckIn,MustcheckOut,AssignBreakID,AssignBreak,ShiftCategoryID,ShiftCategory,DayPass,ShiftTypeID,ShiftType,OTRateID,OTRate,WorkDayCount" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="Vertical" OnRowCommand="grdShift_RowCommand" OnRowDeleting="grdShift_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ShiftID" HeaderText="ShiftID" Visible="true" />
                                <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                                <asp:BoundField DataField="BeginInTime" HeaderText="BeginIn Time" />
                                <asp:BoundField DataField="ShiftStartTime" HeaderText="Shift Start Time" />
                                <asp:BoundField DataField="AllowLate" HeaderText="AllowLate" Visible="False" />
                                <asp:BoundField DataField="ShiftEndingIn" HeaderText="Shift EndingIn" />
                                <asp:BoundField DataField="BeginOutTime" HeaderText="BeginOut Time" />
                                <asp:BoundField DataField="AllowEarly" HeaderText="AllowEarly" Visible="False" />
                                <asp:BoundField DataField="ShiftEndTime" HeaderText="Shift End Time" />
                                <asp:BoundField DataField="ShifEndingOut" HeaderText="Shif EndingOut" />
                                <asp:BoundField DataField="IsActiveShift" HeaderText="IsActive" />
                                <asp:BoundField DataField="MustCheckIn" HeaderText="MustCheckIn" Visible="False" />
                                <asp:BoundField DataField="MustcheckOut" HeaderText="MustcheckOut" Visible="False" />
                                <asp:BoundField DataField="AssignBreakID" HeaderText="AssignBreakID" Visible="False" />
                                <asp:BoundField DataField="AssignBreak" HeaderText="AssignBreak" Visible="False" />
                                <asp:BoundField DataField="ShiftCategoryID" HeaderText="ShiftCategoryID" Visible="False" />
                                <asp:BoundField DataField="ShiftCategory" HeaderText="ShiftCategory" Visible="False" />
                                <asp:BoundField DataField="DayPass" HeaderText="DayPass" Visible="False" />
                                <asp:BoundField DataField="ShiftTypeID" HeaderText="ShiftTypeID" Visible="False" />
                                <asp:BoundField DataField="ShiftType" HeaderText="ShiftType" Visible="False" />
                                <asp:BoundField DataField="OTRateID" HeaderText="OTRateID" Visible="False" />
                                <asp:BoundField DataField="OTRate" HeaderText="OTRate" Visible="False" />
                                <asp:BoundField DataField="WorkDayCount" HeaderText="WorkDayCount" Visible="False" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                </div>

                <asp:HiddenField ID="IsEdit" runat="server" />
                <asp:HiddenField ID="TableID" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
</asp:Content>
