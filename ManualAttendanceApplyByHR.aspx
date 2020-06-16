<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ManualAttendanceApplyByHR.aspx.cs" Inherits="Smarter_HRIS.ManualAttendanceApplyByHR" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 225px;
        }

        .auto-style3 {
            width: 254px;
        }

        .auto-style4 {
            width: 22px;
        }

        .auto-style5 {
            width: 225px;
            height: 21px;
        }

        .auto-style6 {
            width: 22px;
            height: 21px;
        }

        .auto-style7 {
            width: 254px;
            height: 21px;
        }

        .auto-style8 {
            height: 21px;
        }

        .auto-style9 {
            width: 225px;
            height: 44px;
        }

        .auto-style10 {
            width: 22px;
            height: 44px;
        }

        .auto-style11 {
            width: 254px;
            height: 44px;
        }

        .auto-style12 {
            height: 44px;
        }
    </style>


    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeAllNames",
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div class="container">
        <br />

        <%--<h1 class="fg-cobalt">
                        <a href="#" onclick="history.go(-1);"><i class="icon-arrow-left-3 fg-cobalt smaller"></i></a>
                        Apply Manual Attendance
                    </h1>--%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <legend>Apply Manual Attendance</legend>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <asp:HiddenField ID="lblEmpID" runat="server" />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <label>
                                <asp:Label ID="Label11" runat="server" Text="Employee Name "></asp:Label>
                            </label>
                        </td>
                        <td class="auto-style4-fg-cyan">:</td>
                        <td class="auto-style3">
                            <label>
                                <div class="input-control password warning-state span4">
                                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="bttnSearch" runat="server" CssClass="btn-search" OnClick="bttnSearch_Click"></asp:LinkButton>
                                    <%--OnClick="bttnSearch_Click"--%>
                                    <%--OnClick="bttnSearch_Click"--%>
                                </div>
                            </label>

                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text="Employee"></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text="Remarks"></asp:Label>
                        </td>
                        <td class="auto-style6">:</td>
                        <td class="auto-style7">

                            <asp:TextBox ID="txtRemarks" runat="server" Width="175px"></asp:TextBox>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <h3>Check In/Out</h3>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">

                            <asp:Button ID="btnCheckIn" runat="server" OnClick="Button1_Click" type="button" Text="Check In"/>
                            <%--<input id="bttnCheckIn" type="button" runat="server" onserverclick="bttnCheckIn_click" value="button" />--%>

                        </td>
                        <td class="auto-style10"></td>
                        <td class="auto-style11">

                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" />
                        </td>
                        <td class="auto-style13">

                            <asp:Button ID="btnCheck" runat="server" Text="Both" OnClick="btnCheck_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCheckWithBreak" runat="server" Text="With Break" OnClick="btnCheckWithBreak_Click" />
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Check In Date &amp; Time "></asp:Label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <%--<asp:TextBox ID="txtCheckInDate" runat="server" Width="181px"></asp:TextBox>--%>
                            <input type="date" id="txtCheckInDate" runat="server" name="txtCheckInDate" />
                        </td>
                        <td>
                            <%--<asp:TextBox ID="txtBreakInTime" runat="server" Width="164px"></asp:TextBox>--%>
                            <input type="time" name="checkIN" id="txtCheckInTime" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="Check Out Date &amp; Time"></asp:Label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <%--<asp:TextBox ID="txtCheckOutDate" runat="server" Width="179px"></asp:TextBox>--%>
                            <input type="date" id="txtCheckOutDate" runat="server" name="txtCheckOutDate" />
                        </td>
                        <td>
                            <%--<asp:TextBox ID="txtBreakOutTime" runat="server" Width="163px"></asp:TextBox>--%>
                            <input type="time" name="checkIN" id="txtCheckOutTime" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <h3>Break In/Out</h3>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="btnBreakIn" runat="server" Text="Break In" OnClick="btnBreakIn_Click" />
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="btnBreakOut" runat="server" Text="BreakOut" OnClick="btnBreakOut_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnBreak" runat="server" Text="Both" OnClick="btnBreak_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="Break In Date &amp; Time"></asp:Label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <%--<asp:TextBox ID="txtBreakInDate" runat="server" Width="176px"></asp:TextBox>--%>
                            <input type="date" id="txtBreakInDate" runat="server" name="txtBreakInDate" />
                        </td>
                        <td>
                            <%--<asp:TextBox ID="txtBreakInTime" runat="server" Width="164px"></asp:TextBox>--%>
                            <input type="time" name="checkIN" id="txtBreakInTime" runat="server" />

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" runat="server" Text="Break Out Date &amp; Time"></asp:Label>
                        </td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style3">
                            <%--<asp:TextBox ID="txtBreakOutDate" runat="server" Width="174px"></asp:TextBox>--%>
                            <input type="date" id="txtBreakOutDate" runat="server" name="txtBreakOutDate" />
                        </td>
                        <td>
                            <%--<asp:TextBox ID="txtBreakOutTime" runat="server" Width="163px"></asp:TextBox>--%>
                            <input type="time" name="checkIN" id="txtBreakOutTime" runat="server" />
                        </td>
                    </tr>
                </table>
              <%--  <asp:Button ID="btnSubmit" runat="server" CssClass="info large" OnClick="btnSubmit_Click" Text="Submit" />--%>

                     <div class="row">
                <button class="shortcut success" runat="server" type="button" id="btnSubmit" onserverclick="btnSubmit_Click">
                    <i class="icon-floppy"></i>
                    Save</button>
                <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                    <i class="icon-new"></i>
                    New</button>
            </div>

                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
