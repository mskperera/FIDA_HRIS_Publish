<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CompanyBankAccountDetails.aspx.cs" Inherits="Smarter_HRIS.CompanyBankAccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Company Bank Account Details</legend>

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
                            <label>Company Name</label>
                            <label>CompanyCode</label>
                            <label>Salary Type</label>

                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpCompany" Width="200" runat="server" AutoPostBack="True"></asp:DropDownList><br />
                            <asp:TextBox ID="txtCompanyCode" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="drpSalaryType" Width="200" runat="server" AutoPostBack="True"></asp:DropDownList><br />
                        </div>
                        <div class="span3">
                            <label>Bank Name</label>
                            <label>Branch Name</label>
                            <label>Account No</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpBank" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpLoanType_SelectedIndexChanged"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpBranch" Width="200" runat="server"></asp:DropDownList><br />
                            <asp:TextBox ID="txtAccNo" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <%-- onserverclick="bttnSave_click"--%>
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <%--onserverclick="bttnNew_click"--%>
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        <asp:GridView ID="grdBank" DataKeyNames="CompanyBankAccID,CompanyID,SalaryTypeID,BankID,BranchID" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="7" GridLines="Vertical" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellSpacing="3" OnRowCommand="grdBank_RowCommand">
                            <%--                        <asp:GridView ID="grdBank" runat="server" DataKeyNames="CompanyBankAccID" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" > --%> <%--OnRowCommand="grdSubSec_RowCommand"--%>
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CompanyBankAccID" HeaderText="CompanyBankAccID" Visible="False" />
                                <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="false"/>
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                <asp:BoundField DataField="CompanyCode" HeaderText="Company Code" />
                                <asp:BoundField DataField="SalaryType" HeaderText="Salary Type" />
                                <asp:BoundField DataField="DebitBankCode" HeaderText="Debit Bank Code" />
                                <asp:BoundField DataField="DebitBranchCode" HeaderText="Debit Branch Code" />
                                <asp:BoundField DataField="DebitAccountNo" HeaderText="Debit Account No" />

                                <asp:BoundField DataField="SalaryTypeID" HeaderText="SalaryTypeID" Visible="False" />
                                <asp:BoundField DataField="BankID" HeaderText="BankID" Visible="False" />
                                <asp:BoundField DataField="BranchID" HeaderText="BranchID" Visible="False" />

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
