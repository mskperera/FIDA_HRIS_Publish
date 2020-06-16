<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CarderBudgettingDetail_old.aspx.cs" Inherits="Smarter_HRIS.CarderBudgettingDetail_old" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    <%--    function sum() {
            var txtFirstNo = document.getElementById("<%=txtQTY.ClientID%>").value;
            var txtSecondNo = document.getElementById("<%=txtUnitPrice.ClientID%>").value;
            var result = parseFloat(txtFirstNo) * parseFloat(txtSecondNo);
            if (!isNaN(result)) {
                document.getElementById("<%=txtTotal.ClientID%>").value = result.toFixed(2);
            }
            if (txtFirstNo != "" && txtSecondNo == "") {
                document.getElementById("<%=txtTotal.ClientID%>").value = parseFloat(txtFirstNo).toFixed(2);
            }
            if (txtFirstNo == "" && txtSecondNo != "") {
                document.getElementById("<%=txtTotal.ClientID%>").value = parseFloat(txtSecondNo).toFixed(2);
            }
            if (txtFirstNo == "" && txtSecondNo == "") {
                document.getElementById("<%=txtTotal.ClientID%>").value = "";
            }
        }--%>

        //function isNumberKeyWithDot(evt) {
        //    var charCode = (evt.which) ? evt.which : event.keyCode
        //    if ((charCode >= 48 && charCode <= 57) || (charCode == 46)) {

        //        return true;
        //    }

        //    return false;
        //}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Carder Budgetting Details</legend>

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
                        <div class="span3">
                            <label style="margin-top: 0px;">Company Name</label>

                            <label>Division Name</label>
                            <label>Sub Division Name</label>
                            <label>Department Name</label>

                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpCompany" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged"></asp:DropDownList><br />

                            <asp:DropDownList ID="drpDivision" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSubDivision" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;" ></asp:DropDownList><br />
                            <asp:DropDownList ID="drpDepartment" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;" ></asp:DropDownList><br />

                        </div>
                        <div class="span3">

                            <label style="margin-top: 0px;">SubDepartment Name</label>
                            <label>Section Name</label>
                            <label>SubSection Name</label>


                        </div>
                        <div class="span4">

                            <asp:DropDownList ID="drpSubDepartment" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;" OnSelectedIndexChanged="drpSubDepartment_SelectedIndexChanged"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSection" Width="200" runat="server" Style="margin-bottom: 3px;" AutoPostBack="True" OnSelectedIndexChanged="drpSection_SelectedIndexChanged"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSubSection" Width="200" runat="server" Style="margin-bottom: 3px;"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span3">
                            <label>Company Designation</label>
                            <label>Session</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpDesignation" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;"></asp:DropDownList><br />
                            <asp:DropDownList ID="drpSession" Width="200" runat="server" AutoPostBack="True" Style="margin-bottom: 3px;"></asp:DropDownList>
                        </div>
                        <div class="span3">
                            <label>Employee Count</label>
                            <label>Unit Budget</label>
                            <label>Total Budget</label>
                        </div>
                        <div class="span4">
                            <asp:TextBox ID="txtQTY" runat="server" Width="200" Style="margin-bottom: 3px;" onkeyup="sum()" onkeypress="return isNumberKeyWithDot(event);" ClientIDMode="Static"></asp:TextBox><br />
                            <asp:TextBox ID="txtUnitPrice" runat="server" Width="200" Style="margin-bottom: 3px;" onkeyup="sum()" onkeypress="return isNumberKeyWithDot(event);" ClientIDMode="Static"></asp:TextBox>
                            <asp:TextBox ID="txtTotal" runat="server" Width="200" Style="margin-bottom: 3px;" onkeypress="return isNumberKeyWithDot(event);"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <%-- onserverclick="bttnSave_click"--%>
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <%----%>
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        Session &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList>
                        &nbsp;&nbsp; Designation &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpDesignation1" runat="server" Width="200"></asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large"  OnClick="bttnSearch_click"/>
                        <%----%>
                        <br />
                        <br />
                        <asp:GridView ID="grdCarderBudgetting" runat="server" DataKeyNames="CompanyID,CompanyDesignationID,SubSectionID,DivisionID,SubDivisionID,DepartmentID,SubDepartmentID,SectionID,ID" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" OnRowCommand="grdSession_RowCommand">

                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CompanyID" HeaderText="CompanyRegistrationID" Visible="False" />
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                <asp:BoundField DataField="CompanyDesignationID" HeaderText="CompanyDesignationID" Visible="False" />
                                <asp:BoundField DataField="Name" HeaderText="Company Designation" />
                                <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                <asp:BoundField DataField="DivisionID" HeaderText="DivisionID" Visible="False" />
                                <asp:BoundField DataField="DivisionName" HeaderText="Division Name" />
                                <asp:BoundField DataField="SubDivisionID" HeaderText="SubDivisionID" Visible="False" />
                                <asp:BoundField DataField="SubDivisionName" HeaderText="Sub Division Name" />
                                <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" Visible="False" />
                                <asp:BoundField DataField="DepartmentName" HeaderText="Department Name" />
                                <asp:BoundField DataField="SubDepartmentID" HeaderText="SubDepartmentID" Visible="False" />
                                <asp:BoundField DataField="SubDepartmentName" HeaderText="Sub Department Name" />
                                <asp:BoundField DataField="SectionID" HeaderText="SectionID" Visible="False" />
                                <asp:BoundField DataField="SectionName" HeaderText="Section" />
                                <asp:BoundField DataField="SubSectionID" HeaderText="SubSectionID" Visible="False" />
                                <asp:BoundField DataField="SubSectionName" HeaderText="Sub Section Name" />
                                <asp:BoundField DataField="UnitBudget" HeaderText="Unit Budget" DataFormatString="{0:F2}" />
                                <asp:BoundField DataField="Qty" HeaderText="Employee Count" DataFormatString="{0:F2}" />
                                <asp:BoundField DataField="TotalValue" HeaderText="Total Value" DataFormatString="{0:F2}" />
                                <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
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
