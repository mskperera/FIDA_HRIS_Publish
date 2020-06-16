<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="GroupAssignToCompanyLocation.aspx.cs" Inherits="Smarter_HRIS.GroupAssignToCompanyLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeAllNames",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Group Assign To Company Location</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
      
     
        <div class="grid">
            <div class="row">
                <div class="span3">
                    <label>Company Name</label>
                    <label>Company Location</label>
                    <label>Employee/ Group Name</label>
                    <label>From Date</label>
                    <label>To Date</label>
                    <label>Is Active</label>
                    <br />
                    <%--<asp:Button ID="bttnAssigntoShift" runat="server" Text="Assign" />--%>
                </div>
                <div class="span5">
                    <asp:DropDownList ID="drp_Company" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_Company_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="drp_CompanyLocation" Width="200" runat="server" AutoPostBack="True"></asp:DropDownList>

                     <asp:TextBox ID="txtByEmployee" runat="server"></asp:TextBox><br />
                    <input type="date" id="txtFromDate" runat="server" name="FromDate" /><br />
                    <input type="date" id="txtToDate" runat="server" name="ToDate" /><br />
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkIsActive" runat="server" />
                            <span class="check"></span>
                            IsActive
                        </label>
                    </div>
                </div>
            </div>
            <div class="row">
                <button class="shortcut success" type="button" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                    <i class="icon-enter"></i>
                    Assign
                </button>
        <%--        <button class="shortcut warning" type="button" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                    <i class="icon-remove"></i>
                    Delete
                </button>--%>


                <asp:Panel ID="pnlNotify" runat="server">
                    <div class="row text-center">
                        <div class="window flat shadow">
                            <label>
                                <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
                                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </label>
                            <button class="info" id="bttnYes" runat="server" onserverclick="bttnYes_click">Yes</button>
                            <button class="danger" id="bttnNo" runat="server" onserverclick="bttnNo_click">No</button>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlNotify1" runat="server">
                    <div class="row text-center">
                        <div class="window flat shadow">
                            <label>
                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
                                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                            </label>
                            <button class="info" id="bttnBack" runat="server" onserverclick="bttnBack_click">Back</button>

                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div class="row">
                <legend>Search Group Assign To Company Location</legend>
                <div class="span3">
                    <label>Company Name</label>
                    <label>Company Location</label>
                    <label>Employee Name</label>
                    <label>From Date</label>
                    <label>To Date</label>
                    <button class="shortcut primary" runat="server" id="bttnSearch" onserverclick="bttnSearch_click">
                        <i class="icon-search"></i>
                        Search
                    </button>
                    <asp:Panel ID="pnlSearch" runat="server"></asp:Panel>
                </div>
                <div class="span3">
            <asp:DropDownList ID="drpCompany_Search" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCompany_Search_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="drpCompanyLocatoin_search" Width="200" runat="server" AutoPostBack="True"></asp:DropDownList>

                    <asp:TextBox ID="txtSearchEmp" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txtSearchShift" runat="server"></asp:TextBox><br />
                    <input type="date" id="txtSearchFromDate" runat="server" name="txtSearchFromDate" /><br />
                    <input type="date" id="txtSearchToDate" runat="server" name="txtSearchToDate" /><br />
                </div>
            </div>
            <div class="row">
                <div class="span9">
                    <label>Detailed Grid</label>
                    <asp:GridView ID="grdGACSearch" runat="server" DataKeyNames="GroupAssignToLocationID" AutoGenerateColumns="False" CellPadding="7" Width="100%" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowDeleting="grdSearch_RowDeleting">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                                  <asp:BoundField DataField="GroupAssignToLocationID" HeaderText="GroupAssignToLocationID" Visible="False" />
                            <asp:BoundField DataField="CompanyName" HeaderText="Company" />
                            <asp:BoundField DataField="LocationName" HeaderText="Company Location" />
                            <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo" />
                            <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />                
                            <asp:BoundField DataField="FromDate" HeaderText="Assigned Date" DataFormatString="{0:MM/dd/yyyy}" />
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
                </div>
           

        </div>


        <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
</asp:Content>
