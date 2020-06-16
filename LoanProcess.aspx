<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LoanProcess.aspx.cs" Inherits="Smarter_HRIS.LoanProcess" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Loan Process</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="grid">

            <div class="row">
                <div class="span2">
                    <label>Company Name<sup class="fg-red">*</sup></label>
                    <label>Salary Session<sup class="fg-red">*</sup></label>
                </div>
                <div class="span4">
                    <asp:DropDownList ID="drpCompany" runat="server" Width="198"></asp:DropDownList>
                    <asp:DropDownList ID="drpSession" runat="server" Width="198"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <button class="shortcut primary" runat="server" id="bttnSave" onserverclick="loanAssignment_click">
                    <i class="icon-floppy"></i>
                    Loan Assignment</button>
                <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="loanBalanceUpdate_click">
                    <i class=" icon-database"></i>
                    Balance Update</button>
                <button class="shortcut success" runat="server" id="Button1" onserverclick="bttnNew_click">
                    <i class="icon-new"></i>
                    New</button>
            </div>
            <div class="row">
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            </div>
        </div>

    </div>

    <asp:HiddenField ID="IsEdit" runat="server" />
    <asp:HiddenField ID="TableID" runat="server" />
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
