<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ManualAttendanceBulkUpload.aspx.cs" Inherits="Smarter_HRIS.ManualAttendanceBulkUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />
    <style>
        .metro .text-center {
            text-align: center;
            height: 150px;
        }
    </style>

    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Manual Attendance Excel Upload</a></li>
                <li><a href="#_page_2">Manual Attendance Delete</a></li>
            </ul>

            <div class="frames">
                <div class="frame" id="_page_1">

                    <legend>Manual Attendance Excel Upload</legend>
                    <div class="grid">
                        <div class="row">
                            <div class="span2">
                                <label>Company<sup class="fg-red">*</sup></label>
                                <label>Session<sup class="fg-red">*</sup></label>
                            </div>
                            <div class="span3">
                                <asp:DropDownList ID="drpCompany" runat="server" Width="200" AutoPostBack="true" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged"></asp:DropDownList>
                                <asp:DropDownList ID="drpSession" runat="server" Width="200"></asp:DropDownList>
                            </div>

                            <div class="span4">
                                <button class="shortcut info" type="button" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                                    <i class="icon-download"></i>
                                    Download Excel</button>
                                <button class="shortcut info" type="button" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">
                                    <i class="icon-upload"></i>
                                    Upload Excel</button>
  
                            </div>
                            <div class="span2">
                                <button class="shortcut shortcut" runat="server" id="bttnSampleDwnload" style="font-size: 14px; background-color: #dddddd;" onserverclick="bttnSampleDownload_click">
                                    <%--onserverclick="bttnSampleDwnload_click"--%>
                                    <i class="icon-download"></i>
                                    Sample Excel Download</button>
                            </div>






                        </div>
                        <div class="row">
                            <div class="span2" style="margin-left: 0px;">
                                <label>Example Format:<sup class="fg-red">*</sup></label>
                            </div>
                            <img src="img/excelformat.png" />
                        </div>
                        <div class="row">
                            <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                            <br />

                            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="AttendanceVisible" runat="server">
                                <div class="accordion-frame">
                                    <a class="heading bg-red fg-white"><i class="icon-tag"></i>Following attendance details are not in the selected salary session.
                                        <asp:Label ID="lblLeave" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
                                    <div class="content">
                                        <div class="grid">
                                            <div class="row">
                                                <table class='table striped bordered hovered'>
                                                    <thead class="bg-darkBlue fg-white">
                                                        <th>EmployeeNo</th>
                                                        <th>Session</th>
                                                        <th>Date</th>
                                                        <th>Time</th>
                                                        <th>Status</th>
                                                    </thead>

                                                    <tbody>
                                                        <asp:Panel ID="pnlErrors" runat="server"></asp:Panel>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br />
                            <asp:Panel ID="pnlUpload" runat="server">
                                <div class="grid text-center">
                                    <div class="row text-center">
                                        <div class="span12">
                                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                            <button class="image-button primary" runat="server" id="bttnUploadExcel" onserverclick="bttnUploadExcel_click">
                                                Upload
                                                        <i class="icon-upload-3 bg-cobalt"></i>
                                            </button>


                                        </div>

                                    </div>

                                    <asp:GridView ID="grdUploadAttendance" DataKeyNames="" Width="90%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="true" />
                                            <asp:BoundField DataField="Session" HeaderText="Session" />
                                            <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:yyyy/M/dd}" />
                                            <asp:BoundField DataField="Time" HeaderText="Time" DataFormatString="{0:hh\:mm\:ss}" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" />
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
                            </asp:Panel>
                            <asp:Panel ID="pnlRunning" runat="server">
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                <label style="position: relative; top: 50%; left: 40%">Please wait ...</label>
                            </asp:Panel>
                        </div>
                    </div>
                </div>


                <div class="frame" id="_page_2">
                    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <legend>Manual Attendance Delete</legend>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <label>Company<sup class="fg-red">*</sup></label>
                                        <label>Session<sup class="fg-red">*</sup></label>
                                    </div>
                                    <div class="span3">
                                        <asp:DropDownList ID="drpComp" runat="server" Width="200" AutoPostBack="true" OnSelectedIndexChanged="drpComp_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:DropDownList ID="drpSess" runat="server" Width="200"></asp:DropDownList>
                                    </div>
                                    <div class="span4">
                                        <button class="shortcut info" runat="server" id="bttnSearch" onserverclick="bttnSearch_click">
                                            <i class="icon-download"></i>
                                            Search</button>
                                        <button class="shortcut info" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                                            <i class="icon-upload"></i>
                                            Delete</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
                                </div>

                                <div class="row">
                                    <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="2" Font-Size="Smaller" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="USERNo" HeaderText="Employee No" Visible="true" />
                                            <asp:BoundField DataField="CHECKDATE" HeaderText="Date" DataFormatString="{0:yyyy/M/dd}" />
                                            <asp:BoundField DataField="CHECKTIME" HeaderText="Time" DataFormatString="{0:hh\:mm\:ss}" />
                                            <asp:BoundField DataField="CHECKTYPE" HeaderText="Status" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>
                                    <br />
                                    <div class="row">
                                    </div>
                                </div>

                            </div>

                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="bttnSearch" />
                            <asp:AsyncPostBackTrigger ControlID="bttnDelete" />
                        </Triggers>
                    </asp:UpdatePanel>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
