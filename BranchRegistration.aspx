<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="BranchRegistration.aspx.cs" Inherits="Smarter_HRIS.BranchRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Branch Registration</legend>

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
                            <label>Bank Name</label>
                            <label>Branch Code</label>
                            <label>Branch Name</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpBank" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpBank_SelectedIndexChanged"></asp:DropDownList>
                            <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
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
                        <asp:GridView ID="grdBranch" DataKeyNames="BranchRegistrationID,BankRegistrationID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdBranch_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="BranchRegistrationID" HeaderText="BranchRegistrationID" Visible="False" />
                                <asp:BoundField DataField="BankName" HeaderText="Bank Name" />
                                <asp:BoundField DataField="BranchCode" HeaderText="Branch Code" />
                                <asp:BoundField DataField="BranchName" HeaderText="Branch Name" />
                                <asp:BoundField DataField="BankRegistrationID" HeaderText="BankRegistrationID" Visible="False" />
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
