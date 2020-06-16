<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="DailyAdvances.aspx.cs" Inherits="Smarter_HRIS.DailyAdvances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <link href="css/bootstrap-3.3.2/bootstrap-custom.css" rel="stylesheet" />
    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="Model_Boxes/sMessageBoxes/sMessageBoxes.css" rel="stylesheet" />
    <link href="css/PopupForm.css" rel="stylesheet" />
       <link href="css/sFileUploadZone.css" rel="stylesheet" />
    <link href="css/sTabPage.css" rel="stylesheet" />
    <link href="Model_Boxes/DetailsBox/sDetailsBox.css" rel="stylesheet" />

    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
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

    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmpSearch.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames",
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

    <script type="text/javascript">
        $('.chosen-select').on('chosen:updated', function (event) {
            // your stuff here
        });

        window.setInterval(function () {
            $('.chosen-select').trigger('chosen:updated');
        }, 1000);
    </script>

    <script>
        function fselect() {


            var filename = $('input[type=file]').val().split('\\').pop();
            if (filename)
                document.getElementById('filepath').innerHTML = filename;
            else
                document.getElementById('filepath').innerHTML = 'No File Selected.';
        }

    </script>

    <script type="text/javascript">

        function SelectAllCheckboxes1(chk) {
            $('#<%=grdVariableAdditionSearch.ClientID%>').find("input:checkbox").each(function () {
                if (this != chk) { this.checked = chk.checked; }
            });
        }


    </script>

    <script>
        function selectCheckBoxItem() {

            var allBoxesChecked = true;
            var checkstr = "";
            var index = 0;
            $('#<%=grdVariableAdditionSearch.ClientID%>').find("input:checkbox").each(function () {

                if (index !== 0) {
                    if (!this.checked) {
                        allBoxesChecked = false;
                    }
                }
                index++;

            });
            var grid = document.getElementById('<%=grdVariableAdditionSearch.ClientID %>');
            var chbox = document.getElementById('ContentPlaceHolder1_grdVariableAdditionSearch_cball');

            //console.log('final res', allBoxesChecked);

            if (allBoxesChecked) {
                //console.log('chbox', chbox);
                chbox.checked = true;

            }
            else {
                chbox.checked = false;
            }
        }

    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="UserID_Hidden" runat="server" />

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <!--#region Allowance Upload Prompt Dialog  -->
        <div class="BackDrop" id="backdropUploadPrompt" style="display: none">
            <div class="center">
                <div id="dialogboxUploadPrompt" style="display: none;" class="DialogBox">
                    <div class="TitleBar">File Upload</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p runat="server" id="UploadPromptMessage">message</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button CssClass="btn-yes" ID="btnUploadPromptYes" type="button"
                                runat="server" OnClick="btnUploadPromptYes_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="btnUploadPromptNo" onclick="HideModelUploadPrompt()">
                                No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--#endregion -->
        <div class="panel panel-default pattern-lightsmorke" style="width: 100%; padding: 5px; margin: 10px">
                            <asp:Panel ID="pnlMessagesTab1" runat="server"></asp:Panel>
            <div id="Tabs" role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active"><a href="#page1" aria-controls="page2" role="tab" data-toggle="tab">Downloads/ Uploads</a></li>
                    <li><a href="#page2" aria-controls="page2" role="tab" data-toggle="tab">Variable Additions Details
                    </a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="page1">

                        <div class="header2">Variable Additions Excel Bulk Upload</div>

                        <%-- <asp:Panel ID="dialogdivtabpage1" runat="server"></asp:Panel>--%>
                        <div id="dialogdivtabpage1" runat="server"></div>
               
                        <div class="row">
                            <div class="sContent">
                                <div class="col-md-8">
                                    <div class="sControllerFieldH">
                                        <div class="lbl" style="width: 150px">Company <sup class="fg-red">*</sup> </div>
                                        <asp:DropDownList CssClass="sFormControl" ID="drpCompany1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpCompany1_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                    <div class="sControllerFieldH">
                                        <div class="lbl" style="width: 150px">Session <sup class="fg-red">*</sup> </div>
                                        <asp:DropDownList CssClass="sFormControl" ID="drpSession1" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="sControllerFieldH">
                                        <div class="lbl" style="width: 150px">Variable Addition <sup class="fg-red">*</sup> </div>
                                        <asp:DropDownList CssClass="sFormControl" ID="drpAddition1" runat="server"></asp:DropDownList>
                                    </div>
                                </div>


                                <div class="col-md-4">

                                    <div style="padding-top: 20px">

                                        <button class="shortcut info" runat="server" type="button" id="bttnDownload" onserverclick="bttnDownload_click">
                                            <i class="icon-download"></i>
                                            Download Excel</button>
                                        <button class="shortcut info" runat="server" type="button" id="bttnUpload" onserverclick="bttnUpload_click">
                                            <i class="icon-upload"></i>
                                            Upload Excel</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <asp:Panel ID="pnlUpload" runat="server">

                                <!-- Drop Zone -->
                                <div class="upload-drop-zone">

                                    <div class="sBtn image-preview-input">
                                        <i class="fa fa-paperclip"></i>&nbsp;Choose File
                                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="fselect();" />
                                        <!-- rename it -->
                                    </div>

                                    <div style="font-size: 15px; color: white; margin: 10px 10px" id="filepath">No File Selected.</div>

                                    <button class="success large" runat="server" id="Button1" type="button" onserverclick="bttnUploadExcel_click">
                                        <i class="fa fa-upload"></i>&nbsp;Upload
                                    </button>
                                </div>
                            </asp:Panel>
                        </div>

                        <asp:GridView ID="grdVariableAddUpload" DataKeyNames="EmployeeID,SessionID,AdditionID,CompanyID" CssClass="table table-bordered table-hover table-striped"
                            runat="server" AutoGenerateColumns="False"
                            PageSize="100" GridLines="Vertical" PageIndex="0" AllowPaging="true" AllowSorting="true" PagerSettings-Position="TopAndBottom"
                            OnRowDataBound="grdVariableAddUpload_RowDataBound" OnPageIndexChanging="grdVariableAddUpload_PageIndexChanging">
                            <PagerStyle CssClass="gridview" BackColor="#969696"></PagerStyle>
                            <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>

                            <Columns>
                                <asp:TemplateField HeaderText="#">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                <asp:BoundField DataField="AdditionID" HeaderText="AdditionID" Visible="False" />
                                <asp:BoundField DataField="AdditionName" HeaderText="Addition Name" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" DataFormatString="{0:n2}" />
                                <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
                            </Columns>
                            <%--   <EditRowStyle BackColor="#2461BF" />--%>
                            <%--<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />--%>
                            <HeaderStyle BackColor="#555555" Font-Names="arial" ForeColor="White" />
                            <%--<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />--%>
                            <%--    <RowStyle BackColor="#EFF3FB" />--%>
                            <SelectedRowStyle CssClass="SelectedRow" BorderWidth="2" Font-Names="arial" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <%-- <SortedAscendingHeaderStyle BackColor="#6D95E1" />--%>
                            <%--    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />--%>
                        </asp:GridView>



                    </div>
                    <div role="tabpanel" class="tab-pane" id="page2">


                        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="header2">Variable Addition Assign</div>

                                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>

                                <div id="dialogdivtabpage2" runat="server"></div>



                                              <!--#region Details Box  -->
                          <%--      <div class="BackDrop" id="backdropDetailsBox" >
                                    <div class="center">
                                        <div id="detailsbox" class="sDetailsBox">
                                            <div class="TitleBar">Details</div>
                                            <div class="detailbox-bodyMessage">
                                                <div style="padding: 10px 0 10px 0">

                                                    <div class="sDetailControllerFieldH">
                                                        <div class="lbl" style="width: 100px;">Session : </div>
                                                        <asp:TextBox ID="TextBox1" ReadOnly="true" Text="heeeelelelelll" CssClass="sFormControl-Detail"  runat="server"></asp:TextBox>
                                                    </div>

                                                </div>

                                                <div class="bodyButtons">
                                        
                                                    <button runat="server" class="btn-no" type="button"
                                                        id="Button3" onclick="HideDetailsBox()">
                                                        Close</button>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>--%>
                                <!--#endregion -->


                                <!--#endregion -->



                                <%--                   <div class="BackDrop" id="backdropsWaitingBox">
                                    <div class="center">
                                        <div id="messagebox" class="sWaitingBox">
                                            <div class="sWaitingBoxBody">
                                                        <div class="loader"></div>    
                                                <div class="sWaitingBoxmessage">
                                                      Please Wait...
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>--%>

                                <asp:Panel ID="Panel_single" runat="server"></asp:Panel>
                                <div class="row">



                                    <div class="col-md-6">
                                        <div class="sContent">
                                            <div class="sControllerFieldH">
                                                <div class="lbl" style="width: 100px">Employee <sup class="fg-red">*</sup> </div>
                                                <asp:TextBox CssClass="sFormControl AutoCompleteSearchBox" ID="txtEmployee" runat="server" AutoPostBack="true" OnTextChanged="txtEmployee_TextChanged"></asp:TextBox>
                                            </div>

                                            <div class="sControllerFieldH">
                                                <div class="lbl" style="width: 100px">Session <sup class="fg-red">*</sup> </div>
                                                <asp:DropDownList CssClass="sFormControl" ID="drpSession_single" runat="server"></asp:DropDownList>
                                                <asp:Label CssClass="sFormControl" ID="lblSession" runat="server" Text="" Font-Bold="true" Width="200"></asp:Label>
                                            </div>

                                            <div class="sControllerFieldH">
                                                <div class="lbl" style="width: 100px">Addition <sup class="fg-red">*</sup> </div>
                                                <asp:DropDownList CssClass="sFormControl" ID="drpAddition_single" runat="server"></asp:DropDownList>
                                            </div>

                                            <div class="sControllerFieldH">
                                                <div class="lbl" style="width: 100px">Amount <sup class="fg-red">*</sup> </div>
                                                <asp:TextBox CssClass="sFormControl" ID="txtAmount_single" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="sButtonGroupH">

                                            <button class="shortcut success" runat="server" type="button" id="bttnSave" onserverclick="bttnSave_click">
                                                <i class="icon-floppy"></i>
                                                Save</button>
                                            <button class="shortcut light" runat="server" type="button" id="bttnNew" onserverclick="bttnNew_click">
                                                <i class="icon-new"></i>
                                                New</button>

                                        </div>
                                    </div>

                                </div>




 
                                <asp:HiddenField ID="TabName" runat="server" />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="bttnSave" />
                     
                                <asp:AsyncPostBackTrigger ControlID="bttnNew" />
                                <asp:PostBackTrigger ControlID="txtEmployee" />


                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                </div>

            </div>

        </div>








        <div class="panel panel-default pattern-lightsmorke" style="width: 100%; margin: 10px">
        
     
                       <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                    <ProgressTemplate>
                                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>

                                                                <!--#region Allowance Delete Dialog  -->
                                <div class="BackDrop" id="backdrop" style="display: none">
                                    <div class="center">
                                        <div id="dialogbox" style="display: none;" class="DialogBox">
                                            <div class="TitleBar">Delete Record...</div>
                                            <div class="sDialogBody">
                                                <div class="bodyMessage">
                                                    <p>Are you sure you want to delete this record?</p>
                                                </div>

                                                <div class="bodyButtons">
                                                    <asp:Button ID="btn_yes" CssClass="btn-yes"
                                                        runat="server" OnClick="btn_yes_Click" Text="Yes" />
                                                    <button runat="server" class="btn-no" type="button"
                                                        id="btn_no" onclick="HideModel()">
                                                        No</button>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!--#endregion -->

                                <!--#region Allowance Delete All Dialog  -->
                                <div class="BackDrop" id="backdropDeleteAll" style="display: none">
                                    <div class="center">
                                        <div id="dialogboxDeleteAll" style="display: none;" class="DialogBox">
                                            <div class="TitleBar">Delete Record...</div>
                                            <div class="sDialogBody">
                                                <div class="bodyMessage">
                                                    <p>Are you sure you want to delete these selected record/s?</p>
                                                </div>

                                                <div class="bodyButtons">
                                                    <asp:Button CssClass="btn-yes" ID="btn_yes_deleteAll"
                                                        runat="server" OnClick="btn_yes_deleteAll_Click" Text="Yes" />
                                                    <button runat="server" class="btn-no" type="button"
                                                        id="btn_no_deleteAll" onclick="HideModelDeleteAll()">
                                                        No</button>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>


                                <!--#region Allowance Update Dialog  -->
                                <div class="BackDrop" id="backdropAllowanceUpdate" style="display: none">
                                    <div class="center">
                                        <div id="dialogboxAllowanceUpdate" class="sPopupForm" style="display: none">
                                            <div class="TitleBar">Update Allowance</div>
                                            <div class="sPopupFormBody">
                                                <div style="padding: 10px 0 10px 0">

                                                    <div class="sControllerFieldH">
                                                        <div style="width: 100px">Session : </div>
                                                        <asp:TextBox ID="txtupdate_session" Enabled="false" CssClass="sFormControl" Style="width: 300px;" runat="server"></asp:TextBox>
                                                    </div>

                                                    <div class="sControllerFieldH">
                                                        <div style="width: 100px">Allowance : </div>
                                                        <asp:TextBox ID="txtupdate_allowance" Enabled="false" CssClass="sFormControl" Style="width: 300px;" runat="server"></asp:TextBox>
                                                    </div>

                                                    <div class="sControllerFieldH">
                                                        <div style="width: 100px">Name </div>
                                                        <asp:TextBox ID="txtAllwanceUpdate_EmpName" Enabled="false" CssClass="sFormControl" Style="width: 300px;" runat="server"></asp:TextBox>

                                                    </div>



                                                    <div class="sControllerFieldH">
                                                        <div style="width: 100px">Amount </div>
                                                        <asp:TextBox ID="txtUpdateAllowanceAmount" TabIndex="0" CssClass="sFormControl" Style="width: 300px;" runat="server"></asp:TextBox>
                                                    </div>

                                                </div>

                                                <div class="bodyButtons">
                                                    <button id="btnUpdateAllowance" runat="server" type="button" onserverclick="btnUpdateAllowance_ServerClick" class="primary">
                                                        Update
                                                    </button>
                                                    <button runat="server" class="btn-no" type="button"
                                                        id="btn_No_AllowanceUpdate" onclick="HideModelAllowanceUpdate()">
                                                        Cancel</button>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!--#endregion -->

                                            <div id="divdetailsview" runat="server"></div>

                                    <div class="sAllowanceSearchBox">

                                        <div class="Header">
                                            <i class="fa fa-search" aria-hidden="true"></i>&nbsp;Search Allowances
                                        </div>

                                        <div class="Body">

                                            <div class="sSearchPanelH">
                                                <div class="sControllerFieldH">
                                                    <div class="lbl">Name </div>
                                                    <asp:TextBox ID="txtEmpSearch" ClientIDMode="Static" AutoPostBack="true" CssClass="sFormControl" runat="server"></asp:TextBox>
                                                </div>



                                                <div class="sControllerFieldH">
                                                    <div class="lbl">Allowance </div>
                                                    <asp:DropDownList ID="drpAdditionsSearch" CssClass="sFormControl" runat="server"></asp:DropDownList>
                                                </div>



                                                <div class="sControllerFieldH">
                                                    <div class="lbl">Session </div>
                                                    <asp:DropDownList ID="drpSessionSearch" CssClass="sFormControl" runat="server"></asp:DropDownList>
                                                </div>




                                                <button id="bttnSearch" runat="server" type="button" onserverclick="bttnSearch_ServerClick" class="primary">
                                                    <i class="fa fa-search" aria-hidden="true"></i>&nbsp;Search
                                                </button>
                                            </div>

                                        </div>


                                        <div style="margin: 0px 10px 0px 10px;">

                                            <asp:GridView CssClass="table table-bordered table-hover table-striped" ID="grdVariableAdditionSearch"
                                                DataKeyNames="VariableAllowanceAssignID,SessionID,EmployeeID,AllowanceID" runat="server" AutoGenerateColumns="False"
                                                OnRowCommand="grdVariableAddition_RowCommand" OnRowDeleting="grdAdition_RowDeleting"
                                                PageSize="100" GridLines="Vertical" PageIndex="0" AllowPaging="true" AllowSorting="true" PagerSettings-Position="TopAndBottom"
                                                OnRowDataBound="grdVariableAdditionSearch_RowDataBound" OnPageIndexChanging="grdVariableAdditionSearch_PageIndexChanging">

                                                <PagerStyle CssClass="gridview" BackColor="#969696"></PagerStyle>
                                                <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                                                <Columns>
                                                    <asp:TemplateField ControlStyle-Font-Italic="true" HeaderText="#">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="VariableAllowanceAssignID" HeaderText="VariableAllowanceAssign ID" Visible="False" />
                                                    <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                                    <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                    <asp:BoundField DataField="SessionName" HeaderText="Session" />
                                                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                                    <asp:BoundField DataField="NameWithInitials" HeaderText="Employee" />
                                                    <asp:BoundField DataField="AllowanceID" HeaderText="Allowance ID" Visible="False" />
                                                    <asp:BoundField DataField="AllowanceName" HeaderText="Allowance" />
                                                    <asp:BoundField DataField="Amount" HeaderText="Amount" DataFormatString="{0:n2}" HtmlEncode="false" />
                                                    <%--<asp:BoundField DataField="UpdatedDateTime" HeaderText="Modified" ItemStyle-Font-Size="Smaller" DataFormatString="{0:yy-MM-dd hh:mm tt}" />--%>
                                                    <asp:TemplateField HeaderText="Actions">
                                                        <ItemTemplate>


                                                            <asp:Button ID="DelButton"  runat="server" CommandName="Delete" type="button" OnClick="DelButton_Click" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                            <asp:Button ID="EditButton" runat="server" CommandName="Select" type="button" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                                               <asp:Button ID="btndetails" runat="server" type="button" CssClass="success mini" OnClick="btndetails_Click" Text="More" />
                                                                
                                                            <div style="position: relative; display: inline-block;">
                                                                <label class="containerCheckBox">

                                                                    <asp:CheckBox ID="cbitem" runat="server" OnClick="selectCheckBoxItem()" />
                                                                    <span class="checkmark"></span>
                                                                </label>
                                                            </div>

                                                        </ItemTemplate>
                                                        <HeaderTemplate>
                                                            <asp:Button ID="DelAllButton" OnClick="DelAllButton_Click" runat="server" type="button" Text="Delete Selection" CssClass="danger small" />

                                                            <div style="position: relative; display: inline-block">
                                                                <label class="containerCheckBox">
                                                                    <input id="cball" type="checkbox" onclick="SelectAllCheckboxes1(this)" runat="server" />
                                                                    <span class="checkmark"></span>
                                                                </label>
                                                            </div>
                                                        </HeaderTemplate>
                                                    </asp:TemplateField>
                                                </Columns>

                                                <%--   <EditRowStyle BackColor="#2461BF" />--%>
                                                <%--<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />--%>
                                                <HeaderStyle BackColor="#555555" Font-Names="arial" ForeColor="White" />
                                                <%--<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />--%>
                                                <%--    <RowStyle BackColor="#EFF3FB" />--%>
                                                <%--<SelectedRowStyle CssClass="SelectedRow" BorderWidth="2" Font-Names="arial" />--%>
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <%-- <SortedAscendingHeaderStyle BackColor="#6D95E1" />--%>
                                                <%--    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />--%>
                                            </asp:GridView>
                                        </div>


                                    </div>
                           
                 
                                <asp:HiddenField ID="IsEdit" runat="server" />
                                <asp:HiddenField ID="TableID" runat="server" />
                                <asp:HiddenField ID="grdIndex" runat="server" />
                  </ContentTemplate>
                            <Triggers>
                  
                                <asp:AsyncPostBackTrigger ControlID="btnUpdateAllowance" />
                                <asp:AsyncPostBackTrigger ControlID="bttnSearch" />
                                       <asp:PostBackTrigger ControlID="txtEmpSearch" />
                                           <asp:AsyncPostBackTrigger ControlID="btnUpdateAllowance" />

                            </Triggers>
                        </asp:UpdatePanel>


  </div>
            </div>
 


    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(function () {
            var tabName = $("[id*=TabName]").val() != "" ? $("[id*=TabName]").val() : "personal";
            $('#Tabs a[href="#' + tabName + '"]').tab('show');
            $("#Tabs a").click(function () {
                $("[id*=TabName]").val($(this).attr("href").replace("#", ""));
            });
        });
    </script>



    <script>
        function ShowModel() {
            var x = document.getElementById("dialogbox");
            x.style.display = "block";
            var bd = document.getElementById("backdrop");
            bd.style.display = "block";
        }
        function HideModel() {
            var x = document.getElementById("dialogbox");
            x.style.display = "none";
            var bd = document.getElementById("backdrop");
            bd.style.display = "none";
        }

        function ShowModelDeleteAll() {
            var x = document.getElementById("dialogboxDeleteAll");
            x.style.display = "block";
            var bd = document.getElementById("backdropDeleteAll");
            bd.style.display = "block";
        }
        function HideModelDeleteAll() {
            var x = document.getElementById("dialogboxDeleteAll");
            x.style.display = "none";
            var bd = document.getElementById("backdropDeleteAll");
            bd.style.display = "none";
        }

        function ShowModelUploadPrompt() {
            var x = document.getElementById("dialogboxUploadPrompt");
            x.style.display = "block";
            var bd = document.getElementById("backdropUploadPrompt");
            bd.style.display = "block";
        }
        function HideModelUploadPrompt() {
            var x = document.getElementById("dialogboxUploadPrompt");
            x.style.display = "none";
            var bd = document.getElementById("backdropUploadPrompt");
            bd.style.display = "none";
        }




        function ShowModelAllowanceUpdate() {
            var x = document.getElementById("dialogboxAllowanceUpdate");
            x.style.display = "block";
            var bd = document.getElementById("backdropAllowanceUpdate");
            bd.style.display = "block";
        }
        function HideModelAllowanceUpdate() {
            var x = document.getElementById("dialogboxAllowanceUpdate");
            x.style.display = "none";
            var bd = document.getElementById("backdropAllowanceUpdate");
            bd.style.display = "none";
        }




    </script>
    <script src="Modal_Boxes/sMessageBoxes/sMessageBox.js"></script>
    <script src="Modal_Boxes/DetailsBox/sDetailsBox.js"></script>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>


</asp:Content>
