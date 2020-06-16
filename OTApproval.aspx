<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="OTApproval.aspx.cs" Inherits="Smarter_HRIS.OTApproval1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <link href="bootstrap/build.css" rel="stylesheet" />


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

    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>


    <style>
        label {
            font-weight: normal;
        }
    </style>





    <script type="text/javascript">

        function SelectAllCheckboxes1(chk) {
            $('#<%=grdOT.ClientID%>').find("input:checkbox").each(function () {
                if (this != chk) { this.checked = chk.checked; }
            });
        }


    </script>

    <style>
        /*gridview*/
        .table table tbody tr td a,
        .table table tbody tr td span {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }

        .table table > tbody > tr > td > span {
            z-index: 3;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7;
        }

        .table table > tbody > tr > td:first-child > a,
        .table table > tbody > tr > td:first-child > span {
            margin-left: 0;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px;
        }

        .table table > tbody > tr > td:last-child > a,
        .table table > tbody > tr > td:last-child > span {
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }

        .table table > tbody > tr > td > a:hover,
        .table table > tbody > tr > td > span:hover,
        .table table > tbody > tr > td > a:focus,
        .table table > tbody > tr > td > span:focus {
            z-index: 2;
            color: #23527c;
            background-color: #eee;
            border-color: #ddd;
        }
        /*end gridview */
    </style>

    <style type="text/css">
        .smallSize {
            font-size: x-small;
        }
    </style>

    <style type="text/css">
        .card:hover,
        .card:hover {
            background-color: #e9f4ff;
        }

        .card,
        .card {
            background-color: #e1f0ff;
            /*font-weight:normal;*/
        }

            .card .card-body img {
                width: 120px;
                height: 120px;
                border-radius: 50%;
            }
    </style>

    <style>
        .form-group input[type="checkbox"] {
            display: none;
        }

            .form-group input[type="checkbox"] + .btn-group > label span {
                width: 20px;
            }

                .form-group input[type="checkbox"] + .btn-group > label span:first-child {
                    display: none;
                }

                .form-group input[type="checkbox"] + .btn-group > label span:last-child {
                    display: inline-block;
                }

            .form-group input[type="checkbox"]:checked + .btn-group > label span:first-child {
                display: inline-block;
            }

            .form-group input[type="checkbox"]:checked + .btn-group > label span:last-child {
                display: none;
            }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
 

            <div class="container">


                <legend>Daily OT Approvals</legend>
                <asp:HiddenField ID="lblUserID" runat="server" />
                <asp:HiddenField ID="approvalrowscount" runat="server" />
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>


                <div class="row">

                    <div class="form-inline">
                        <div class="controls-row">
                            <asp:RadioButton ID="radioByDivision" Text="By Division" runat="server" CssClass="pCheck" AutoPostBack="True" GroupName="A" OnCheckedChanged="RadioButton1_CheckedChanged" />
                            <span>&nbsp;&nbsp;</span>
                            <asp:RadioButton ID="radioByEmp" Text="By Employee" runat="server" CssClass="pCheck" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="A" />

                        </div>
                    </div>

                </div>

                <br />

                <div class="row">
                    <asp:Panel ID="pnlDivision" runat="server">


                        <div class="col-md-6">


                            <div class="form-group row">
                                <label for="ddlCompany" class="col-sm-2 col-form-label">Company</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="ddlCompany" CssClass="form-control" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="ddlDivision" class="col-sm-2 col-form-label">Division</label>
                                <div class="col-sm-10">

                                    <asp:DropDownList ID="ddlDivision" CssClass="form-control" runat="server" Width="200px" DataTextField="DivisionName" DataValueField="DivisionID" AutoPostBack="true" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="ddlEmployee" class="col-sm-2 col-form-label">Employee</label>
                                <div class="col-sm-10">

                                    <asp:DropDownList CssClass="form-control" ID="ddlEmployee" runat="server" Width="200px"></asp:DropDownList>
                                </div>
                            </div>


                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="drp_sessionDivision" class="col-sm-2 col-form-label">Session</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList CssClass="form-control" ID="drp_sessionDivision" runat="server" Width="200px" DataTextField="CompanyName" AutoPostBack="true" OnSelectedIndexChanged="drp_sessionDivision_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>

                            <br />

                            <div class="form-group row">
                                <label for="txtFromDate" class="col-sm-2 col-form-label">From Date</label>
                                <div class="col-sm-10">
                                    <input type="date" id="txtFromDate" runat="server" name="txtFromDate" />
                                </div>
                            </div>



                            <div class="form-group row">
                                <label for="txtToDate" class="col-sm-2 col-form-label">To Date</label>
                                <div class="col-sm-10">
                                    <input type="date" id="txtToDate" runat="server" name="txtToDate" />
                                </div>
                            </div>



                        </div>


                    </asp:Panel>
                </div>

                <div class="row">
                    <asp:Panel ID="pnlByEmployee" runat="server">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="txtEmployee" class="col-sm-2 col-form-label">Employee</label>
                                <div class="col-sm-10">
                                    <asp:TextBox CssClass="form-control" AutoPostBack="true" OnTextChanged="txtEmployee_TextChanged" ID="txtEmployee" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="dd_session" class="col-sm-2 col-form-label">Session</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList CssClass="form-control" ID="dd_session" runat="server" Width="200px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID" AutoPostBack="true" OnSelectedIndexChanged="dd_session_SelectedIndexChanged"></asp:DropDownList>

                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="dd_session" class="col-sm-2 col-form-label">From Date</label>
                                <div class="col-sm-10">
                                    <input type="date" id="txtFromDateE" runat="server" name="txtFromDate" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="dd_session" class="col-sm-2 col-form-label">To Date</label>
                                <div class="col-sm-10">
                                    <input type="date" id="txtToDateE" runat="server" name="txtToDate" />

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">

                            <div runat="server" id="profileimagecard">
                                <div class="card">
                                    <div class="card-body">
                                        <div style="padding: 5px; padding-top: 15px; padding-left: 15px;">
                                            <div class="row">

                                                <div class="col-md-3">
                                                    <p>
                                                        <img runat="server" id="profileimage" class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_01.png" alt="Employee image">
                                                    </p>
                                                </div>
                                                <div class="col-md-9">
                                                    <div>
                                                        <table style="background-color: transparent;">
                                                            <tr>
                                                                <td class="text-left">
                                                                    <label>
                                                                        <asp:Label CssClass="card-title" ID="Label5" runat="server" Text=""></asp:Label>
                                                                    </label>

                                                                </td>

                                                                <td>
                                                                    <asp:Label ID="lblEmpID" runat="server" Text="" Visible="false"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </asp:Panel>
                </div>







                <div class="row">
                    <div class="col-md-6">
                        <button class="shortcut warning" id="bttnSearch" type="button" runat="server"  onserverclick="bttnSearch_click">
                            <i class="icon-search"></i>
                            Search</button>

                        <button class="shortcut success" id="bttnApprove" type="button" runat="server" onserverclick="bttnApprove_click">
                            <i class="icon-auction"></i>
                            Approve
                        </button>

                        <button class="shortcut warning" id="btn_CancelApproval" type="button" runat="server" onserverclick="btn_CancelApproval_ServerClick">
                            <i class="icon-cancel-2"></i>
                            Cancel
                        </button>


                    </div>

                    <div class="col-md-6">
                        <div style="margin:0px 0px 10px 0px;">

                            <div runat="server" id="approvaldetailspanel">

                                <div class="card">
                                    <div class="card-body">
                                        <div style="padding:5px 5px 0px 10px">
                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                          <p style="margin:5px 0px 7px 0px; font-weight:bold;text-align:center">Approved Total</p>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:GridView CssClass="table table-bordered bs-table table-hover" ID="GVApproved" Width="100%"
                                                                runat="server" AutoGenerateColumns="False" CellPadding="0" CellSpacing="2" ForeColor="#333333"
                                                                GridLines="Vertical">
                                                                <HeaderStyle BackColor="#333333 " Font-Size="XX-Small" Font-Bold="false" ForeColor="White" />
                                                                <EmptyDataRowStyle ForeColor="#333333" CssClass="table table-bordered" />
                                                                <EmptyDataTemplate>No Approved Items Found. </EmptyDataTemplate>
                                                                <Columns>
                                                                    <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Rate" HeaderText="Rate" />
                                                                    <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Sum" HeaderText="Duration (hh:mm)" />
                                                                    <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Count" HeaderText="Rows" />

                                                                </Columns>
                                                            </asp:GridView>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                     <p style="margin:5px 0px 7px 0px; font-weight:bold;text-align:center">Pending Total</p>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:GridView CssClass="table table-bordered bs-table table-hover" ID="GVPending" Width="100%"
                                                                runat="server" AutoGenerateColumns="False" CellPadding="0" CellSpacing="2" ForeColor="#333333"
                                                                GridLines="Vertical">
                                                                <HeaderStyle BackColor="#333333" Font-Size="XX-Small" Font-Bold="false" ForeColor="White" />
                                                                <EmptyDataRowStyle ForeColor="#333333" CssClass="table table-bordered" />
                                                                <EmptyDataTemplate>No Pending Items Found. </EmptyDataTemplate>
                                                                <Columns>
                                                                    <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Rate" HeaderText="Rate" />
                                                                    <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Sum" HeaderText="Duration (hh:mm)" />
                                                                    <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Count" HeaderText="Rows" />


                                                                </Columns>
                                                            </asp:GridView>

                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="col-md-4">

                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div runat="server" id="rightpanel">
                                                                <div class="checkbox checkbox-success">
                                                                    <input id="approveallpages" runat="server" type="checkbox">
                                                                    <label id="Label1" runat="server" for="approveallpages">
                                                                        Select All Approvals
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div style="font-weight: 700;">



                                                                <asp:Label ID="lblapprovedtotal" Text="Amount:10000" runat="server"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="lblpendingtotal" Text="Amount:10000" runat="server"></asp:Label>

                                                                <br />
                                                                <asp:Label runat="server" ID="lblCount" Text="" />

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>



                                        </div>

                                    </div>







                                    <div class="primary">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-8">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <br />
                    <%--onrowdatabound="GridView1_RowDataBound"--%>



                    <div class="row">

                        <asp:GridView CssClass="table table-bordered bs-table table-hover" ID="grdOT"
                            OnRowDataBound="GridView1_RowDataBound"
                            OnPageIndexChanging="grdData_PageIndexChanging"
                            DataKeyNames="EmployeeID" Width="100%"
                            runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" PageSize="1000" ForeColor="#333333"
                            GridLines="Vertical" PageIndex="0" AllowPaging="true" PagerSettings-Position="TopAndBottom">
                            <HeaderStyle BackColor="#337ab7 " Font-Size="XX-Small" Font-Bold="false" ForeColor="White" />
                            <EditRowStyle BackColor="#ffffcc" />
                            <EmptyDataRowStyle ForeColor="Red" CssClass="table table-bordered" />
                            <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                            <Columns>

                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Width="400px" HeaderStyle-Font-Size="Small" DataField="Date" HeaderText="Date">
                                    <ControlStyle Width="200px" />
                                </asp:BoundField>

                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="EmployeeNo" HeaderText="Employee No" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Width="600px" HeaderStyle-Font-Size="Small" DataField="NameWithInitials" HeaderText="Employee Name">
                                    <ControlStyle Width="200px" />
                                </asp:BoundField>

                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="ShiftType" HeaderText="Shift Type" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="ShiftIN" HeaderText="Shift IN Time" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="ShiftOUT" HeaderText="Shift OUT Time" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="CheckIN" HeaderText="Check IN Time" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="CheckOUT" HeaderText="Check OUT Time" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="Rate" HeaderText="Rate" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="EarlyOT" HeaderText="Early OT" />
                                <asp:TemplateField HeaderStyle-Font-Size="Small" HeaderText="Approved Early OT (hh:mm)">
                                    <ItemTemplate>
                                        <asp:TextBox CssClass="textBox" ID="txtApprovedEOT" runat="server" Width="50" Text='<%# Eval("ApprovedEOT") %>'></asp:TextBox>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="Small" DataField="LateOT" HeaderText="Late OT (hh:mm)" />
                                <asp:TemplateField HeaderStyle-Font-Size="Small" HeaderText="Approved Late OT (hh:mm)">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtApprovedLOT" runat="server" Width="50" Text='<%# Eval("ApprovedLOT") %>'></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="DayOT" HeaderText="Day OT (hh:mm)" />
                                <asp:TemplateField HeaderStyle-Font-Size="Small" HeaderText="Approved Day OT (hh:mm)">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtApprovedDOT" runat="server" Width="50" Text='<%# Eval("ApprovedDOT") %>'></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Width="400px" HeaderStyle-Font-Size="Small" DataField="ShiftName" HeaderText="Shift" />
                                <asp:BoundField ItemStyle-Font-Size="Small" HeaderStyle-Font-Size="Small" DataField="OTApproval" HeaderText="OT Approved" />

                                <%--         <asp:BoundField DataField="ShiftID" HeaderText="Shift ID" />--%>

                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        Check All
                                <input id="Checkbox2" type="checkbox" onclick="SelectAllCheckboxes1(this)" runat="server" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ApproveCheckBox" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>



                            </Columns>

                        </asp:GridView>
                    </div>
                </div>

                <asp:HiddenField ID="HiddenField1" runat="server" />





            </div>


    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>

    <script>

        function CheckAll(oCheckbox) {
            var GridView2 = document.getElementById("<%=grdOT.ClientID %>");
            for (i = 1; i < GridView2.rows.length; i++) {
                GridView2.rows[i].cells[0].getElementsByTagName("INPUT")[0].checked = oCheckbox.checked;
            }
        }
    </script>
</asp:Content>
