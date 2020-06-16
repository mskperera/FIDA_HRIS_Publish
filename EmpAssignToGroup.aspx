<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmpAssignToGroup.aspx.cs" Inherits="Smarter_HRIS.EmpAssignToGroup1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
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
            $('#<%= txtSearchEmployee.ClientID %>').autocomplete({
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
            $('#<%= txtSupervisor.ClientID %>').autocomplete({
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

    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <style>
        .text-left {
            text-align: left;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }
    </style>


</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />


        <form>
            <div class="tab-control" data-role="tab-control" data-effect="fade">
                <ul class="tabs">
                    <li class="active"><a href="#_page_1">Assign to Group</a></li>
                    <li><a href="#_page_2">Search</a></li>
                    <li><a href="#_page_3">Supervisor Assign To Group</a></li>
                </ul>

                <div class="frames">
                    <%-- Apply Leaves Tab --%>
                    <div class="frame" id="_page_1">
                        <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <legend>Assign To Group</legend>

                                <div class="grid">
                                    <div class="row">


                                        <%--           <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                            </div>
                                        </div>--%>

                                        <div class="col-md-5">
                                            <div class="form-group-sm row">
                                                <label for="ddlCompany" class="col-sm-2 col-form-label">Company</label>
                                                <div class="col-sm-10">
                                                    <asp:DropDownList ID="ddlCompany" CssClass="form-control" runat="server" Width="200px" AutoPostBack="true" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList><br />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="ddlDivision" class="col-sm-2 col-form-label">Division</label>
                                                <div class="col-sm-10">
                                                    <asp:DropDownList ID="ddlDivision" CssClass="form-control" runat="server" Width="200px" DataTextField="DivisionName" DataValueField="DivisionID"></asp:DropDownList><br />
                                                </div>
                                            </div>

                                            <asp:Button ID="bttnFilter" runat="server" Text="Filter Employees" CssClass="info" OnClick="bttnFilter_Click" />


                                        </div>

                                        <div class="col-md-5">

                                            <div class="form-group row">
                                                <label for="drpGroup" class="col-sm-3 col-form-label">Select Group</label>
                                                <div class="col-sm-9">
                                                    <asp:DropDownList ID="drpGroup" class="form-control" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="drpGroup_SelectedIndexChanged"></asp:DropDownList>
                                                </div>
                                            </div>


                                        </div>

                                        <div class="col-md-2">

                                            <button class="shortcut success" runat="server" type="button" id="bttnAssign" onserverclick="bttnAssign_click">
                                                <i class="icon-floppy"></i>
                                                Save
                                            </button>

                                        </div>

                                    </div>
                                    <br />
                                    <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>


               


                                    <div class="row">
                                        <div class="col-md-5">
                                            <label><b>Select Employees for the Group</b></label>
                                            <asp:Button ID="bttnSelectAll" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll_Click" />&nbsp;
                        <asp:Button ID="bttnDeselectAll" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll_Click" />
                                            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                            <asp:Button ID="bttnSAdd" runat="server" Text="+" CssClass="info" OnClick="bttnSAdd_click" /><br />
                                            <asp:Label ID="lblCount" runat="server" Text="" Font-Size="Smaller"></asp:Label>
                                            <asp:CheckBoxList CssClass="pCheck" ID="chkBoxEmployees" runat="server" AutoPostBack="True" OnTextChanged="chkBoxEmployees_TextChanged">
                                            </asp:CheckBoxList>
                                        </div>
                                               <div class="col-md-2">
                                                          <div class="text-center">

                                            <div>
                                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                               <asp:Button ID="bttnAdd" runat="server" Text=">" CssClass="success" OnClick="bttnAdd_Click" /><br />
                                            <asp:Button ID="bttnRemove" runat="server" Text="<" CssClass="warning" OnClick="bttnRemove_Click" /><br />
                                        </div>
                                                              </div>
                                                     </div>

                                   <div class="col-md-5">

                                 
                                         <div class="card" style="width: 18rem;">
                                      <div class="card-body">
                                        <h5 class="card-title">Selected Employees</h5>
                                        <h6 class="card-subtitle mb-2 text-muted"><b><asp:Label runat="server" id="lblselectedempcount" Text=""></asp:Label></b> Employees Found.</h6>
                                            <asp:Button ID="bttnSelectAll1" runat="server" Text="Select All" CssClass="info small" OnClick="bttnSelectAll1_Click" />&nbsp;
                        <asp:Button ID="bttnDeselectAll1" runat="server" Text="Deselect All" CssClass="info small" OnClick="bttnDeselectAll1_Click" />
                                            <asp:CheckBoxList CssClass="pCheck" ID="chkBoxSelectedEmp" runat="server">  </asp:CheckBoxList>
                          <%--                    <a href="#" class="card-link">Card link</a>
                                        <a href="#" class="card-link">Another link</a>--%>
                                      </div>
                         
                                         
                                            </div>
                                 
                                     
                                   </div>
                               
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                    <div class="frame" id="_page_2">
                        <legend>Search Employee Assigned Group</legend>
                        <%--<legend>Search Employee vs Group</legend>--%>
                        <asp:Panel ID="pnlSearch" runat="server"></asp:Panel>
                        <div class="grid">


                            <div class="row">

                                <div class="col-lg-7">
                                    <div class="form-group row">
                                        <label for="txtSearchEmployee" class="col-sm-3 col-form-label">Employee</label>
                                        <div class="col-sm-7">
                                            <asp:TextBox class="form-control" ID="txtSearchEmployee" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button ID="bttnSearch" runat="server" CssClass="warning" OnClick="bttnSearch_click" Text="Search" />
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-5">
                                </div>


                            </div>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                <div class="row">
                                    <asp:GridView ID="grdResults" runat="server" CellPadding="7" Width="50%" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
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

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>


                    <div class="frame" id="_page_3">
                        <legend>Supervisor Assign To Group</legend>

                        <div class="grid">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="form-group row">
                                        <label for="CompanyID_Sup" class="col-sm-3 col-form-label">Company<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList class="form-control" ID="CompanyID_Sup" runat="server" Width="400"></asp:DropDownList><br />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group row">
                                        <label for="txtSupervisor" class="col-sm-3 col-form-label">Supervisor<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtSupervisor" class="form-control" Width="400" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                </div>

                                <div class="col-lg-7">
                                    <div class="form-group row">
                                        <label for="drpGroup_Sup" class="col-sm-3 col-form-label">Group<sup class="fg-red">*</sup></label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList class="form-control" ID="drpGroup_Sup" runat="server" Width="400"></asp:DropDownList><br />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                </div>

                            </div>

                        </div>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="row">
                                    <button class="shortcut success" runat="server" id="bttnSave" type="button" onserverclick="bttnSave_click">
                                        <i class="icon-floppy"></i>
                                        Save</button>
                                    <br />
                                    <br />
                                    <asp:Panel ID="pnlMessages3" runat="server"></asp:Panel>
                                </div>
                                <div class="row">
                                    <asp:GridView ID="grdSupervisor" runat="server" CellPadding="7" Width="50%" CellSpacing="3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
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

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>

            </div>
    </div>

    </form>
</asp:content>
