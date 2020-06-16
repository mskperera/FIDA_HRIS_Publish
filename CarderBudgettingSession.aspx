<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CarderBudgettingSession.aspx.cs" Inherits="Smarter_HRIS.CarderBudgettingSession" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <legend>Carder Budgetting Session</legend>
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
                        <div class="span3">
                            <label>Company Name</label>
                            <label>Session Name<sup class="fg-red">*</sup></label>

                            <label>Session Start<sup class="fg-red">*</sup></label>
                            <label>Session End<sup class="fg-red">*</sup></label>
                            <label>Note</label>
                        </div>

                        <div class="span5">
                          <%--  <asp:Label ID="lblCompanyName" Visible="true" runat="server" Text="" Font-Bold="true" Height="30" Width="600"></asp:Label>--%>
                            <asp:DropDownList ID="ddlCompany" runat="server" Width="300px" AutoPostBack="true" style="margin-bottom: 3px;"></asp:DropDownList>
                            <asp:TextBox ID="txtSessionName" runat="server"></asp:TextBox>

                            <input type="date" id="txtFromDate" runat="server" name="txtFromDate" style="width: 198px;" /><br />
                            <input type="date" id="txtToDate" runat="server" name="txtToDate" style="width: 198px;" />
                            <asp:TextBox ID="txtNote" runat="server"></asp:TextBox>
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
                        <asp:GridView ID="grdSession" runat="server" DataKeyNames="SessionID,CompanyRegistrationID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdSession_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="SessionID" HeaderText="Session ID" Visible="true" />
                                <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                <asp:BoundField DataField="FromDate" HeaderText="From Date" />
                                <asp:BoundField DataField="ToDate" HeaderText="To Date" />
                                <asp:BoundField DataField="Note" HeaderText="Note" />
                                 <asp:BoundField DataField="CompanyRegistrationID" HeaderText="CompanyRegistrationID" Visible="false"/>
                                 <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
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

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
    
</asp:Content>
