<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AssingnEmployeeToSupervisor.aspx.cs" Inherits="Smarter_HRIS.AssingnEmployeeToSupervisor" %>

<%--<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />


    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .modal {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 0;
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
            -moz-opacity: 0.8;
        }

        .center {
            z-index: 1000;
            margin: 300px auto;
            padding: 10px;
            width: 130px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }

            .center img {
                height: 115px;
                width: 115px;
            }
    </style>

    <link href="Styles/dcalendar.picker.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 150px;
        }

        .auto-style3 {
            width: 150px;
        }

        .auto-style4 {
            width: 22px;
        }

        .auto-style5 {
            width: 211px;
            height: 31px;
        }

        .auto-style6 {
            width: 30px;
            height: 31px;
        }

        .auto-style7 {
            width: 271px;
            height: 31px;
        }

        .auto-style8 {
            height: 31px;
        }

        .auto-style9 {
            width: 223px;
        }

        .auto-style10 {
            height: 31px;
            width: 223px;
        }
    </style>
    <script>
        $(function () {
            $("#datepicker1").datepicker();
        });
    </script>

    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames1",
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
    <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            <div class="span4">
                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                    <ProgressTemplate>
                        <div class="modal">
                            <div class="center">
                                <img alt="" src="images/loader6.gif" />
                            </div>
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </div>
            <div class="container">
                <br />
                <asp:HiddenField ID="lblUserID" runat="server" />
                <div class="tab-control" data-role="tab-control" data-effect="fade">
                    <ul class="tabs">
                        <li class="active"><a href="#_page_1">Assign Employee</a></li>
                        <%--  <li><a href="#_page_2" hidden="">Employee Work varification</a></li>--%>
                        <li><a href="#_page_2">Assign Employee Manually</a></li>
                        <li><a href="#_page_3">search</a></li>
                        <li><a href="#_page_4">Missing Employee Summery</a></li>
                    </ul>
                    <div class="frames">
                        <%-- Assign Employees --%>
                        <div class="frame" id="_page_1">
                            <asp:UpdatePanel ID="UpdatePanel5" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <legend>Assign Employees</legend>
                                    <div class="grid">
                                        <div class="row">
                                            <div class="row">
                                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                                            </div>
                                            <table class="auto-style1">
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label2" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSupervisorName" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label1" class="" Style="" runat="server" Text="Section"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSection" class="" runat="server"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label3" class="" runat="server" Text="Date"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                                                            <%-- <asp:Label ID="lblAppDate" runat="server" Text=""></asp:Label>--%>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label9" class="" runat="server" Text="Select Device"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:DropDownList ID="drpSection" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Button ID="Button2" class="small info" runat="server" Text="Refresh" Width="70px" />
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>

                                                <tr>
                                                    <td style="width: 160px;">
                                                        <label>
                                                            <asp:Button ID="Button3" class="small info" runat="server" Text="Apply" Width="60px" OnClick="bttnApply_click" />

                                                        </label>

                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;"></td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Button ID="Button8" class="small info" runat="server" Text="Download" Width="90px" OnClick="bttnDownload_click" />
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr hidden>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label4" class="" runat="server" Text="Select Employees"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:TextBox ID="txtSearch1" runat="server"></asp:TextBox>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Button ID="Button1" class="small info" runat="server" Text="ADD" Width="60px" />
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                            <div class="content">
                                                <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="USERID" HeaderText="EmployeeID" Visible="False" />
                                                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                                        <asp:BoundField DataField="CHECKTIME" HeaderText="CHECK TIME" DataFormatString="{0:yyyy-MM-dd hh:mm tt}" />
                                                        <asp:BoundField DataField="CHECKTYPE" HeaderText="CHECK TYPE" Visible="" />
                                                        <asp:BoundField DataField="CHECKTYPE1" HeaderText="Break TYPE" Visible="" />
                                                        <asp:BoundField DataField="VERIFYCODE" HeaderText="VERIFY CODE" Visible="false" />
                                                        <asp:BoundField DataField="SENSORID" HeaderText="SENSOR ID" Visible="false" />
                                                        <asp:BoundField DataField="Location" HeaderText="Location" />
                                                        <asp:BoundField DataField="sn" HeaderText="sn" Visible="false" />
                                                        <asp:BoundField DataField="UserExtFmt" HeaderText="UserExtFmt" Visible="false" />
                                                        <asp:BoundField DataField="isUpload" HeaderText="Is Uploaded" Visible="false" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                                <%-- <asp:GridView ID="grdworkcovering" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="7" AutoGenerateColumns="False" CellSpacing="1">
                                            <Columns>
                                                <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                                <asp:BoundField DataField="CheckIn" HeaderText="Check In Time" />
                                                <asp:BoundField DataField="CheckIn" HeaderText="Check In Time" />

                                            </Columns>
                                            <FooterStyle BackColor="White" ForeColor="#000066" />
                                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                            <RowStyle ForeColor="#000066" />
                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                                        </asp:GridView>--%>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                               <triggers>
    <asp:postbacktrigger controlid="Button8" />
  </triggers>
                                    <%--<asp:AsyncPostBackTrigger ControlID="Button8" EventName="bttnDownload_click"></asp:AsyncPostBackTrigger>--%>
                                
                            </asp:UpdatePanel>
                           
                        </div>



                        <div class="frame" id="_page_2">
                            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <legend>Assign Employee Manually</legend>
                                    <div class="grid">
                                        <div class="row">
                                            <div class="row">
                                                <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                                            </div>
                                            <table class="auto-style1">
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label10" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSupervisorName1" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td style="width: 150px;">
                                                        <asp:Label ID="Label12" class="" Style="" runat="server" Text="CheckIn"></asp:Label>
                                                        <div class="input-control switch">
                                                            <label>
                                                                <input id="chkIn" runat="server" type="checkbox" />
                                                                <span class="check"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label13" class="" Style="" runat="server" Text="CheckOut"></asp:Label>
                                                        <div class="input-control switch">
                                                            <label>
                                                                <input id="chkOut" runat="server" type="checkbox" />
                                                                <span class="check"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label14" class="" Style="" runat="server" Text="Section"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSection1" class="" runat="server"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td style="width: 150px;">
                                                        <asp:Label ID="Label16" class="" Style="" runat="server" Text="BreakIn"></asp:Label>
                                                        <div class="input-control switch">
                                                            <label>
                                                                <input id="brkIn" runat="server" type="checkbox" />
                                                                <span class="check"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label17" class="" Style="" runat="server" Text="BreakOut"></asp:Label>
                                                        <div class="input-control switch">
                                                            <label>
                                                                <input id="brkOut" runat="server" type="checkbox" />
                                                                <span class="check"></span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label21" class="" runat="server" Text="Select Employee"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label20" class="" runat="server" Text="Select Device"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:DropDownList ID="drpSection1" runat="server" Width="200" AutoPostBack="True"></asp:DropDownList>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Button ID="Button4" class="small info" runat="server" Text="Refresh" Width="70px" />
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label18" class="" runat="server" Text="Date & Time"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="">
                                                        <label>
                                                            <input type="date" id="Date1" runat="server" name="txtFromDate" />
                                                        </label>
                                                    </td>
                                                    <td class="">
                                                        <input type="time" id="txtToTime" runat="server" name="usr_time" /></td>
                                                    <td>
                                                        <label></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Button ID="Button6" class="small info" runat="server" Text="Submit" Width="60px" OnClick="bttnSubmit_click" />
                                                        </label>
                                                    </td>
                                                    <td class="">
                                                        <label></label>
                                                    </td>
                                                    <td class="">
                                                        <td>
                                                            <label></label>
                                                        </td>
                                                </tr>
                                            </table>
                                            <div class="content">
                                                <asp:GridView ID="grdAttendance1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="USERID" HeaderText="EmployeeID" Visible="False" />
                                                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                                        <asp:BoundField DataField="CHECKTIME" HeaderText="CHECK TIME" DataFormatString="{0:yyyy-MM-dd hh:mm tt}" />

                                                        <asp:BoundField DataField="CHECKTYPE" HeaderText="CHECK TYPE" Visible="" />
                                                        <asp:BoundField DataField="CHECKTYPE1" HeaderText="Break TYPE" Visible="" />

                                                        <asp:BoundField DataField="VERIFYCODE" HeaderText="VERIFY CODE" Visible="false" />
                                                        <asp:BoundField DataField="SENSORID" HeaderText="SENSOR ID" Visible="false" />
                                                        <asp:BoundField DataField="Location" HeaderText="Location" />
                                                        <asp:BoundField DataField="sn" HeaderText="sn" Visible="false" />
                                                        <asp:BoundField DataField="UserExtFmt" HeaderText="UserExtFmt" Visible="false" />
                                                        <asp:BoundField DataField="isUpload" HeaderText="Is Uploaded" Visible="false" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>

                        <div class="frame" id="_page_3">
                            <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <legend>search</legend>
                                    <div class="grid">
                                        <div class="row">
                                            <div class="row">
                                                <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
                                            </div>
                                            <table class="auto-style1">
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label5" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSupervisorName2" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label7" class="" Style="" runat="server" Text="Section"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSection2" class="" runat="server"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label11" class="" runat="server" Text="Date"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <input type="date" id="Date2" runat="server" name="txtFromDate" />

                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Button ID="Button7" class="small info" runat="server" Text="Search" Width="60px" OnClick="bttnSearch_click" />

                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;"></td>
                                                    <td class="auto-style3">
                                                        <label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                            <div class="content">
                                                <asp:GridView ID="grdAttendance_Sum" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="AttendanceID" HeaderText="AttendanceID" Visible="False" />
                                                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                                                        <asp:BoundField DataField="CheckInTime" HeaderText="CheckInTime" />
                                                        <asp:BoundField DataField="CheckOutTime" HeaderText="CheckOutTime" />
                                                        <asp:BoundField DataField="BreakIn" HeaderText="BreakIn" />
                                                        <asp:BoundField DataField="BreakOut" HeaderText="BreakOut" />
                                                        <asp:BoundField DataField="WorkCount" HeaderText="WorkCount" />
                                                        <asp:BoundField DataField="TotalBreak" HeaderText="TotalBreak" />
                                                        <asp:BoundField DataField="EarlyOT" HeaderText="EarlyOT" />
                                                        <asp:BoundField DataField="LateOT" HeaderText="LateOT" />
                                                        <asp:BoundField DataField="DayOT" HeaderText="DayOT" />
                                                        <asp:BoundField DataField="IsPresent" HeaderText="IsPresent" Visible="false" />
                                                        <asp:BoundField DataField="BreakLate" HeaderText="BreakLate" />
                                                        <asp:BoundField DataField="DayOT" HeaderText="DayOT" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>

                        <div class="frame" id="_page_4">
                            <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <legend>Missing Employee Summery</legend>
                                    <div class="grid">
                                        <div class="row">
                                            <div class="row">
                                                <asp:Panel ID="pnlMessages3" runat="server"></asp:Panel>
                                            </div>

                                            <table class="auto-style1">
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label6" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSupervisorName3" class="" runat="server" Text="Supervisor Name"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label15" class="" Style="" runat="server" Text="Section"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <asp:Label ID="lblSection3" class="" runat="server"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Label ID="Label22" class="" runat="server" Text="Date"></asp:Label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                                                    <td class="auto-style3">
                                                        <label>
                                                            <input type="date" id="Date3" runat="server" name="txtFromDate" />

                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <label>
                                                            <asp:Button ID="Button5" class="small info" runat="server" Text="Search" Width="60px" OnClick="bttnSearchMissing_click" />
                                                            <%-- OnClick="bttnSearch_click" --%>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style4-fg-cyan" style="width: 22px;"></td>
                                                    <td class="auto-style3">
                                                        <label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        <label>
                                                        </label>
                                                    </td>
                                                    <td class="auto-style3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>

                                            <div class="content">
                                                <asp:GridView ID="grdAttendance_Missing" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="EmpMissingID" HeaderText="EmpMissingID" Visible="False" />
                                                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="false" />
                                                        <asp:BoundField DataField="OfficeNICNO" HeaderText="Employee No" />
                                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                                                        <asp:BoundField DataField="SensorID" HeaderText="SensorID" />
                                                        <asp:BoundField DataField="LastReportTime" HeaderText="LastReportTime" />
                                                        <asp:BoundField DataField="Remark" HeaderText="Remark" />
                                                        <asp:BoundField DataField="MissingType" HeaderText="MissingType" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
