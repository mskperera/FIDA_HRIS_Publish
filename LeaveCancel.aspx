<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="LeaveCancel.aspx.cs" Inherits="Smarter_HRIS.LeaveCancel" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <legend>Leave Cancel</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <%--<div class="grid">
                <div class="row">
                    <div class="span4">
                        <label>Employee Name</label>
                        <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                    </div>
                    <div class="span6">
                        <table>
                            <tr>
                                <td>
                                    <label>From:</label>
                                </td>
                                <td>
                                    <label>To:</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="date" id="txtFromDate" runat="server" name="txtFromDate"/>
                                </td>
                                <td>
                                    <input type="date" id="txtToDate" runat="server" name="txtToDate"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <button class="shortcut warning" id="bttnSearch" runat="server" onserverclick="bttnSearch_click">
                <i class="icon-search"></i>
                Search</button>

            <br />--%>
        <br />
        <table class='table striped bordered hovered'>
            <thead class="bg-green fg-white">
                <th>Leave Type</th>
                <th>Leave Category</th>
                <th>From Date</th>
                <th>To Date</th>
                <th>Applied Date</th>
                <th>Reason</th>
                <th>Approved</th>
                <th>Status</th>
                <th></th>
            </thead>
            <tbody>
                <asp:Panel ID="pnlLeaves" runat="server"></asp:Panel>
            </tbody>
        </table>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
