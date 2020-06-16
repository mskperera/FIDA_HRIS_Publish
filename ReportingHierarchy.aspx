<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ReportingHierarchy.aspx.cs" Inherits="Smarter_HRIS.ReportingHierarchy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            $('#<%= txtEmployeeForHierarchySearch.ClientID %>').autocomplete({
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
    <link href="css/sComponentStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Work Flow Hierarchy</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress3" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <div class="tab-control" data-effect="fade" data-role="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#___1">Level Registraiton</a></li>
                <li class=""><a href="#___2">Hierarchy Master</a></li>
                <li class=""><a href="#___3">Assign</a></li>
                <li class=""><a href="#___4">Employee Hierarchy</a></li>
            </ul>

            <div class="frames">
                <div class="frame" id="___1">
                    <div class="grid">
                        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                                <div class="row">
                                    <div class="span2">
                                        <label>Level No</label>
                                        <label>Level Name</label>
                                        <label>Company</label>
                                    </div>
                                    <div class="span4">
                                        <asp:DropDownList ID="drpLevelNo" runat="server" Width="300"></asp:DropDownList>
                                        <asp:TextBox ID="txtLevelName" runat="server" Style="width: 300px"></asp:TextBox>
                                        <asp:DropDownList ID="drpCompany" runat="server" Width="300"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut info" runat="server" id="bttnLevelSave" onserverclick="bttnLevelSave_click">
                                            <i class="icon-floppy"></i>
                                            Save</button>
                                        <button class="shortcut success" runat="server" id="bttnNew1" onserverclick="bttnNew1_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                    </div>
                                </div>

                                <asp:Panel ID="pnlNotify" runat="server">
                                    <div class="row text-center">
                                        <div class="window flat shadow">
                                            <label>
                                                <asp:Label ID="Label5" runat="server" Text="" Style="font-weight: bold;"></asp:Label><br />

                                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
                                                <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
                                                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                            </label>
                                            <button class="info" id="bttnYes" runat="server" onserverclick="bttnYes_click">Yes</button>
                                            <button class="danger" id="bttnNo" runat="server" onserverclick="bttnNo_click">No</button>
                                            <%--onserverclick="bttnNo_click"--%>
                                        </div>
                                    </div>
                                </asp:Panel>


                                <div class="row" id="gridView" runat="server">
                                    <asp:GridView ID="grdLevel" runat="server" AutoGenerateColumns="False" DataKeyNames="ReportLevelRegistrationID,LevelNo,CompanyRegistrationID" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdLevel_RowCommand" OnRowDeleting="grdLevel_RowDeleting">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="ReportLevelRegistrationID" HeaderText="ReportLevelRegistrationID" Visible="False" />
                                            <asp:BoundField DataField="Level" HeaderText="Level" />
                                            <asp:BoundField DataField="LevelNo" HeaderText="LevelNo" Visible="False" />
                                            <asp:BoundField DataField="LevelName" HeaderText="Level Name" />
                                            <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                            <asp:BoundField DataField="CompanyRegistrationID" HeaderText="CompanyRegistrationID" Visible="False" />
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
                                <asp:HiddenField ID="IsLevelEdit" runat="server" />
                                <asp:HiddenField ID="SelectedTableID" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="frame" id="___2">
                    <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="pnlHierarchy" runat="server"></asp:Panel>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <label>Hierarchy No</label>
                                        <label>Hierarchy Name</label>
                                        <label>Service Type</label>
                                        <label>Company Name</label>
                                    </div>
                                    <div class="span4">
                                        <asp:TextBox ID="txtHierarchyNo" runat="server" Style="width: 300px"></asp:TextBox><br />
                                        <asp:TextBox ID="txtHierarchyName" runat="server" Style="width: 300px"></asp:TextBox><br />
                                        <asp:DropDownList ID="drpServiceType" runat="server" Width="300"></asp:DropDownList>
                                        <asp:DropDownList ID="drpCompanyH" runat="server" Width="300"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut info" runat="server" id="bttnHierarchySave" onserverclick="bttnHierarchySave_click">
                                            <i class="icon-floppy"></i>
                                            Save</button>
                                        <button class="shortcut success" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                    </div>
                                </div>

                                <asp:Panel ID="pnlNotify1" runat="server">
                                    <div class="row text-center">
                                        <div class="window flat shadow">
                                            <label>
                                                <asp:Label ID="Label8" runat="server" Text="" Style="font-weight: bold;"></asp:Label><br />

                                                <asp:Label ID="Label9" runat="server" Text=""></asp:Label><br />
                                                <asp:Label ID="Label10" runat="server" Text=""></asp:Label><br />
                                                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                                            </label>
                                            <button class="info" id="Button1" runat="server" onserverclick="bttnYes1_click">Yes</button>
                                            <button class="danger" id="Button2" runat="server" onserverclick="bttnNo1_click">No</button><%--onserverclick="bttnNo_click"--%>
                                            <%--onserverclick="bttnNo_click"--%>
                                        </div>
                                    </div>
                                </asp:Panel>

                                <div class="row" id="grdHierarchy1" runat="server">
                                    <asp:GridView ID="grdHierarchy" runat="server" AutoGenerateColumns="False" DataKeyNames="ReportingHierarchyMasterID,CompanyRegistrationID,HierarchyServiceTypeID" Width="100%" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdHierarchyl_RowCommand" OnRowDeleting="grdHierarchy_RowDeleting">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="ReportingHierarchyMasterID" HeaderText="ReportingHierarchyMasterID" Visible="False" />
                                            <asp:BoundField DataField="HierarchyNo" HeaderText="Hierarchy No" />
                                            <asp:BoundField DataField="HierarchyName" HeaderText="Hierarchy Name" />
                                            <asp:BoundField DataField="CompanyRegistrationID" HeaderText="CompanyRegistrationID" Visible="False" />
                                            <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                            <asp:BoundField DataField="HierarchyServiceTypeID" HeaderText="HierarchyServiceTypeID" Visible="False" />
                                            <asp:BoundField DataField="ServiceType" HeaderText="Service Type" />
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
                            <asp:HiddenField ID="IsHierarchyEdit" runat="server" />
                            <asp:HiddenField ID="HSelectedTableID" runat="server" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="frame" id="___3">
                    <div class="grid">
                        <div class="row">
                            <div class="span8">
                                <legend>Supervisor Assign</legend>
                                <asp:Label ID="Label1" runat="server" Text="Select Supervisor"></asp:Label>
                                : 
                            <asp:TextBox ID="txtSupervisor" runat="server"></asp:TextBox><br />
                                <asp:Label ID="Label3" runat="server" Text="Select Level"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                            <asp:DropDownList ID="drpLevels" runat="server" Width="200"></asp:DropDownList><br />

                                <br />
                            </div>
                            <div class="span4">
                                <legend>Employee Assign</legend>
                                <asp:Label ID="Label2" runat="server" Text="Select Employee"></asp:Label>
                                : 
                            <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>

                                <br />
                            </div>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlAssign" runat="server"></asp:Panel>
                                <div class="row">

                                    <div class="span2 offset3">
                                        <label>Hierarchy</label>
                                    </div>
                                    <div class="span4">
                                        <asp:DropDownList ID="drpHierarchy" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpHierarchy_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div style="display: flex">


                                        <div style="width: 50%;">
                                            <asp:Button ID="bttnAddSupervisor" runat="server" CssClass="warning" Text="Add" OnClick="bttnAddSupervisor_click" />

                                            <div style="margin: 5px">
                                                <asp:GridView ID="grdSupervisor" runat="server" DataKeyNames="ReportHierarchyLevelSupervisorID,ReportingHierarchyMasterID,ReportLevelRegistrationID,EmployeeMasterID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowDeleting="grdSupervisor_RowDeleting">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="ReportHierarchyLevelSupervisorID" HeaderText="ReportHierarchyLevelSupervisorID" Visible="False" />
                                                        <asp:BoundField DataField="ReportingHierarchyMasterID" HeaderText="ReportingHierarchyMasterID" Visible="False" />
                                                        <asp:BoundField DataField="LevelNo" HeaderText="LevelNo" />
                                                        <asp:BoundField DataField="HierarchyName" HeaderText="Hierarchy Name" />
                                                        <asp:BoundField DataField="ReportLevelRegistrationID" HeaderText="ReportLevelRegistrationID" Visible="False" />
                                                        <asp:BoundField DataField="LevelName" HeaderText="Level Name" />
                                                        <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeMasterID" Visible="False" />
                                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Supervisor Name" />
                                                        <asp:TemplateField HeaderText="Actions">
                                                            <ItemTemplate>
                                                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                                <%--<asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />--%>
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
                                        <div style="width: 50%;">
                                            <asp:Button ID="bttnAddEmployee" runat="server" CssClass="warning" Text="Add" OnClick="bttnAddEmployee_click" />
                                            <div style="margin: 5px">
                                                <asp:GridView ID="grdEmployee" runat="server" DataKeyNames="AssignEmployeeReportingHierarchyID,EmployeeMasterID,ReportingHierarchyMasterID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowDeleting="grdEmployee_RowDeleting">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="AssignEmployeeReportingHierarchyID" HeaderText="AssignEmployeeReportingHierarchyID" Visible="False" />
                                                        <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeMasterID" Visible="False" />
                                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                                        <asp:BoundField DataField="ReportingHierarchyMasterID" HeaderText="ReportingHierarchyMasterID" Visible="False" />
                                                        <asp:BoundField DataField="HierarchyName" HeaderText="Hierarchy Name" />
                                                        <asp:TemplateField HeaderText="Actions">
                                                            <ItemTemplate>
                                                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                                <%--<asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />--%>
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
                                    </div>
                                </div>
                                <asp:HiddenField ID="IsEditSupervisor" runat="server" />
                                <asp:HiddenField ID="SupervisorTableID" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="frame" id="___4">
                    <div class="grid">
                        <div class="row">



                            <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                  
                                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                      <div>
                                        <div class="row">
                                            <div class="span12">

                                                <div style="width: 90%;">
                                                    <div style="display: flex;">
                                                        <label style="margin-right: 10px">Employee</label>
                                                        <div style="width: 50%;">
                                                            <asp:TextBox ID="txtEmployeeForHierarchySearch" CssClass="full-width" runat="server"></asp:TextBox>
                                                        </div>

                                                        <div style="margin-left: 10px">
                                                            <asp:Button ID="btnSearchHierarchyByEmployee" Height="30" runat="server" CssClass="warning" Text="Search" OnClick="btnSearchHierarchyByEmployee_Click" />
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="span12">

                                                <div runat="server" id="empHierarhyContainer">


                                                    <asp:Panel ID="pnlHieSupervisors" runat="server"></asp:Panel>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <asp:HiddenField ID="HiddenField2" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
