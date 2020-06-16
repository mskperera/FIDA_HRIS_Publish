<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ViewLog.aspx.cs" Inherits="Smarter_HRIS.ViewLog" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Audit Details Log</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="grid">
            <div class="row">
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
                                <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                            </td>
                            <td>
                                <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                            </td>
                        </tr>
                    </table>

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
                                <input type="time" id="txtFromTime" runat="server" name="txtFromDate" />
                            </td>
                            <td>
                                <input type="time" id="txtToTime" runat="server" name="txtToDate" />
                            </td>
                        </tr>
                    </table>

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
                <th>AuditLogID</th>
                <th>UserID</th>
                <th>UserLogID</th>
                <th style="width: 100px;">SessionID</th>
                <th>TableName</th>
                <th>FormName</th>
                <th>Action</th>
                <th>InsertedValue</th>
                <th>DeletedValue</th>
                <th>CreatedDate</th>
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
