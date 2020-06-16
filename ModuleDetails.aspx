<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ModuleDetails.aspx.cs" Inherits="Smarter_HRIS.ModuleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>
    <style>
        .pCheck1 label {
            display: inline-block;
            margin-left: 5px;
            color: white;
        }
    </style>

    <script>
        $('.lblCount_UserType :checkbox').eq(0).click(function () {
            var toggle = this.checked;
            $('.lblCount_UserType :checkbox').attr("checked", toggle);
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <legend>Module Details</legend>
                <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                <div class="grid">
                  <%--  <div class="row">
                        <div class="span2">
                            <asp:RadioButton ID="rdEmp" runat="server" Text="Lisoned Modules" GroupName="a1" OnCheckedChanged="rdLisoned_CheckedChanged" AutoPostBack="True" />
                        </div>
                        <div class="span2">
                            <asp:RadioButton ID="rdGroup" runat="server" Text="Unlisoned Modules" GroupName="a1" OnCheckedChanged="rdUnLisoned_CheckedChanged" AutoPostBack="True" />
                        </div>
                    </div>--%>
                    <div class="row">
                        <br />
                        <div class="span5">
                            <asp:Label ID="lblAllDetails" runat="server" Text="" Font-Size="X-Large" Font-Underline="true"></asp:Label>
                            <asp:CheckBoxList CssClass="pCheck" ID="lblAllModules" runat="server" AutoPostBack="True" Width="500" Font-Size="Larger" Checked="true" Enabled="false"></asp:CheckBoxList>
                        </div>
                         <div class="span4">
                            <asp:Label ID="lblLisonedDetails" runat="server" Text="" Font-Size="X-Large" Font-Underline="true"></asp:Label>
                            <asp:CheckBoxList CssClass="pCheck" ID="lblLisonedModules" runat="server" AutoPostBack="True" Width="500" Font-Size="Larger" Checked="true" Enabled="false"></asp:CheckBoxList>
                        </div>
                        <div class="span4">
                            <asp:Label ID="lblUnLisonedDetails" runat="server" Text="" Font-Size="X-Large" Font-Underline="true"></asp:Label>
                            <asp:CheckBoxList CssClass="pCheck" ID="lblUnLisonedModules" runat="server" AutoPostBack="True" Width="500" Font-Size="Larger" Checked="true" Enabled="false"></asp:CheckBoxList>
                        </div>
                       
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
