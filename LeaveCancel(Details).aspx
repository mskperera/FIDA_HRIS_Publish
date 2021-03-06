﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/HRMaster.Master" CodeBehind="LeaveCancel(Details).aspx.cs" Inherits="Smarter_HRIS.LeaveCancel_Details_" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <legend>Leave Cancel (Details)
        </legend>
            <div class="grid">
                <div class="row">
                    <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>
                </div>
                <asp:HiddenField ID="hiddenLeaveID" runat="server" />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label11" class="fg-cyan" runat="server" Text="Applied Person "></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4-fg-cyan">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="lblEmployee" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label2" class="fg-cyan" runat="server" Text="Reason For Leave "></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4-fg-cyan">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="lblReason" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label1" class="fg-cyan" runat="server" Text="Leave Type         " ViewStateMode="Disabled"></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="lblLeaveType" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label7" class="fg-cyan" runat="server" Text="Leave Category         " ViewStateMode="Disabled"></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="lblLeaveCategory" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <label>
                                <asp:Label ID="Label3" class="fg-cyan" runat="server" Text="Leave application date "></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style6">:</td>
                        <td class="auto-style7">
                            <asp:Label ID="lblAppDate" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style10"></td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label4" class="fg-cyan" runat="server" Text="From Date &amp; Time  :"></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="lblFromDate" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">
                            <label>
                                <asp:Label ID="lblFromTime" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label5" class="fg-cyan" runat="server" Text="ToDate &amp; Time "></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="lblToDate" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">
                            <label>
                                <asp:Label ID="lblToTime" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label6" class="fg-cyan" runat="server" Text="Days  "></asp:Label>
                                <asp:Label ID="lblDays" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <label>
                                <asp:Label ID="Label8" class="fg-cyan" runat="server" Text=" Hours  "></asp:Label>
                                <asp:Label ID="lblHours" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style9">
                            <label>
                                <asp:Label ID="Label9" class="fg-cyan" runat="server" Text="Minutes  "></asp:Label>
                                <asp:Label ID="lblMins" runat="server" Text=""></asp:Label>
                            </label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label10" class="fg-cyan" runat="server" Text="Work Covering Person "></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4">:</td>
                    </tr>
                </table>
                <div class="span7">
                    <asp:Panel ID="pnlCoveringPerson" runat="server"></asp:Panel>
                </div>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            </div>

            <br />
            <%--<asp:Button ID="Button1" Class="large info" runat="server" Text="Submit" />--%>
            <%--<asp:Button ID="bttnCancelLeave" runat="server" Text="Cancel Leave" CssClass="success" OnClick="bttnCancelLeave_Click" />--%>
            <button class="shortcut warning" id="bttnCancel" runat="server" onserverclick="bttnCancel_click">
                <i class="icon-cancel"></i>
                Cancel Leave</button>
            <br />
        </div>
</asp:Content>