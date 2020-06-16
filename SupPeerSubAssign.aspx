<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="SupPeerSubAssign.aspx.cs" Inherits="Smarter_HRIS.SupPeerSubAssign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearchEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtSupervisor.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
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

    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Assign Reporting Type</a></li>
                <li><a href="#_page_2">Search</a></li>
            </ul>

            <div class="frames">
                <%-- Apply Leaves Tab --%>
                <div class="frame" id="_page_1">
                    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend>Assign Reporting Type (Subordinates/ Peers/ Supervisors)</legend>

                            <div class="grid">
                                <div class="row">
                                    <div class="span3">
                                        <label>Employee Name for Category</label>
                                        <label>Select Reporting Type</label>
                                        <div class="span2">
                                            <hr />
                                        </div>
                                        <label>Company</label>
                                        <label>Division</label>

                                    </div>
                                    <div class="span4">

                                        <asp:TextBox ID="txtSupervisor" runat="server" Width="300px" AutoPostBack="true"></asp:TextBox>
                                        <asp:DropDownList ID="drpGroup" runat="server" Width="200px" AutoPostBack="True">
                                            <asp:ListItem Text="- select -" Value="0" />
                                            <asp:ListItem Text="Supervisor" Value="Supervisor" />
                                            <asp:ListItem Text="Subordinate" Value="Subordinate" />
                                            <asp:ListItem Text="Peer" Value="Peer" />
                                        </asp:DropDownList>
                                        <asp:Button ID="bttnSearch2" runat="server" Text="Select" CssClass="info" OnClick="drpGroup_SelectedIndexChanged" style="margin-top: 2px;"/>
                                    </div>
                                    <div class="span4" >
                                        <label style=" font-weight: bold;">(Select Employee for Category)</label>
                                    </div>
                                    <div class="span7">
                                        <hr />
                                    </div>
                                    <div class="span5">
                                        <asp:DropDownList ID="ddlCompany" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList><br />
                                        <asp:DropDownList ID="ddlDivision" runat="server" Width="200px" DataTextField="DivisionName" DataValueField="DivisionID"></asp:DropDownList>
                                        <asp:Button ID="bttnFilter" runat="server" Text="Filter Employees" CssClass="info" OnClick="bttnFilter_Click" />
                                    </div>
                                    <div class="span2">
                                    </div>
                                    <div class="span3">
                                    </div>

                                    <div class="span4">
                                        <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click" >
                                            <i class="icon-floppy"></i>
                                            Save
                                        </button>
                                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                    </div>
                                </div>
                                <br />
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                                <div class="row">
                                    <div class="span6">
                                        <label><b>Employees Selection</b></label>
                                        <asp:Button ID="bttnSelectAll" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll_Click" />&nbsp;
                        <asp:Button ID="bttnDeselectAll" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll_Click" />
                                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                        <asp:Button ID="bttnSAdd" runat="server" Text="+" CssClass="info" OnClick="bttnSAdd_click" /><br />
                                        <asp:Label ID="lblCount" runat="server" Text="" Font-Size="Smaller"></asp:Label>
                                        <asp:CheckBoxList CssClass="pCheck" ID="chkBoxEmployees" runat="server" AutoPostBack="True" OnTextChanged="chkBoxEmployees_TextChanged">
                                        </asp:CheckBoxList>
                                    </div>
                                    <div class="span2">
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Button ID="bttnAdd" runat="server" Text=">" CssClass="success" OnClick="bttnAdd_Click" /><br />
                                        <asp:Button ID="bttnRemove" runat="server" Text="<" CssClass="warning" OnClick="bttnRemove_Click" /><br />
                                    </div>
                                    <div class="span5">
                                        <label><b>Selected Employees for</b>
                                            <asp:Label ID="lblSelect" runat="server" Text="" Font-Size="Large" Font-Bold="true"></asp:Label></label>
                                        <asp:Button ID="bttnSelectAll1" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll1_Click" />&nbsp;
                        <asp:Button ID="bttnDeselectAll1" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll1_Click" />
                                        <asp:CheckBoxList CssClass="pCheck" ID="chkBoxSelectedEmp" runat="server">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="frame" id="_page_2">

                    <legend>Search Employee Reporting Hierarchy</legend>
                    <asp:Panel ID="pnlSearch" runat="server"></asp:Panel>
                    <div class="grid">
                        <div class="row">
                            <div class="span2">
                                <label>Employee</label>
                            </div>
                            <div class="span4">
                                :
                                <asp:TextBox ID="txtSearchEmployee" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="row">
                                    <asp:Button ID="bttnSearch" runat="server" CssClass="warning" OnClick="bttnSearch_click" Text="Search" />
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdResults" runat="server"  Width="50%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                              <asp:BoundField DataField="CoveringName" HeaderText="Covering Name" />
                                              <asp:BoundField DataField="CoveringDesignation" HeaderText="Covering Designation" />
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

                                    <%--<asp:GridView ID="grdResults" runat="server" CellPadding="7" Width="50%" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
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
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>


                </div>
            </div>

        </div>
</asp:Content>

