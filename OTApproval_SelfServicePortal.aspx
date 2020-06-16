<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OTApproval_SelfServicePortal.aspx.cs" Inherits="Smarter_HRIS.OTApproval_SelfServicePortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames_SelfServicePortal",
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
        <legend>Daily OT Approvals</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">

            <div class="row">
                <div class="span2">
                    <asp:RadioButton Enabled="false" ID="radioByDivision" Text="By Division" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_CheckedChanged" />
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
                    </div>
                    <div class="span3">
                          
                          <asp:DropDownList ID="ddlCompany" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList><br />
                        <asp:DropDownList ID="ddlDivision" runat="server" Width="200px" DataTextField="DivisionName" DataValueField="DivisionID" AutoPostBack="true" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged"></asp:DropDownList><br />
                        <asp:DropDownList ID="ddlEmployee" runat="server" Width="200px"></asp:DropDownList>
                   
                         </div>
                    <div class="span2">
                        <label>From Date</label>
                        <label>To Date</label>
                    </div>
                    <div class="span3">
                        <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                        <br />
                        <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                        <br />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlByEmployee" runat="server">
                <div class="row">
                    <div class="span2">
                                   <label>Session<%--<sup class="fg-red">*</sup>--%></label>
                        <label>From Date</label>
                        <label>To Date</label>
                        <label>Employee</label>
                    </div>
                    <div class="span6">
                            <asp:DropDownList ID="dd_session" runat="server"  Width="300px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="dd_session_SelectedIndexChanged"></asp:DropDownList><br />
                     

                        <input type="date" id="txtFromDateE" runat="server" name="txtFromDate" />
                        <br />
                        <input type="date" id="txtToDateE" runat="server" name="txtToDate" />
                        <br />
                        <asp:TextBox  Width="300" ID="txtEmployee" runat="server"></asp:TextBox>
                    </div>
                    <div class="span5">

                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <label>
                                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                    </label>
                                    <br />
                                    <%-- <label>
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </label>--%>
                                </td>

                                <%--<td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>--%>
                            </tr>
                        </table>
                        <td>&nbsp;&nbsp;<asp:Label ID="lblEmpID" runat="server" Text="" Visible="false"></asp:Label>
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

                <%--onrowdatabound="GridView1_RowDataBound"--%>
                <asp:GridView ID="grdOT" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="EmployeeID" runat="server" AutoGenerateColumns="False" CellPadding="7" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellSpacing="3">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name">
                            <ControlStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ShiftType" HeaderText="Shift Type" />
                        <asp:BoundField DataField="ShiftIN" HeaderText="Shift IN Time" />
                        <asp:BoundField DataField="ShiftOUT" HeaderText="Shift OUT Time" />
                        <asp:BoundField DataField="CheckIN" HeaderText="Check IN Time" />
                        <asp:BoundField DataField="CheckOUT" HeaderText="Check OUT Time" />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" />
                        <asp:BoundField DataField="EarlyOT" HeaderText="Early OT" />
                        <asp:TemplateField HeaderText="Approved Early OT">
                            <ItemTemplate>
                                <asp:TextBox CssClass="textBox" ID="txtApprovedEOT" runat="server" Width="50" Text='<%# Eval("ApprovedEOT") %>'></asp:TextBox>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LateOT" HeaderText="Late OT" />
                        <asp:TemplateField HeaderText="Approved Late OT">
                            <ItemTemplate>
                                <asp:TextBox ID="txtApprovedLOT" runat="server" Width="50" Text='<%# Eval("ApprovedLOT") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="DayOT" HeaderText="Day OT" />
                        <asp:TemplateField HeaderText="Approved Day OT">
                            <ItemTemplate>
                                <asp:TextBox ID="txtApprovedDOT"  runat="server" Width="50" Text='<%# Eval("ApprovedDOT") %>'></asp:TextBox>
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
