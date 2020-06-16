<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateAllowances.aspx.cs" Inherits="Smarter_HRIS.CreateAllowances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Pay Item Registration</legend>
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
                            <label>Company Name<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpCompany" runat="server" Width="200"></asp:DropDownList>
                            <label>Pay Item Name<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtPayItemName" runat="server"></asp:TextBox>
                            <label>Is Active</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsActive" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Is Fix</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsFix" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                        </div>
                        <div class="span4">
                            <label>Mode<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpMode" Width="200" runat="server"></asp:DropDownList><br />
                            <label>Is Include EPF</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsIncludeEPF" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Zone<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpZone" Width="200" runat="server"></asp:DropDownList><br />
                        </div>
                        <div class="span3">
                            <label>Allowance Type<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpAllowanceType" Width="200" runat="server"></asp:DropDownList><br />
                            <label>Is Tax Applicable</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkIsTaxApplicable" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>LumpSum Payment</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkLumpSumPayment" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>


                            <label>PayItem Classicfication<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpPayItemClassicfication" Width="200" runat="server"></asp:DropDownList><br />

                        </div>
                    </div>
                    <div class="row">
                        <button class="shortcut success" runat="server" id="bttnSave" type="button" onserverclick="bttnSave_click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        <asp:GridView ID="grdAllowances" runat="server" DataKeyNames="AllowancesID,PayTypeCategoryID,ZoneID,AllowanceTypeID,CompanyID,PayItemClassificationID" Width="100%" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" OnRowCommand="grdAllowances_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="AllowancesID" HeaderText="Allowances No" Visible="true" />
                                <asp:BoundField DataField="AllowanceName" HeaderText="Allowance Name" />
                                <asp:BoundField DataField="IsActive" HeaderText="IsActive" />
                                <asp:BoundField DataField="IsFix" HeaderText="IsFix" />
                                <asp:BoundField DataField="PayTypeCategoryID" HeaderText="PayTypeCategoryID" Visible="False" />
                                <asp:BoundField DataField="PayTypeCategoryName" HeaderText="Mode" />
                                <asp:BoundField DataField="IsIncludeEPF" HeaderText="Include EPF" />
                                <asp:BoundField DataField="ZoneID" HeaderText="ZoneID" Visible="False" />
                                <asp:BoundField DataField="ZoneName" HeaderText="Zone Name" />
                                <asp:BoundField DataField="AllowanceTypeID" HeaderText="AllowanceTypeID" Visible="False" />
                                <asp:BoundField DataField="AllowanceTypeName" HeaderText="Allowance Type" />
                                <asp:BoundField DataField="TaxApplicability" HeaderText="Tax Applicability" />
                                <asp:BoundField DataField="LumpSumPayment" HeaderText="Lump Sum" />
                                <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                                <asp:BoundField DataField="PayItemClassificationID" HeaderText="PayItemClassificationID" Visible="False" />
                                <asp:BoundField DataField="PayItemClassification" HeaderText="PayItem Classification" />

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
