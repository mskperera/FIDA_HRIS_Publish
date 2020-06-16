<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateBreaks.aspx.cs" Inherits="Smarter_HRIS.CreateBreaks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Create Breaks</legend>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <asp:HiddenField ID="lblUserID" runat="server" />
                <div class="grid">
                    <div class="row">
                        <div class="span2">
                            <label>Break Name<sup class="fg-red">*</sup></label>
                            <label>Break Start Time<sup class="fg-red">*</sup></label>
                            <label>Break End Time<sup class="fg-red">*</sup></label>
                            <label>Check Break</label>
                        </div>
                        <div class="span4">
                            <asp:TextBox ID="txtBreakName" runat="server"></asp:TextBox><br />
                            <input type="time" id="txtFromTime" runat="server" name="txtFromTime" /><br />
                            <input type="time" id="txtEndTime" runat="server" name="txtFromTime" /><br />
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsCheckBreak" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                        </div>
                        <div class="span3">
                            <label>Duration Time <small class="fg-gray">(hh:mm:ss)</small></label>
                            <label>Fix Duration</label>
                            <label>Is Active<sup class="fg-red">*</sup></label>
                        </div>
                        <div class="span4">
                            <asp:TextBox ID="txtDurationTime" runat="server"></asp:TextBox><br />
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsFixDuration" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <br />
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsActive" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <button class="shortcut primary" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        <asp:GridView ID="grdBreak" runat="server" AutoGenerateColumns="False" DataKeyNames="AssignBreakID" Width="100%" CellPadding="7" CellSpacing="2" ForeColor="#333333" GridLines="Vertical" OnRowCommand="grdBreak_RowCommand" OnRowDeleting="grdBreak_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="AssignBreakID" HeaderText="AssignBreakID" Visible="False" />
                                <asp:BoundField DataField="BreakName" HeaderText="Break Name" />
                                <asp:BoundField DataField="BreakInTime" HeaderText="Break InTime" />
                                <asp:BoundField DataField="BreakOutTime" HeaderText="Break OutTime" />
                                <asp:BoundField DataField="IsCheckBreak" HeaderText="IsCheck Break" />
                                <asp:BoundField DataField="IsFixDuration" HeaderText="IsFix Duration" />
                                <asp:BoundField DataField="DurationTime" HeaderText="Duration Time" />
                                <asp:BoundField DataField="IsActive" HeaderText="Is Active" />
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
