<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="OTApprovalbySession.aspx.cs" Inherits="Smarter_HRIS.OTApprovalbySession1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
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
            $('#<%= txtSession.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetSessionNames",
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
            $('#<%= txtSessionE.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetSessionNames",
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
        <legend>OT Approvals by Sesssions</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
                <div class="span2">
                    <asp:RadioButton ID="radioByDivision" Text="By Division" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_CheckedChanged" />
                </div>
                <div class="span3">
                    <asp:RadioButton ID="radioByEmp" Text="By Employee" runat="server" CssClass="pCheck" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="A" />
                </div>
            </div>

            <asp:Panel ID="pnlDivision" runat="server">
                <div class="row">
                    <div class="span2">
                        <label>Company</label>
                        <label>Division</label>
                        <label>Employee</label>
                        <label>Session</label>
                    </div>
                    <div class="span3">
                        <asp:DropDownList ID="ddlCompany" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList><br />
                        <asp:DropDownList ID="ddlDivision" runat="server" Width="200px" DataTextField="DivisionName" DataValueField="DivisionID" AutoPostBack="true" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged"></asp:DropDownList><br />
                        <asp:DropDownList ID="ddlEmployee" runat="server" Width="200px"></asp:DropDownList>
                         <asp:TextBox ID="txtSession" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="span2">
                        
                          
                    </div>
                   
                    <div class="span5">
                       
                    </div>
                     <div class="span6">
                        <asp:Label ID="lblInfo" Visible="true" runat="server" Text=""></asp:Label>
                    </div>
                     <div class="span5">
                         
                             <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <label>
                                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                    </label>
                                </td>

                                <%--<td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>--%>
                            </tr>
                        </table>
                         <td>&nbsp;&nbsp;<asp:Label ID="lblEmpID" runat="server" Text="" Visible="false"></asp:Label>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlByEmployee" runat="server">
                <div class="row">
                    <div class="span2">
                        <label>Session</label>
                        <label>Employee</label>
                    </div>
                    <div class="span3">
                        <asp:TextBox ID="txtSessionE" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="span5">
                    </div>
                </div>
            </asp:Panel>
            <div class="row">
                <button class="shortcut warning" id="bttnSearch" runat="server" onserverclick="bttnSearch_click">
                    <i class="icon-search"></i>
                    Search</button>
                <button class="shortcut success" id="bttnApprove" runat="server" onserverclick="bttnApprove_click">
                    <i class="icon-auction"></i>
                    Approve
                </button>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="OT time legend - Hours : Minutes" Font-Bold="true" Font-Size="Smaller"></asp:Label>
                <%--<table class='table striped bordered hovered'>
                        <thead>
                            <th>Date</th>
                            <th>Employee Name</th>
                            <th>Shift Type</th>
                            <th>Shift IN</th>
                            <th>Shift OUT</th>
                            <th>Check IN</th>
                            <th>Check OUT</th>
                            <th>Rate</th>
                            <th>Early OT</th>
                            <th>Approved EOT</th>
                            <th>Late OT</th>
                            <th>Approved LOT</th>
                            <th>Day OT</th>
                            <th>Approved DOT</th>
                        </thead>
                        <tbody>
                    <asp:Panel ID="pnlOT" runat="server"></asp:Panel>
                            </tbody>
                    </table>--%>
               <%--  onrowdatabound="GridView1_RowDataBound"--%>
                <asp:GridView ID="grdOT" onrowdatabound="GridView1_RowDataBound" DataKeyNames="EmployeeID,SessionID" Width="1000" runat="server" AutoGenerateColumns="False" CellPadding="7" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellSpacing="3">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                        <asp:BoundField DataField="SessionName" HeaderText="Session Name">
                            <ControlStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" />
                        <asp:BoundField DataField="ActualOT" HeaderText="Actual OT" />
                        <asp:TemplateField HeaderText="Approved OT">
                            <ItemTemplate>
                                <asp:TextBox ID="txtApprovedOT" runat="server" Width="70" Text='<%# Eval("ApprovedOT") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Previously Approved OT">
                            <ItemTemplate>
                                <asp:TextBox ID="txtPreviouslyApprovedOT" Enabled="false" runat="server" Width="70" Text='<%# Eval("PreviouslyApprovedOT") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </div>
        </div>

        <asp:HiddenField ID="HiddenField1" runat="server" />


    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
