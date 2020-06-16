<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="UploadBankAccountNumbers.aspx.cs" Inherits="Smarter_HRIS.UploadBankAccountNumbers" %>

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

    <style>
        .metro .grid .row {
            display: block;
            margin-top: 20px;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tab-control" data-role="tab-control" data-effect="fade" id="tab-control">
              <ul class="tabs">
                <li class="active"><a href="#_page_1">Upload Bank Account Details</a></li>
                <%--<li><a href="#_page_2">Process Basic Salary</a></li>
                <li><a href="#_page_3">View Processed Basic Salary</a></li>--%>
            </ul>

                     <div class="frames">
                <%-- Upload Basic Salary --%>
                <div class="frame" id="_page_1">
                    <legend>Upload Bank Account Details</legend>
                    <div class="grid">
                        <div class="row">
                            <div class="span2">
                                <label>CompanyID<sup class="fg-red">*</sup></label>

                            </div>
                            <div class="span3">
                                <asp:DropDownList ID="drpCompany" runat="server"></asp:DropDownList>
                                <%--<asp:DropDownList ID="drpSession" runat="server" Width="200"></asp:DropDownList>--%>
                            </div>

                            <div class="span4">
                                <button class="shortcut info" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                                    <i class="icon-download"></i>
                                    Download Excel</button>
                                <button class="shortcut info" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">   <%--onserverclick="bttnUpload_click"  --%>
                                    <%--onserverclick="bttnUpload_click"--%>
                                    <i class="icon-upload"></i>
                                    Upload Excel</button>
                            </div>

                        </div>
                        <div class="row">
                            <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                            <br />

                            <%--        <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="LeavesVisible" runat="server">
                                <div class="accordion-frame">
                                    <a class="heading bg-red fg-white"><i class="icon-tag"></i>Following Product Incentives are not in the selected salary session.
                                        <asp:Label ID="lblLeave" Visible="true" runat="server" Font-Bold="true" Text=""></asp:Label></a>
                                    <div class="content">
                                        <div class="grid">
                                            <div class="row">
                                                <table class='table striped bordered hovered'>
                                                    <thead class="bg-darkBlue fg-white">
                                                        <th>Product Incentive No</th>
                                                        <th>Product Incentive Name</th>
                                                        <th>Date</th>
                                                    </thead>

                                                    <tbody>
                                                        <asp:Panel ID="pnlErrors" runat="server"></asp:Panel>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>

                            <br />
                            <asp:Panel ID="pnlUpload" runat="server">
                                <div class="grid text-center">
                                    <div class="row text-center">
                                        <div class="span12">
                                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                            <button class="image-button primary" runat="server" id="bttnUploadExcel" onserverclick="bttnUploadExcel_click">   <%--onserverclick="bttnUploadExcel_click"--%>
                                                <%-- onserverclick="bttnUploadExcel_click"--%>
                                                Upload
                                                        <i class="icon-upload-3 bg-cobalt"></i>
                                            </button>
                                        </div>
                                    </div>

                                    <asp:GridView ID="grdUploadAccNo" DataKeyNames="EmployeeID" Width="90%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="true" />
                                            <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                            <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                            <asp:BoundField DataField="Bank Code" HeaderText="Bank Code" />
                                            <asp:BoundField DataField="Branch Code" HeaderText="Branch Code" />
                                            <asp:BoundField DataField="Account Type" HeaderText="Account Type" />

                                            <asp:BoundField DataField="Account No" HeaderText="Account No" />
                                            <asp:BoundField DataField="Name As In Bank" HeaderText="Name As In Bank" />
                                            <asp:BoundField DataField="Pay Type" HeaderText="Pay Type" />
                                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                            <asp:BoundField DataField="Percentage" HeaderText="Percentage" />
                                            <asp:BoundField DataField="Priority Level" HeaderText="Priority Level" />
                                            <asp:BoundField DataField="StopIfNotSufficient" HeaderText="StopIfNotSufficient" />

                                            <asp:BoundField DataField="PermrnantlyStop" HeaderText="PermrnantlyStop" />
                                            <asp:BoundField DataField="AutoStopOnMaturity" HeaderText="AutoStopOnMaturity" />
                                            <asp:BoundField DataField="FromDate" HeaderText="FromDate" />
                                            <asp:BoundField DataField="ToDate" HeaderText="ToDate" />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                             <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
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


                <%-- Upload Summary --%>
            </div>

        </div>
    </div>
</asp:Content>
