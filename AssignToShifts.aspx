<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignToShifts.aspx.cs" Inherits="Smarter_HRIS.AssignToShifts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="css/sComponentStyles.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee.ClientID %>').autocomplete({
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

    <%--    <script type="text/javascript">
        $(function () {
            $('#<%= txtShiftName.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetShiftNames",
                        data: "{ 'ShiftName': '" + request.term + "' }",
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
    </script>--%>

    <%--   <script type="text/javascript">
        $(function () {
            $('#<%= txtByGroup.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetGroupNames_Sup",
                        data: "{ 'GroupName': '" + request.term + "' }",
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
    --%>






    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearchEmp.ClientID %>').autocomplete({
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

    <%--    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearchShift.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetShiftNames",
                        data: "{ 'ShiftName': '" + request.term + "' }",
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
    </script>--%>

    <script type="text/javascript">

        function SelectAllCheckboxes1(chk) {
            $('#<%=grdSearch.ClientID%>').find("input:checkbox").each(function () {
                if (this != chk) { this.checked = chk.checked; }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <!--#region Assinged Shift Delete Dialog  -->
        <div class="BackDrop" id="deletebackdrop" style="display: none">
            <div class="center">
                <div id="deletedialogbox" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p>Are you sure you want to delete this assigned shift?</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button ID="btn_yes" CssClass="btn-yes"
                                runat="server" OnClick="btn_yes_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="btn_no" onclick="HideDialogBox()">
                                No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--#region Shift Delete Selected Dialog  -->
        <div class="BackDrop" id="backdropDeleteSelected" style="display: none">
            <div class="center">
                <div id="dialogboxDeleteSelected" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p runat="server" id="UploadPromptMessage">Are you sure you want to delete this selected assigned shift/s?</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button CssClass="btn-yes" ID="btn_yes_deleteSelected"
                                runat="server" OnClick="btn_yes_deleteSelected_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="btn_no_deleteAll" onclick="HideModelDeleteSelected()">
                                No</button>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!--#region Shift Delete All Dialog  -->
        <div class="BackDrop" id="backdropDeleteAll" style="display: none">
            <div class="center">
                <div id="dialogboxDeleteAll" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p runat="server" id="P1">Are you sure you want to delete this all assigned shift/s?</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button CssClass="btn-yes" ID="btn_yes_deleteAll"
                                runat="server" OnClick="btn_yes_deleteAll_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="Button2" onclick="HideModelDeleteAll()">
                                No</button>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <div style="margin: 40px 0">
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>

            <asp:UpdateProgress ID="UpdateProgress0"
                AssociatedUpdatePanelID="UpdatePanel0"
                runat="server">
                <ProgressTemplate>
                    <div class="BackDrop">
                        <div class="center">
                            <div class="LoadingBox">
                                <img alt="progress" src="Images/loading_bar.gif" />
                                Please Wait... 
                            </div>
                        </div>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:UpdatePanel ID="UpdatePanel0" runat="server">
                <ContentTemplate>

                    <legend>Assign To Shift</legend>

                    <input type="hidden" runat="server" id="hiddenFUserID" value="" />
                    <input type="hidden" runat="server" id="HiddenFieldgrdShiftIndex" value="" />

                    <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                    <div class="col-md-12">
                        <div class="input-control radio">
                            <label>
                                <asp:RadioButton ID="rbEmp" GroupName="a1" runat="server" AutoPostBack="true" OnCheckedChanged="rbEmp_CheckedChanged" />
                                <span class="check"></span>
                                Employee
                            </label>
                        </div>
                        <div class="input-control radio">
                            <label>
                                <asp:RadioButton ID="rbGrp" GroupName="a1" runat="server" AutoPostBack="true" OnCheckedChanged="rbGrp_CheckedChanged" />
                                <span class="check"></span>
                                Group
                            </label>
                        </div>

                    </div>



                    <div class="row">
                        <div style="width: 50%">
                            <div class="col-md-6">
                                <div class="sControllerFieldH">
                                    <div class="lbl" runat="server" style="min-width: 100px"><span runat="server" id="lblgrp_emp"></span><sup class="fg-red">*</sup> </div>


                                    <div runat="server" id="divEmpDiv">
                                        <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                                        <div class="input-control checkbox">
                                            <label>
                                                <asp:CheckBox ID="checkallemployees" AutoPostBack="true" OnCheckedChanged="checallemployees_CheckedChanged" runat="server" />
                                                <span class="check"></span>
                                                All Employees
                                            </label>
                                        </div>
                                    </div>


                                    <asp:DropDownList ID="drpGroup" runat="server"></asp:DropDownList>
                                </div>
                            </div>



                            <div class="col-md-6">
                                <div class="sControllerFieldH">
                                    <div class="lbl" style="min-width: 100px">Shift Name<sup class="fg-red">*</sup> </div>
                                    <asp:DropDownList ID="drpShiftName" runat="server"></asp:DropDownList>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="sControllerFieldH">
                                    <div class="lbl" style="min-width: 100px">From Date <sup class="fg-red">*</sup> </div>
                                    <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                                </div>

                                <div class="sControllerFieldH">
                                    <div class="lbl" style="min-width: 100px">To Date <sup class="fg-red">*</sup> </div>
                                    <input type="date" id="txtToDate" runat="server" name="ToDate" />
                                </div>

                            </div>

                            <div class="col-md-6">
                                <div class="sControllerFieldH">
                                    <div class="input-control checkbox">
                                        <label>
                                            <input type="checkbox" id="chkIsActive" checked="checked" runat="server" />
                                            <span class="check"></span>
                                            IsActive
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="sButtonGroupH">
                                <button class="shortcut success" type="button" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                                    <i class="icon-enter"></i>
                                    Assign
                                </button>
                                <%--   <button class="shortcut warning" type="button" runat="server" id="bttnDelete" onserverclick="bttnDelete_click">
                            <i class="icon-remove"></i>
                            Delete
                        </button>--%>
                            </div>
                        </div>
                    </div>


                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="txtEmployee" EventName="" />
                </Triggers>

            </asp:UpdatePanel>

        </div>
        <div style="margin: 40px 0">



            <asp:UpdateProgress ID="updProgress"
                AssociatedUpdatePanelID="updatepnl"
                runat="server">
                <ProgressTemplate>
                    <%--     <div class="BackDrop">--%>
                    <div class="center">
                        <%--  <div class="LoadingBox">--%>
                        <img alt="progress" src="Images/loading_bar.gif" />
                        Please Wait... 
             <%--   </div>--%>
                    </div>
                    <%--</div>--%>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:UpdatePanel ID="updatepnl" runat="server">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-md-12">
                            <legend>Search Assigned Shifts</legend>
                        </div>
                    </div>


                    <div style="display: flex;">

                        <div >

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="sControllerFieldH">
                                        <div class="lbl" runat="server" style="min-width: 150px"><span runat="server" id="lblSearch_emp_grp">Employee</span><sup class="fg-red">*</sup> </div>
                                        <div style="width: 80%">
                                            <asp:TextBox ID="txtSearchEmp" runat="server"></asp:TextBox>
                                            <div class="input-control checkbox">
                                                <label style="width: 100%">
                                                    <asp:CheckBox ID="checkallemployeesSearch" AutoPostBack="true" OnCheckedChanged="checkallemployees_CheckedChanged" runat="server" />

                                                    <span class="check"></span>
                                                    All Employees
                                                </label>
                                            </div>
                                        </div>


                                    </div>
                                </div>


                                <div class="col-md-5">
                                    <div style="width: 50%">
                                        <div class="sControllerFieldH">
                                            <div class="lbl" runat="server" style="min-width: 150px">Shift Name<sup class="fg-red">*</sup> </div>
                                            <asp:DropDownList ID="drpSearchShift" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div style="display: flex;">

                                    <div>
                                        <div class="sControllerFieldH">
                                            <div class="lbl" style="min-width: 150px">From Date <sup class="fg-red">*</sup> </div>
                                            <input type="date" id="txtSearchFromDate" runat="server" name="FromDate" />
                                        </div>

                                        <div class="sControllerFieldH">
                                            <div class="lbl" style="min-width: 150px">To Date <sup class="fg-red">*</sup> </div>
                                            <input type="date" id="txtSearchToDate" runat="server" name="ToDate" />
                                        </div>
                                    </div>

                                </div>


                            </div>

                        </div>

                        <div >
                            <button id="btnSearch" style="margin-left: 200px;" runat="server" type="button" onserverclick="bttnSearch_click" class="shortcut info">
                                <i class="icon-search"></i>
                                &nbsp;Search
                            </button>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div runat="server" id="rightpanel">
                                <div class="checkbox checkbox-success">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">


                        <div class="col-md-12">
                            <asp:GridView CssClass="table table-bordered table-hover table-striped" ID="grdSearch"
                                DataKeyNames="GroupAssignToShiftID,EmployeeMasterID,EmpAttendanceGroupID,ShiftID" runat="server" AutoGenerateColumns="False"
                                PageSize="100" GridLines="Vertical" PageIndex="0" AllowPaging="true" AllowSorting="true"
                                PagerSettings-Position="TopAndBottom" OnRowDeleting="grdSearch_RowDeleting" OnPageIndexChanging="grdSearch_PageIndexChanging">

                                <PagerStyle CssClass="gridview" BackColor="Transparent"></PagerStyle>
                                <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField ControlStyle-Font-Italic="true" HeaderText="#">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeID" Visible="False" />
                                    <asp:BoundField DataField="EmpAttendanceGroupID" HeaderText="EmpAttendanceGroupID" Visible="False" />
                                    <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo" />
                                    <asp:BoundField DataField="NameWithInitials" HeaderText="Name" />

                                    <asp:BoundField DataField="GroupName" HeaderText="Group" />
                                    <asp:BoundField DataField="ShiftID" HeaderText="Shift ID" Visible="False" />
                                    <asp:BoundField DataField="ShiftName" HeaderText="Shift Name" />
                                    <asp:BoundField DataField="FromDate" HeaderText="Assigned Date" DataFormatString="{0:dd MMM yyyy}" />
                                    <asp:BoundField DataField="IsActive" HeaderText="Active" />
                                    <asp:TemplateField HeaderText="Actions">

                                        <HeaderTemplate>
                                            <%--<asp:Button ID="DelAllButton" OnClick="DelSelectedButton_Click" runat="server" type="button" Text="Delete All" CssClass="danger small" />--%>
                                            <asp:Button ID="btn_shiftDeleteAll" CssClass="danger" OnClick="btn_shiftDeleteAll_Click" runat="server" Text="Delete All" />

                                            <%--<input id="Checkbox2" type="checkbox" value="Check All" onclick="SelectAllCheckboxes1(this)" runat="server" />--%>
                                        </HeaderTemplate>

                                        <ItemTemplate>
                                            <asp:Button ID="DelButton" runat="server" CommandName="Delete" type="button" OnClick="DelButton_Click" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                            <div style="border-left: 1px white solid"></div>
                                            <%--<asp:CheckBox ID="gridselectcheckBox" runat="server" />--%>
                                        </ItemTemplate>


                                    </asp:TemplateField>
                                </Columns>

                                <%--   <EditRowStyle BackColor="#2461BF" />--%>
                                <%--<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />--%>
                                <HeaderStyle BackColor="#555555" Font-Names="arial" ForeColor="White" />
                                <%--<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />--%>
                                <%--    <RowStyle BackColor="#EFF3FB" />--%>
                                <%--<SelectedRowStyle CssClass="SelectedRow" BorderWidth="2" Font-Names="arial" />--%>
                                <SortedAscendingCellStyle BackColor="#969696" />
                                <%-- <SortedAscendingHeaderStyle BackColor="#6D95E1" />--%>
                                <%--    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />--%>
                            </asp:GridView>

                        </div>


                    </div>

                    </div>




                <script>
                    function ShowDialogBox() {
                        var x = document.getElementById("deletedialogbox");
                        x.style.display = "block";
                        var bd = document.getElementById("deletebackdrop");
                        bd.style.display = "block";
                    }
                    function HideDialogBox() {
                        var x = document.getElementById("deletedialogbox");
                        x.style.display = "none";
                        var bd = document.getElementById("deletebackdrop");
                        bd.style.display = "none";
                    }
                    function ShowModelDeleteSelected() {
                        var x = document.getElementById("dialogboxDeleteSelected");
                        x.style.display = "block";
                        var bd = document.getElementById("backdropDeleteSelected");
                        bd.style.display = "block";
                    }
                    function HideModelDeleteSelected() {
                        var x = document.getElementById("dialogboxDeleteSelected");
                        x.style.display = "none";
                        var bd = document.getElementById("backdropDeleteSelected");
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


                </script>

                    <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
                    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
                    <script>
                        webshims.setOptions('forms-ext', { types: 'date' });
                        webshims.polyfill('forms forms-ext');
                    </script>

                </ContentTemplate>
                <Triggers>

                    <asp:PostBackTrigger ControlID="txtSearchEmp" />

                </Triggers>

            </asp:UpdatePanel>

        </div>

    </div>
</asp:Content>
