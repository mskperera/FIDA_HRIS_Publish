<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="GatePass.aspx.cs" Inherits="Smarter_HRIS.GatePass" %>

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


        <div style="margin: 40px 0">
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>

     

                    <legend>Gate Pass</legend>

                    <input type="hidden" runat="server" id="hiddenFUserID" value="" />
                    <input type="hidden" runat="server" id="HiddenFieldgrdShiftIndex" value="" />

            
                    <asp:HiddenField ID="hidden_CheckedIDsInGriDStr" runat="server" />

                    <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>


                    <div class="row">
                        <div style="width: 50%">
                            <div class="col-md-6">
                                <div class="sControllerFieldH">
                                    <div class="lbl" runat="server" style="min-width: 100px">Employee<sup class="fg-red">*</sup> </div>
                                    <asp:TextBox ID="txtEmployee" style="min-width: 300px" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="sControllerFieldH">
                                    <div class="lbl" style="min-width: 100px">Type<sup class="fg-red">*</sup> </div>
                                    <asp:DropDownList ID="drpShiftName" runat="server"></asp:DropDownList>
                                </div>
                            </div>




                            <div class="col-md-6">
                                <div style="display: flex">
                                    <div  class="sControllerFieldH">
                                        <div class="lbl" style="min-width: 100px"> Date & Time <sup class="fg-red">*</sup> </div>
                                        <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                                    </div>


                                    <div class="sControllerFieldH">
                                        <div class="lbl" runat="server" >hh<sup class="fg-red">*</sup> </div>
                                        <asp:TextBox ID="txthh" style="width:60px" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="sControllerFieldH">
                                        <div class="lbl" runat="server">mm<sup class="fg-red">*</sup> </div>
                                        <asp:TextBox ID="txtmm" style="width:60px"  runat="server"></asp:TextBox>
                                    </div>
                                    <div class="sControllerFieldH">
                                        <div class="lbl">AM/PM<sup class="fg-red">*</sup> </div>
                                        <asp:DropDownList ID="drptt" runat="server">
                                            <asp:ListItem Value="-2">-Select-</asp:ListItem>
                                            <asp:ListItem Value="am">AM</asp:ListItem>
                                            <asp:ListItem Value="pm">PM</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                        </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="sButtonGroupH" style="margin-top:10px">
                                <button class="shortcut success" type="button" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                                    <i class="icon-enter"></i>
                                    Assign
                                </button>
                            </div>
                        </div>
                    </div>



        </div>
        <div style="margin: 40px 0">




      
                    <div class="row">
                        <div class="col-md-12">
                            <legend>Search Gate Pass Details</legend>
                        </div>
                    </div>

                    <asp:Panel ID="msgSearch" runat="server"></asp:Panel>
                    <div style="display: flex;">

                        <div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="sControllerFieldH">
                                        <div class="lbl" runat="server" style="min-width: 150px"><span runat="server" id="lblSearch_emp_grp">Employee</span><sup class="fg-red">*</sup> </div>
                                        <div style="width: 80%">
                                            <asp:TextBox ID="txtSearchEmp" style="width:300px"  runat="server"></asp:TextBox>
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

                        <div>
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
                            <div style="margin-top: 15px">

                                <asp:GridView CssClass="table table-bordered table-hover table-striped" ID="grdSearch"
                                    DataKeyNames="GatePassID" runat="server" AutoGenerateColumns="False"
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
                                        <asp:BoundField DataField="GatePassID" HeaderText="EmployeeID" Visible="False" />
                                        <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo" />
                                        <asp:BoundField DataField="NameWithInitials" HeaderText="Name" />
                                        <asp:BoundField DataField="GatePassTypeName" HeaderText="Gate Pass Type" />
                                        <asp:BoundField DataField="GatePassDate" HeaderText="Gate Pass Date" DataFormatString="{0:dd MMM yyyy hh:mm tt}" />
                                        <asp:TemplateField HeaderText="Actions">

                                            <HeaderTemplate>
                                            </HeaderTemplate>

                                            <ItemTemplate>
                                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" type="button" OnClick="DelButton_Click" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                                <div style="border-left: 1px white solid"></div>
                                            </ItemTemplate>


                                        </asp:TemplateField>
                                    </Columns>
                                    <HeaderStyle BackColor="#555555" Font-Names="arial" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#969696" />
                                </asp:GridView>

                            </div>
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

  

        </div>


</asp:Content>
