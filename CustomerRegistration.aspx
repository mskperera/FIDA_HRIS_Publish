<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="Smarter_HRIS.CustomerRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Customer Registration</legend>

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
                            <label>Customer Reg. No</label>
                            <label>System Ref. Code</label>
                            <label>CustomerName</label>
                            <label>Address No</label>
                            <label>Street</label>


                        </div>
                        <div class="span4">
                            <asp:TextBox ID="txtCustRegNo" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtSystemRefcode" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtAddressNo" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>

                        </div>

                        <div class="span2">
                            <label>City</label>
                            <label>District</label>
                            <label>Provinace</label>
                            <label>Country</label>
                        </div>

                        <div class="span2">
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtDisctrict" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtProvinace" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                        </div>

                    </div>
                    <div class="row">
                        <button class="shortcut success" type="button" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        <asp:GridView ID="grdBank" DataKeyNames="CustomerRegistrationID" Width="75%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdBank_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CustomerRegistrationID" HeaderText="CustomerRegistrationID" Visible="False" />
                                <asp:BoundField DataField="CustomerRegistrationNo" HeaderText="CustomerReg. No" />
                                <asp:BoundField DataField="SystemReferenceCode" HeaderText="SystemRef. Code" />


                                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" />
                                <asp:BoundField DataField="Address_No" HeaderText="Address_No" />
                                <asp:BoundField DataField="Address_Street" HeaderText="Street" />
                                <asp:BoundField DataField="Address_City" HeaderText="City" />
                                <asp:BoundField DataField="District" HeaderText="District" />
                                <asp:BoundField DataField="Provinace" HeaderText="Provinace" />
                                <asp:BoundField DataField="Country" HeaderText="Country" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                       <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" CssClass="primary danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                  
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
