<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CompanyRegistration.aspx.cs" Inherits="Smarter_HRIS.CompanyRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Company Registration</legend>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position:relative; top:55%; left:40%"  src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

        <div class="grid">
            <div class="row">
                <div class="span2">
                    <label>Company No</label>
                    <label>Company Name</label>
                    <label>Phone No</label>
                    <label>Address</label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="txtCompanyNo" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    <div class="input-control textarea info-state">
                        <textarea id="txtAddress" runat="server"></textarea>
                    </div>
                </div>
                <div class="span2">
                    <label>Registration Years</label>
                    <label>EPF Registration No</label>
                    <label>Tin No</label>
                </div>
                <div class="span4">
                    <asp:DropDownList ID="drpYears" Width="200" runat="server"></asp:DropDownList><br />
                    <asp:TextBox ID="txtEPFNo" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtTinNo" runat="server"></asp:TextBox>
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
                <asp:GridView ID="grdCompany" runat="server" DataKeyNames="CompanyRegistrationID,RegistrationYearsID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdCompany_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CompanyRegistrationID" HeaderText="CompanyRegistrationID" Visible="False" />
                        <asp:BoundField DataField="CompanyNo" HeaderText="Company No" NullDisplayText=" "  />
                        <asp:BoundField DataField="CompanyName" HeaderText="Company Name" NullDisplayText=" "  />
                        <asp:BoundField DataField="CompanyTel" HeaderText="Company Tel" NullDisplayText=" "  />
                        <asp:BoundField DataField="CompanyAddress" HeaderText="Company Address" NullDisplayText=" "  />
                        <asp:BoundField DataField="RegistrationYearsID" HeaderText="RegistrationYearsID" Visible="False" />
                        <asp:BoundField DataField="CompanyYear" HeaderText="Company Year" NullDisplayText=" "  />
                        <asp:BoundField DataField="EPFRegiNo" HeaderText="EPF No" NullDisplayText=" "  />
                        <asp:BoundField DataField="TinNo" HeaderText="Tin No" NullDisplayText=" "  />
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
