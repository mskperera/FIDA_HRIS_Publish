<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="VariableAdditionAssign.aspx.cs" Inherits="Smarter_HRIS.VariableAdditionAssign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />

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
            $('#<%= txtEmpSearch.ClientID %>').autocomplete({
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
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Variable Additions Details</a></li>
                <li><a href="#_page_2">Downloads/ Uploads</a></li>
            </ul>

            <div class="frames">
                <%-- Process Attendance Summary --%>
                <div class="frame" id="_page_2">

                    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <legend>Variable Additions Excel</legend>
                            <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <label>Company<sup class="fg-red">*</sup></label>
                                        <label>Session<sup class="fg-red">*</sup></label>
                                        <label>Variable Addition<sup class="fg-red">*</sup></label>
                                    </div>
                                    <div class="span3">
                                        <asp:DropDownList ID="drpCompany1" runat="server" Width="200"></asp:DropDownList><br />
                                        <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList><br />
                                        <asp:DropDownList ID="drpAddition1" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut info" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                                            <i class="icon-download"></i>
                                            Download Excel</button>
                                        <button class="shortcut info" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">
                                            <i class="icon-upload"></i>
                                            Upload Excel</button>
                                    </div>
                                </div>
                                <div class="row text-center">
                                    <asp:Panel ID="pnlUpload" runat="server">
                                        <div class="window flat shadow">
                                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                            <button class="image-button primary" runat="server" id="Button1" onserverclick="bttnUploadExcel_click">
                                                Upload
                                         <i class="icon-upload-3 bg-cobalt"></i>
                                            </button>
                                            <br />
                                            <br />
                                            <asp:GridView ID="grdVariableAddUpload" DataKeyNames="EmployeeID,SessionID,AdditionID,CompanyID" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical">
                                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                                <Columns>
                                                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                                    <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="False" />
                                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                                    <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                                    <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                                    <asp:BoundField DataField="AdditionID" HeaderText="AdditionID" Visible="False" />
                                                    <asp:BoundField DataField="AdditionName" HeaderText="Addition Name" />
                                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
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
                                        <%--<div class="grid text-center">
                                            <div class="row text-center">
                                                <div class="span12">
                                                    
                                                </div>
                                            </div>
                                            <div class="row">
                                                
                                            </div>
                                        </div>--%>
                                    </asp:Panel>
                                </div>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <%--  <asp:AsyncPostBackTrigger ControlID="bttnDownload" />--%>
                            <asp:AsyncPostBackTrigger ControlID="bttnUpload" />
                            <%--  <asp:AsyncPostBackTrigger ControlID="Button1" />--%>
                        </Triggers>
                    </asp:UpdatePanel>

                </div>

                <div class="frame" id="_page_1">
                    <legend>Variable Addition Assign</legend>
                    <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
                    <div class="grid">

                        <div class="row">
                            <div class="span2">
                                <label>Employee<sup class="fg-red">*</sup></label>
                                <label>Salary Session<sup class="fg-red">*</sup></label>
                                <label>Addition Name<sup class="fg-red">*</sup></label>
                                <label>Amount<sup class="fg-red">*</sup></label>
                            </div>
                            <div class="span4">
                                <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="drpSession" runat="server" Width="200"></asp:DropDownList><br />
                                <asp:Label ID="lblSession" runat="server" Text="" Font-Bold="true" Width="200"></asp:Label>
                                <asp:DropDownList ID="drpAddition" runat="server" Width="200"></asp:DropDownList>
                                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
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
                            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                        </div>
                        <div class="row">
                            Name &nbsp; : &nbsp;
                            <asp:TextBox ID="txtEmpSearch" runat="server"></asp:TextBox>
                            &nbsp;&nbsp; Allowance &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpAdditionsSearch" runat="server" Width="200"></asp:DropDownList>
                            &nbsp;&nbsp; Session &nbsp; : &nbsp;
                            <asp:DropDownList ID="drpSessionSearch" runat="server" Width="200"></asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;<asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large" OnClick="bttnSearch_click" Style="margin:5px"/>
                            <br />
                            <asp:GridView ID="grdVariableAddition" DataKeyNames="VariableAllowanceAssignID,SessionID,EmployeeID,AllowanceID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdVariableAddition_RowCommand" OnRowDeleting="grdAdition_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="VariableAllowanceAssignID" HeaderText="VariableAllowanceAssignID" Visible="False" />
                                    <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                    <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                    <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                    <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                    <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="False" />
                                    <asp:BoundField DataField="AllowanceName" HeaderText="Allowance Name" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
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

                </div>
            </div>
        </div>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
