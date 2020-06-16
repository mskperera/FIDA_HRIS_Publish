<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="UnAnalyzedAttendanceData.aspx.cs" Inherits="Smarter_HRIS.UnAnalyzedAttendanceData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <legend>UnAnalyzed Attendance Data</legend>
                <asp:HiddenField ID="lblUserID" runat="server" />

                <div class="grid">
                    <div class="row">

                        <div class="grid">
                            <div class="row">
                                       <asp:Label ID="Label6" runat="server" Text="Select Employee :"></asp:Label>
                                    <input type="text" id="txtSearch" runat="server" name="txtSearch" />
                            </div>
                            <div class="row">
                                <div class="span6">
                                    <asp:Label ID="Label2" runat="server" Text="Date Range :"></asp:Label>
                                </div>
                                <div class="span6">
                                    <asp:Label ID="Label4" runat="server" Text="Time Range :"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="span2">
                                    <asp:Label ID="Label3" runat="server" Text="From Date"></asp:Label><br />
                                    <asp:Label ID="Label" runat="server" Text="To Date "></asp:Label>
                                </div>

                                <div class="span4">
                                    <input type="date" id="txtFromDate" runat="server" name="FromDate" /><br />
                                    <input type="date" id="txtToDate" runat="server" name="ToDate" />
                                </div>

                                <div class="span2">
                                    <asp:Label ID="Label1" runat="server" Text="From Time"></asp:Label><br />
                                    <asp:Label ID="Label5" runat="server" Text="To Time "></asp:Label>
                                </div>
                                <div class="span4">
                                    <input type="time" id="txtFromTime" runat="server" name="FromTime" /><br />
                                    <input type="time" id="txtToTime" runat="server" name="ToTime" />
                                </div>


                            </div>

                            <div class="row">
                                <div class="span2">
                                    <asp:Button ID="Button1" runat="server" Text="search" CssClass="warning" OnClick="bttnSearch_click" />
                                </div>
                                
                            </div>
                            <div class="row">
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                            </div>

                            <div class="row">
                                <%--<asp:GridView ID="grdAbnormalLeaves" runat="server" DataKeyNames="EmployeeID" Width="100%" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" OnRowCommand="grdLeaveBalance_RowCommand">
                                        <AlternatingRowStyle BackColor="White" />--%>

                                <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                    <%--<asp:GridView ID="grdAbnormalLeaves" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="Vertical">--%>
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="USERID" HeaderText="EmployeeID" Visible="False" />
                                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                        <asp:BoundField DataField="CHECKTIME" HeaderText="CHECK TIME" DataFormatString="{0:yyyy-MM-dd hh:mm tt}" />
                                        <asp:BoundField DataField="CHECKTYPE" HeaderText="CHECK TYPE" Visible="false" />
                                        <asp:BoundField DataField="VERIFYCODE" HeaderText="VERIFY CODE" Visible="false" />
                                        <asp:BoundField DataField="SENSORID" HeaderText="SENSOR ID" Visible="false" />
                                        <asp:BoundField DataField="Location" HeaderText="Location" />
                                        <asp:BoundField DataField="sn" HeaderText="sn" Visible="false" />
                                        <asp:BoundField DataField="UserExtFmt" HeaderText="UserExtFmt" Visible="false" />
                                        <asp:BoundField DataField="isUpload" HeaderText="Is Uploaded" />
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
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
