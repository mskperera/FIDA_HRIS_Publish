
<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AttendanceShiftReport.aspx.cs" Inherits="Smarter_HRIS.AttendanceShiftReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <link href="bootstrap/build.css" rel="stylesheet" />



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

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <legend>Attendance Shift Report</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:HiddenField ID="approvalrowscount" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

        <br />

        <div class="row">
            <div class="col-md-4">
                
                <div class="form-group row">
                    <label for="drpReport" class="col-sm-3 col-form-label">Report</label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="drpReport" CssClass="form-control" runat="server" Width="400px" DataTextField="ReportName" DataValueField="SP_Name" AutoPostBack="true" OnSelectedIndexChanged="drpReport_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
            </div>
       
            <div class="col-md-8">
            </div>
        </div>
         <br />
        <div class="row">
            <asp:Panel ID="pnlDivision" runat="server">


                <div class="col-md-6">
                    <div class="form-group row">
                        <label for="drpGroup" class="col-sm-3 col-form-label">Attendance Group</label>
                        <div class="col-sm-9">
              
            <asp:DropDownList ID="drpGroup" CssClass="form-control" runat="server" Width="400px"></asp:DropDownList>
              
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="drp_sessionDivision" class="col-sm-3 col-form-label">Employee Name </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtEmpSearch" Width="300px" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">


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

        <br />

        <div class="row">
            <div class="col-md-2">
                <button class="shortcut warning" id="bttnSearch" type="button" runat="server" onserverclick="bttnSearch_click">
                    <i class="icon-search"></i>
                    Search</button>
            </div>


            <div class="col-md-2">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/excel.png" Width="75px"
                    Height="85px" OnClick="exportexcel_ServerClick" />
                <br />
                  Export to Excel
            </div>

           
            <br />

            <div class="row">
                <asp:GridView CssClass="table table-bordered bs-table table-hover" ID="grdOT"
                    OnRowDataBound="GridView1_RowDataBound"
                    OnPageIndexChanging="grdData_PageIndexChanging"
                    Width="100%"
                    runat="server" AutoGenerateColumns="true" CellPadding="7" CellSpacing="3" PageSize="1000" ForeColor="#333333"
                    GridLines="Vertical" PageIndex="0" AllowPaging="true" PagerSettings-Position="TopAndBottom">
                    <HeaderStyle BackColor="#337ab7 " Font-Size="XX-Small" Font-Bold="false" ForeColor="White" />
                    <EditRowStyle BackColor="#ffffcc" />
                    <EmptyDataRowStyle ForeColor="Red" CssClass="table table-bordered" />
                    <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                    <Columns>
                    </Columns>

                </asp:GridView>
            </div>
        </div>

        <asp:HiddenField ID="HiddenField1" runat="server" />





    </div>


</asp:Content>
