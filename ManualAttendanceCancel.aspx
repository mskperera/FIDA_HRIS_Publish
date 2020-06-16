<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ManualAttendanceCancel.aspx.cs" Inherits="Smarter_HRIS.ManualAttendanceCancel" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <legend>Manual Attendance Cancel</legend>
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
                <th>Attendance ID</th>
                <th>Employee No</th>
                <th>Type</th>
                <th>Date</th>
                <%--<th>Time</th>--%>
                <th>Status</th>
                <th>Remarks</th>
                <th>Apply Date</th>
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