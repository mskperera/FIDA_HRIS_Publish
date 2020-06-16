<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LoanType.aspx.cs" Inherits="Smarter_HRIS.Loan_Type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Loan Type</legend>
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
                        <div class="span2">
                            <label>Company Name<sup class="fg-red">*</sup></label>
                            <label>Loan Type Name<sup class="fg-red">*</sup></label>
                            <label>Interest<sup class="fg-red">*</sup></label>
                            <label>Variable Deduction<sup class="fg-red">*</sup></label>
                            <label>IsActive</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpCompany" runat="server" Width="200" Height="24" style="margin-top: 8px;"></asp:DropDownList><br />
                            <asp:TextBox ID="txtTypeName" runat="server"></asp:TextBox><br />
                            <asp:TextBox ID="txtInterest" runat="server"></asp:TextBox><br />
                            <asp:DropDownList ID="drpVariableDeduction" runat="server" Width="200" Height="24"></asp:DropDownList><br />
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsActive" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
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
                        <asp:GridView ID="grdLoanType" BorderWidth="1px" BorderStyle="Solid" GridLines="Vertical" BorderColor="LightGray" runat="server" DataKeyNames="CompanyLoanTypeID,AllowanceID,CompanyID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" OnRowCommand="grdLoanType_RowCommand">
                            <%--OnRowDeleting="grdLoanType_RowDeleting"--%>
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CompanyLoanTypeID" HeaderText="CompanyLoanTypeID" Visible="False" />
                                <asp:BoundField DataField="LoanType" HeaderText="Loan Type Name" />
                                <asp:BoundField DataField="Interest" HeaderText="Interest" />
                                <asp:BoundField DataField="IsActive" HeaderText="IsActive" />
                                <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="false" />
                                <asp:BoundField DataField="AllowanceName" HeaderText="Deduction Name" />
                                <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="false" />
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <%--<asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />--%>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle HorizontalAlign="Left" />
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
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
