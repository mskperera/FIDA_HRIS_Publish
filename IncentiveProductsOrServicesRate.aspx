<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="IncentiveProductsOrServicesRate.aspx.cs" Inherits="Smarter_HRIS.IncentiveProductsOrServicesRate" %>

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


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />

        <input type="hidden" id="selectedTabs" value="" runat="server">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="tab-control" data-role="tab-control" data-effect="fade" id="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Process Insentive Summary</a></li>
                <li><a href="#_page_2">View Incentive Summary Details</a></li>
                <li><a href="#_page_3">View Processed Incentive Summary Details</a></li>
            </ul>

            <div class="frames">
                <%-- Upload Summary --%>
                <div class="frame" id="_page_1">
                   

                         <legend>Process Incentive Summary</legend>

                        
                
                    <div class="grid">
                        <div class="row">
                            <div class="span2">
                                <label>Attendance Group<sup class="fg-red">*</sup></label>
                                <label>Session<sup class="fg-red">*</sup></label>
                            </div>
                            <div class="span3">
                                <asp:DropDownList ID="drpAttnGrp" runat="server" Width="200"></asp:DropDownList>
                                <asp:DropDownList ID="drpSession" runat="server" Width="200"></asp:DropDownList>
                            </div>

                            <div class="span4">
                                <button class="shortcut info" runat="server" type="button" id="bttnDownload" onserverclick="bttnDownload_click">
                                    <i class="icon-download"></i>
                                    Download Excel</button>
                                <button class="shortcut info" runat="server" id="bttnUpload" type="button" onserverclick="bttnUpload_click">
                                    <i class="icon-upload"></i>
                                    Upload Excel</button>
                            </div>

                        </div>
                        <div class="row">
                            <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                            <br />

                            <div class="accordion with-marker" data-role="accordion" data-closeany="false" id="LeavesVisible" runat="server">
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

                                    <asp:GridView ID="grdUploadIncentive" DataKeyNames="ProductID,GroupID" Width="90%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="ProductID" HeaderText="Incentive_ProductID" Visible="False" />
                                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                            <asp:BoundField DataField="Rate" HeaderText="Rate" />
                                            <asp:BoundField DataField="Session" HeaderText="Date" />
                                            <asp:BoundField DataField="Date" HeaderText="Date" />
                                            <asp:BoundField DataField="GroupID" HeaderText="EmpAttendanceGroupID" Visible="false" />
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                            <asp:BoundField DataField="HeadCount" HeaderText="HeadCount" />
                                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
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
                <div class="frame" id="_page_2">
                    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server" ChildrenAsTriggers="true">
                        <ContentTemplate>

                            <legend>View Incentive Summary Details</legend>

                               <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                    <ProgressTemplate>
                                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <label>Attendance Group<sup class="fg-red">*</sup></label>
                                        <label>Session<sup class="fg-red">*</sup></label>
                                        <label>From Date<sup class="fg-red">*</sup></label>
                                        <label>To Date<sup class="fg-red">*</sup></label>
                                        <label id="hidTAB" runat="server"></label>
                                        <%--<asp:HiddenField ID="hidTAB" runat="server" />--%>
                                    </div>
                                    <div class="span3">
                                        <asp:DropDownList ID="drpAttnGroup" runat="server" Width="200"></asp:DropDownList>
                                        <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList>
                                        <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                                        <input type="date" id="txtToDate" runat="server" name="FromDate" />
                                    </div>

                                    <div class="span4">
                                        <button class="shortcut info" runat="server" id="Button1" type="button" onserverclick="bttnSearch_click">
                                            <i class="icon-download"></i>
                                            Search</button>
                                        <button class="shortcut warning" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                                            <i class="icon-remove"></i>
                                            Delete
                                        </button>
                                        <asp:HiddenField ID="hidLastTab" Value="0" runat="server" />
                                    </div>
                                </div>
                                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                                <div class="row">

                                    <asp:Panel ID="Panel3" runat="server">
                                        <div class="grid text-center">
                                            <asp:GridView ID="grdIns" DataKeyNames="Incentive_RateID" Width="90%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowDeleting="grdInsentives_RowDeleting">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="Incentive_RateID" HeaderText="Incentive_RateID" Visible="False" />
                                                    <%--       <asp:BoundField DataField="ProductID" HeaderText="ProductID" visible="false"/>--%>
                                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                    <asp:BoundField DataField="Rate" HeaderText="Rate" />

                                                    <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:yyyy/M/dd}" />
                                                    <asp:BoundField DataField="GroupName" HeaderText="Group Name" />
                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                    <asp:BoundField DataField="HeadCount" HeaderText="HeadCount" />
                                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                    <asp:TemplateField HeaderText="Actions">
                                                        <ItemTemplate>
                                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
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
                                </div>
                            </div>

                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Button1"  />
                            <asp:AsyncPostBackTrigger ControlID="bttnDelete"  />
                        </Triggers>
                    </asp:UpdatePanel>

                </div>

                <%-- Upload Summary --%>
                <div class="frame" id="_page_3">
                    <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                        <ContentTemplate>
                            <legend>View Processed Incentive Summary Details</legend>

                               <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>

                            <div class="grid">
                                <div class="row">
                                    <div class="span2">
                                        <label>Attendance Group<sup class="fg-red">*</sup></label>
                                        <label>Session<sup class="fg-red">*</sup></label>
                                        <label>From Date<sup class="fg-red">*</sup></label>
                                        <label>To Date<sup class="fg-red">*</sup></label>
                                    </div>
                                    <div class="span3">
                                        <asp:DropDownList ID="drpAttnGroup1" runat="server" Width="200"></asp:DropDownList>
                                        <asp:DropDownList ID="drpSession11" runat="server" Width="200" AutoPostBack="true" OnSelectedIndexChanged="drpSession11_SelectedIndexChanged"></asp:DropDownList>
                                        <input type="date" id="txtFromDate1" runat="server" name="FromDate" />
                                        <input type="date" id="txtToDate1" runat="server" name="FromDate" />
                                    </div>

                                    <div class="span4">
                                        <button class="shortcut info" runat="server" id="Button2" type="button" onserverclick="bttnSearch1_click">
                                            <i class="icon-search"></i></a>
                                            Search</button>
                                         <button class="shortcut success" runat="server" id="Button4" type="button" onserverclick="bttnDownload_click1">
                                            <i class="icon-download"></i></a>
                                            Download</button>
                                        <button class="shortcut warning" runat="server" id="Button3" type="button" onserverclick="bttnDelete1_click">
                                            <i class="icon-remove"></i>
                                            Delete
                                        </button>
                                    </div>
                                </div>
                                <asp:Panel ID="pnlMessages2" runat="server"></asp:Panel>
                                <div class="row">

                                    <asp:Panel ID="Panel2" runat="server">
                                        <div class="grid text-center">
                                            <asp:GridView ID="grdProcessed" DataKeyNames="Incentive_DailyID" Width="90%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowDeleting="grdProcessedInsentives_RowDeleting">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="Incentive_DailyID" HeaderText="Incentive_DailyID" Visible="False" />
                                                    <%--       <asp:BoundField DataField="ProductID" HeaderText="ProductID" visible="false"/>--%>
                                                    <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                    <asp:BoundField DataField="NameWithInitials" HeaderText="Name" />
                                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                    <asp:BoundField DataField="Rate" HeaderText="Rate" />
                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                    <asp:BoundField DataField="Total Grant" HeaderText="Total Grant" />
                                                    <%-- <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:yyyy/M/dd}" />--%>
                                                    <asp:BoundField DataField="HeadCount" HeaderText="HeadCount" />
                                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                    <asp:BoundField DataField="GroupName" HeaderText="Group Name" />
                                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />

                                                    <asp:TemplateField HeaderText="Actions">
                                                        <ItemTemplate>
                                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
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
                                    <%--  <asp:Panel ID="Panel4" runat="server">
                                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                <label style="position: relative; top: 50%; left: 40%">Please wait ...</label>
                            </asp:Panel>--%>
                                </div>
                            </div>
                            
                        </ContentTemplate>
                          <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Button2"  />
                            <asp:AsyncPostBackTrigger ControlID="Button3"  />
                         
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
            <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
            <script>
                webshims.setOptions('forms-ext', { types: 'date' });
                webshims.polyfill('forms forms-ext');
            </script>
</asp:Content>
