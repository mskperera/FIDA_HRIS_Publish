<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="TRegisterTraining.aspx.cs" Inherits="Smarter_HRIS.TRegisterTraining1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Register Training</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="grid">
            <div class="row">
                <div class="span7">
                    <table>
                        <tr>
                            <td>
                                <label>Training Name</label>
                            </td>
                            <td>&nbsp;:&nbsp<asp:TextBox ID="txtTrainingName" runat="server" Width="350"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Description</label>
                            </td>
                            <td>
                                <div class="input-control textarea info-state">
                                    <textarea id="txtDescription" runat="server"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Trainers</label>
                            </td>
                            <td>
                                <div class="input-control textarea info-state">
                                    <textarea id="txtTrainers" runat="server"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Taget Audience</label>
                            </td>
                            <td>
                                <div class="input-control textarea info-state">
                                    <textarea id="txtAudience" runat="server"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>From Date & Time</label>
                            </td>
                            <td>&nbsp;:&nbsp
                                    <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                                <input type="time" name="txtFromTime" id="txtFromTime" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>To Date & Time</label>
                            </td>
                            <td>&nbsp;:&nbsp
                                    <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                                <input type="time" name="txtToTime" id="txtToTime" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="span7">
                    <table>
                        <tr>
                            <td>
                                <label>Venue</label>
                            </td>
                            <td>&nbsp;:&nbsp<asp:TextBox ID="txtVenue" runat="server" Width="300"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Fee</label>
                            </td>
                            <td>&nbsp;:&nbsp<asp:TextBox ID="txtFee" runat="server" Width="300"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Course Objectives</label>
                            </td>
                            <td>
                                <div class="input-control textarea info-state">
                                    <textarea id="txtObjectives" runat="server"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Desired Outputs</label>
                            </td>
                            <td>
                                <div class="input-control textarea info-state">
                                    <textarea id="txtOutput" runat="server"></textarea>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <br />
        <button class="shortcut success" id="bttnSave" runat="server" onserverclick="bttnSave_click">
            <i class="icon-floppy"></i>
            Save</button>

    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
