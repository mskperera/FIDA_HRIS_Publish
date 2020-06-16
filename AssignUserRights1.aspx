<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignUserRights1.aspx.cs" Inherits="Smarter_HRIS.AssignUserRights1" %>

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

            <%-- <div class="tab-control" data-role="tab-control" data-effect="fade">--%>

            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Assign User Rights</a></li>
                <li><a href="#_page_2">Custom User Rights Master</a></li>
                <li><a href="#_page_3">Custom User Rights Assign To User</a></li>
                <li><a href="#_page_4">Create New Custom Type</a></li>
                <%-- <li><a href="#_page_5">Process Allowances</a></li>--%>
            </ul>
            <%-- Apply Leaves Tab --%>
            <div class="frames">
                <div class="frame" id="_page_1">
                    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <legend>Assign User Rights</legend>

                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <asp:RadioButton ID="radioBySection" Text="Sections" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_CheckedChanged" />
                                    </div>
                                    <div class="span3">
                                        <asp:RadioButton ID="radioByForm" Text="Forms" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton2_CheckedChanged" />
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="span2">
                                        <div class="span2" id="divSec1" runat="server">
                                            <label>Section</label>
                                        </div>
                                        <label>Company</label>
                                        <label>User Name</label>
                                        <asp:Button ID="bttnFilter" runat="server" Text="Filter" CssClass="info" OnClick="bttnFilter_SelectedIndexChanged" />
                                    </div>
                                    <div class="span6" id="divSec2" runat="server">
                                        <asp:DropDownList ID="drpSection" runat="server" Width="200px" DataTextField="SectionName" DataValueField="SectionID" AutoPostBack="true" OnSelectedIndexChanged="drpSection_SelectedIndexChanged"></asp:DropDownList>
                                    </div>

                                    <div class="span6">
                                        <asp:DropDownList ID="ddlCompany" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true"></asp:DropDownList><br />
                                        <%--  <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true"></asp:DropDownList>--%>
                                        <asp:DropDownList ID="ddlUser" runat="server" Width="200px" DataTextField="UserName" DataValueField="Id"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                        <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                                            <i class="icon-floppy"></i>
                                            Save
                                        </button>

                                    </div>
                                </div>
                                <br />
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                                <div class="row">
                                    <div class="span6">
                                        <label><b>Select Forms/Sections for assign to the user</b></label>
                                        <asp:Button ID="bttnSelectAll" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll_Click" />&nbsp;
                                        <asp:Button ID="bttnDeselectAll" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll_Click" />
                                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                        <asp:Button ID="bttnSAdd" runat="server" Text="+" CssClass="info" /><br />
                                        <asp:Label ID="lblCount" runat="server" Text="" Font-Size="Smaller"></asp:Label>
                                        <asp:CheckBoxList CssClass="pCheck" ID="chkBoxBeforeSelect" runat="server" AutoPostBack="True">
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
                                        <label><b>Selected assigned Forms/Sections</b></label>
                                        <asp:Button ID="bttnSelectAll1" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll1_Click" />&nbsp;
                        <asp:Button ID="bttnDeselectAll1" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll1_Click" />
                                        <asp:CheckBoxList CssClass="pCheck" ID="chkBoxAfterSelect" runat="server">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="frame" id="_page_2">
                    <legend>Custom User Rights Master</legend>
                    <asp:UpdatePanel ID="update2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <asp:RadioButton ID="rdSectoions" Text="Sections" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_UserType_CheckedChanged" />
                                    </div>
                                    <div class="span3">
                                        <asp:RadioButton ID="rdForms" Text="Forms" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton2_UserType_CheckedChanged" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="span2">
                                        <div class="span2" id="divSec3" runat="server">
                                            <label>Section</label>
                                        </div>
                                        <label>User Type</label>
                                        <label>Company</label>
                                         <asp:Button ID="bttnFilterUsrType" runat="server" Text="Filter" CssClass="info" OnClick="bttnFilterNew_SelectedIndexChanged" />
                                    </div>
                                    <div class="span6" id="divSec4" runat="server">
                                        <asp:DropDownList ID="drpSection2" runat="server" Width="200px" DataTextField="SectionName" DataValueField="SectionID" AutoPostBack="true" OnSelectedIndexChanged="drpSectionNew_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                    <div class="span6">
                                        <asp:DropDownList ID="drpUserType" runat="server" AutoPostBack="True" Width="200"></asp:DropDownList></br>
                                        <asp:DropDownList ID="drpCompany" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut warning" runat="server" id="bttnNew_UserRight" onserverclick="bttnNew_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                        <button class="shortcut success" runat="server" id="bttnAssign1_UserRight" onserverclick="bttnAssign_UserRight_click">
                                            <i class="icon-floppy"></i>
                                            Save
                                        </button>
                                    </div>
                                </div>
                                <br />
                                <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                                <div class="row">
                                    <div class="span6">
                                        <label><b>Select Forms/Sections for assign to the user type</b></label>
                                        <asp:Button ID="bttnSelectAll_UserType" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll_UserType_Click" />&nbsp;
                                        <asp:Button ID="bttnDeselect_UserType" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll_UserType_Click" />
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button5" runat="server" Text="+" CssClass="info" /><br />
                                        <asp:Label ID="lblCount_UserType" runat="server" Text="" Font-Size="Smaller"></asp:Label>
                                        <asp:CheckBoxList CssClass="pCheck" ID="chkBoxBeforeSelect_UserType" runat="server" AutoPostBack="True">
                                        </asp:CheckBoxList>
                                    </div>
                                    <div class="span2">
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Button ID="Button6" runat="server" Text=">" CssClass="success" OnClick="bttnAdd_UserType_Click" /><br />
                                        <asp:Button ID="Button7" runat="server" Text="<" CssClass="warning" OnClick="bttnRemove_UserType_Click" /><br />
                                    </div>
                                    <div class="span5">
                                        <label><b>Selected assigned Forms/Sections</b></label>
                                        <asp:Button ID="bttnSelectAll1_UserType" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll1_UserType_Click" />&nbsp;
                        <asp:Button ID="Button9" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll1_UserType_Click" />
                                        <asp:CheckBoxList CssClass="pCheck" ID="chkBoxAfterSelect_UerType" runat="server">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="frame" id="_page_3">
                    <legend>Custom User Rights Assign To User</legend>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <asp:RadioButton ID="rdSect" Text="Sections" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_RegUserType_CheckedChanged"/>
                                    </div>
                                    <div class="span3">
                                        <asp:RadioButton ID="rdFrm" Text="Forms" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton2_RegUserType_CheckedChanged"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="span2">
                                        <label>User Type</label>
                                        
                                        <label>User Name</label>
                                        <label>Company</label>
                                    </div>
                                    <div class="span6">
                                        <asp:DropDownList ID="drpUsrType" runat="server" Width="200px" DataTextField="CustomUserName" DataValueField="CustomUserID" AutoPostBack="true" OnSelectedIndexChanged="drpFilterUsr_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:Button ID="bttnFltr" runat="server" Text="Filter" CssClass="info" OnClick="bttnFilterUsr_SelectedIndexChanged" /><br />
                                        <asp:DropDownList ID="drpUsName" runat="server" Width="200px" DataTextField="UserName" DataValueField="Id" AutoPostBack="true"></asp:DropDownList><br />
                                        <asp:DropDownList ID="drpCmpny" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut warning" runat="server" id="Button12" onserverclick="bttnNew_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                        <button class="shortcut success" runat="server" id="Button13" onserverclick="bttnAssignCustomUser_click">
                                            <i class="icon-floppy"></i>
                                            Save
                                        </button>
                                    </div>
                                </div>
                                <br />
                                <asp:Panel ID="pnlMessages5" runat="server"></asp:Panel>
                                <div class="row">
                                    <div class="span6">
                                        <label><b>Select Forms/Sections for assign to the user</b></label>
                                        <asp:CheckBoxList CssClass="pCheck" ID="CheckBoxList_UserType" runat="server" AutoPostBack="True">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="frame" id="_page_4">
                    <legend>Create New Custom Type</legend>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <asp:RadioButton ID="drNwSection" Text="Sections" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_NewUserType_CheckedChanged" />
                                    </div>
                                    <div class="span3">
                                        <asp:RadioButton ID="drNwForm" Text="Forms" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton2_NewUserType_CheckedChanged" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="span2">
                                        <label>Custom User Type</label>
                                    </div>
                                    <div class="span6">
                                        <asp:TextBox ID="txtCustUser" runat="server"></asp:TextBox><br />
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut warning" runat="server" id="bttnNew_NewUserRight" onserverclick="bttnNew_click">
                                            <i class="icon-new"></i>
                                            New</button>
                                        <button class="shortcut success" runat="server" id="bttnAssign1_NewUserRight" onserverclick="bttnAssign_NewUserRight_click">
                                            <i class="icon-floppy"></i>
                                            Save
                                        </button>
                                    </div>
                                </div>
                                <br />
                                <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
