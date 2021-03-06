﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="SectionRegistration.aspx.cs" Inherits="Smarter_HRIS.SectionRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Section Registration</legend>

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
                            <label>Division Name</label>
                            <label>Sub Division Name</label>
                            <label>Department Name</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpCompany" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpDivision" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDivision_SelectedIndexChanged"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSubDivision" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpSubDivision_SelectedIndexChanged"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpDepartment" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDepartment_SelectedIndexChanged"></asp:DropDownList><br />
                        </div>
                        <div class="span3">
                            <label>SubDepartment Name</label>
                            <label>Section No</label>
                            <label>Section Name</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpSubDepartment" Width="200" runat="server"></asp:DropDownList><br />
                            <asp:TextBox ID="txtNo" runat="server"></asp:TextBox>
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
                        <asp:GridView ID="grdSection" runat="server" DataKeyNames="SectionID,CompanyRegistrationID,DivisionID,SubDivisionID,DepartmentID,SubDepartmentID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdSection_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="SectionID" HeaderText="SectionID" Visible="False" />
                                <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                                <asp:BoundField DataField="SectionNo" HeaderText="Section No" />
                                <asp:BoundField DataField="CompanyRegistrationID" HeaderText="CompanyRegistrationID" Visible="False" />
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                <asp:BoundField DataField="DivisionID" HeaderText="DivisionID" Visible="False" />
                                <asp:BoundField DataField="DivisionName" HeaderText="Division Name" />
                                <asp:BoundField DataField="SubDivisionID" HeaderText="SubDivisionID" Visible="False" />
                                <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" Visible="False" />
                                <asp:BoundField DataField="DepartmentName" HeaderText="Department Name" />
                                <asp:BoundField DataField="SubDepartmentID" HeaderText="SubDepartmentID" Visible="False" />
                                <asp:BoundField DataField="SubDepartmentName" HeaderText="SubDepartment" />
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
