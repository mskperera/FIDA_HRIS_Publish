<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ReportAssignment.aspx.cs" Inherits="Smarter_HRIS.ReportAssignment1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Report Portal User Assignment</legend>
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
                            <label>User</label>
                        </div>
                        <div class="span6">
                            :
                            <asp:DropDownList ID="drpUser" runat="server" AutoPostBack="True" Width="200" OnSelectedIndexChanged="drpUser_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="span4">
                            <button class="shortcut primary" runat="server" id="bttnSaveAll" onserverclick="bttnSaveAll_click">
                                <i class="icon-floppy"></i>
                                Save</button>
                            <button class="shortcut success" runat="server" id="bttnNew1" onserverclick="bttnNew_click">
                                <i class="icon-new"></i>
                                New</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span4">
                            <label>Company</label>
                            <asp:DropDownList ID="drpCompany" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged"></asp:DropDownList>
                            <asp:Button ID="bttnCompanyAdd" runat="server" OnClick="bttnCompanyAdd_click" CssClass="warning" Text="Add" /><br />
                            <asp:Panel ID="pnlCompany" runat="server"></asp:Panel>
                            <asp:GridView ID="grdCompany" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyID" Width="100%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None" OnRowDeleting="grdCompany_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                            <%--  <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:GridView ID="grdCompany1" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyID" Width="100%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None" OnRowDeleting="grdCompany_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                            </asp:GridView>--%>
                        </div>

                        <div class="span4">
                            <label>Division</label>
                            <asp:DropDownList ID="drpDivision" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpDivision_SelectedIndexChanged"></asp:DropDownList>
                            <asp:Button ID="bttnDivisionAdd" runat="server" CssClass="warning" Text="Add" OnClick="bttnDivisionAdd_Click" /><br />
                            <asp:GridView ID="grdDivision" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyID,DivisionID" Width="100%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None" OnRowDeleting="grdDivision_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                                    <asp:BoundField DataField="DivisionID" HeaderText="DivisionID" Visible="False" />
                                    <asp:BoundField DataField="DivisionName" HeaderText="Division Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                            <%--    <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:GridView ID="grdDivision1" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyID,DivisionID" Width="100%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None" OnRowDeleting="grdDivision_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                                    <asp:BoundField DataField="DivisionID" HeaderText="DivisionID" Visible="False" />
                                    <asp:BoundField DataField="DivisionName" HeaderText="Division Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                            </asp:GridView>--%>
                        </div>
                        <div class="span2">
                            <label>Report Type</label>
                            <br />
                            <div class="input-control checkbox">
                                <label>
                                    <input type="checkbox" id="chkIsCompany" runat="server" />
                                    <span class="check"></span>
                                    All
                                </label>
                            </div>
                            <br />
                            <div class="input-control checkbox">
                                <label>
                                    <input type="checkbox" id="chkIsDivision" runat="server" />
                                    <span class="check"></span>
                                    Division-Wise
                                </label>
                            </div>
                            <br />
                            <div class="input-control checkbox">
                                <label>
                                    <input type="checkbox" id="chkIsEmployee" runat="server" />
                                    <span class="check"></span>
                                    Employee-Wise
                                </label>
                            </div>
                        </div>
                        <div class="span4">
                            <label>Reports</label>
                            <asp:DropDownList ID="drpReports" runat="server" Width="200"></asp:DropDownList>
                            <asp:Button ID="bttnReportAdd" runat="server" CssClass="warning" Text="Add" OnClick="bttnReportAdd_Click" /><br />
                            <asp:GridView ID="grdReports" runat="server" AutoGenerateColumns="False" DataKeyNames="ReportID,ReportCat" Width="100%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None" OnRowDeleting="grdReports_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="ReportID" HeaderText="ReportID" Visible="False" />
                                    <asp:BoundField DataField="ReportCat" HeaderText="ReportCat" Visible="False" />
                                    <asp:BoundField DataField="ReportName" HeaderText="Report Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                            <%--  <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:GridView ID="grdReports1" runat="server" AutoGenerateColumns="False" DataKeyNames="ReportID,ReportCat" Width="100%" CellPadding="6" CellSpacing="2" Font-Size="Smaller" ForeColor="#333333" GridLines="None" OnRowDeleting="grdReports_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="ReportID" HeaderText="ReportID" Visible="False" />
                                    <asp:BoundField DataField="ReportCat" HeaderText="ReportCat" Visible="False" />
                                    <asp:BoundField DataField="ReportName" HeaderText="Report Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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
                            </asp:GridView>--%>
                        </div>
                    </div>
                    <div class="row">
                        <%--<button class="shortcut primary" runat="server" id="bttnSaveAll" onserverclick="bttnSaveAll_click">
                        <i class="icon-floppy"></i>
                        Save</button>--%>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
</asp:Content>
