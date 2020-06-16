<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ViewUserPriviladges.aspx.cs" Inherits="Smarter_HRIS.ViewUserPriviladges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>User Priviladges</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:HiddenField ID="rdID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
                <div class="row">
                    <div class="span2">
                        <asp:RadioButton ID="rdSections" runat="server" Text="Sections" GroupName="a1" AutoPostBack="True" OnCheckedChanged="bttnSelectSection_click"/>
                    </div>
                    <div class="span2">
                        <asp:RadioButton ID="rdForms" runat="server" Text="Forms" GroupName="a1" AutoPostBack="True" OnCheckedChanged="bttnSelectForm_click"/>
                    </div>
                </div>
                <div class="row">
                    <div class="span2">
                        <label>Company</label>
                        <label>User</label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="drpCompany" runat="server" Width="200"></asp:DropDownList>
                        <asp:DropDownList ID="drpUser" runat="server" Width="200"></asp:DropDownList>
                    </div>
                </div>

            </div>
        </div>
        <div class="span4">
            <button class="shortcut warning" id="bttnSearch" runat="server" onserverclick="bttnSearch_click">
                <i class="icon-search"></i>
                Search</button>
            <button class="shortcut info" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                <i class="icon-download"></i>
                Download Excel</button>
        </div>
        <br />
        <br />
        <table class='table striped bordered hovered'>
            <thead class="bg-green fg-white">
                <asp:Panel ID="pnlheader2" runat="server">
                    <th>User Name</th>
                    <th>Section</th>
                    <th>Company</th>
                    <th>Assigned Date</th>
                </asp:Panel>

                <asp:Panel ID="pnlheader1" runat="server">
                    <th>User Name</th>
                    <th>Section</th>
                    <th>Form</th>
                    <th>Company</th>
                    <th>Assigned Date</th>
                </asp:Panel>
            </thead>
            <tbody>
                <asp:Panel ID="pnlViewLog" runat="server"></asp:Panel>
            </tbody>
        </table>
    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
