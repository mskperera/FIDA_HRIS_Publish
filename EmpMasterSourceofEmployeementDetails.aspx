<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmpMasterSourceofEmployeementDetails.aspx.cs" Inherits="Smarter_HRIS.EmpMasterSourceofEmployeementDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Source of Employeement</legend>
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
                        <div class="span2">
                            <label>Source of Employeement<sup class="fg-red">*</sup></label>
                        </div>
                        <div class="span4">
                            <asp:TextBox ID="txtSource" runat="server"></asp:TextBox>
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
                        <asp:GridView ID="grdSource" runat="server" DataKeyNames="EmpSourceOfEmploymentID" Width="50%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grdSource_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmpSourceOfEmploymentID" HeaderText="EmpSourceOfEmploymentID" Visible="False" />
                                <asp:BoundField DataField="Source" HeaderText="Source" />
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
                </div>
                <asp:HiddenField ID="IsEdit" runat="server" />
                <asp:HiddenField ID="TableID" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
