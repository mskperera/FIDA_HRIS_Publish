<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HierarchyVariableAdditionAssign.aspx.cs" Inherits="Smarter_HRIS.HierarchyVariableAdditionAssign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


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


    <style>
        .attendanceprogress {
            border: solid;
            padding: 10px;
            background-color: #e8f5ff;
            width: 300px;
            font-weight: bold;
        }
    </style>


    <style>
        Label {
            /*vertical-align: top;
            font-size: 15px;*/
            font-weight: normal;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />

        <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1">Downloads/ Uploads</a></li>
            <li><a href="#tab2">Variable Additions Details</a></li>
        </ul>

        <div class="tab-content">

            <div id="tab1" class="tab-pane fade in active">
                <br />
                <div style="font-weight: normal; font-size: large;">Downloads/ Uploads</div>
                <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>

                        <div class="container">
                            <div class="row">
                                <div class="col-md-8">

                                    <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
                                    <div class="grid">
                                        <div class="row">
                                            <div class="span2">
                                                <label>Company<sup class="fg-red">*</sup></label>
                                                <label>Session<sup class="fg-red">*</sup></label>
                                                <label>Variable Addition<sup class="fg-red">*</sup></label>
                                            </div>
                                            <div class="span3">
                                                <asp:DropDownList ID="drpCompany1" runat="server" Width="200" AutoPostBack="true" OnSelectedIndexChanged="drpCompany1_SelectedIndexChanged"></asp:DropDownList><br />
                                                <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList><br />
                                                <asp:DropDownList ID="drpAddition1" runat="server" Width="200"></asp:DropDownList>
                                            </div>
                                            <div class="span4">
                                                <button class="shortcut info" runat="server" type="button" id="bttnDownload" onserverclick="bttnDownload_click">
                                                    <i class="icon-download"></i>
                                                    Download Excel</button>
                                                <button class="shortcut info" visible="false" type="button" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">
                                                    <i class="icon-upload"></i>
                                                    Upload Excel</button>
                                            </div>




                                        </div>
                                        <div class="row">
                                            <asp:Panel ID="Panel1" runat="server">
                                                <div class="row text-center">
                                                    <div class="window flat shadow">
                                                        <label>
                                                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
                                                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                        </label>
                                                        <button class="info" id="bttnYes" type="button" runat="server" onserverclick="bttnYes_ServerClick">Yes</button>
                                                        <button class="danger" id="bttnNo" type="button" runat="server" onserverclick="bttnNo_ServerClick">No</button>
                                                    </div>
                                                </div>
                                            </asp:Panel>
                                        </div>





                                        <div class="row text-center">
                                            <div class="col-md-3 col-lg-3">
                                                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                            </div>

                                            <div class="col-md-3 col-lg-3">
                                                <button class="image-button primary" runat="server" id="Button1" onserverclick="bttnUploadExcel_click">
                                                    Upload <i class="icon-upload-3 bg-cobalt"></i>
                                                </button>
                                            </div>

                                            <asp:Panel ID="pnlUpload" runat="server">
                                                <div class="window flat shadow">


                                                    <br />
                                                    <br />
                                                    <asp:GridView ID="grdVariableAddUpload" DataKeyNames="EmployeeID,SessionID,AdditionID,CompanyID" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical">
                                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                                        <Columns>
                                                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                                            <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="False" />
                                                            <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                                            <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                                            <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                                            <asp:BoundField DataField="AdditionID" HeaderText="AdditionID" Visible="False" />
                                                            <asp:BoundField DataField="AdditionName" HeaderText="Addition Name" />
                                                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                            <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" Visible="False" />
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
                                                </div>

                                            </asp:Panel>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div id="detailpanel" runat="server">
                                        Data Uploaded ...
                                              <div  class="attendanceprogress">
                                                  <div style="color: black">

                                                      <table style="background-color: transparent; width: 300px;">
                                                          <tr>
                                                              <td>No Of Employees :</td>
                                                              <td style="font-weight: bold;">
                                                                  <asp:Label ID="lblnoofemployees" runat="server" Text="100"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td>Total Amount :</td>
                                                              <td>
                                                                  <asp:Label ID="lbltotalamount" runat="server" Text="205020"></asp:Label>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </div>
                                              </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </ContentTemplate>

                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
            </div>






            <div id="tab2" class="tab-pane fade">
                <br />
                <div style="font-weight: normal; font-size: large;">Variable Additions Details</div>

                <asp:UpdateProgress ID="UpdateProgress4" runat="server">
                    <ProgressTemplate>
                        <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>




                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">

                                    <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>

                                    <div class="grid">

                                        <div class="row">

                                            <div class="span2">
                                                <label>Employee<sup class="fg-red">*</sup></label>
                                                <label>Salary Session<sup class="fg-red">*</sup></label>
                                                <label>Addition Name<sup class="fg-red">*</sup></label>
                                                <label>Amount<sup class="fg-red">*</sup></label>
                                            </div>
                                            <div class="span4">
                                                <asp:TextBox ID="txtEmployee" AutoPostBack="true" OnTextChanged="txtEmployee_TextChanged" Width="400" runat="server"></asp:TextBox>
                                                <asp:DropDownList ID="drpSession" runat="server" Width="300"></asp:DropDownList><br />
                                                <asp:Label ID="lblSession" runat="server" Text="" Font-Bold="true" Width="200"></asp:Label>
                                                <asp:DropDownList ID="drpAddition" runat="server" Width="300"></asp:DropDownList>
                                                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <button class="shortcut success" runat="server" id="bttnSave" type="button" onserverclick="bttnSave_click">
                                                <i class="icon-floppy"></i>
                                                Save</button>
                                            <button class="shortcut warning" runat="server" id="bttnNew" type="button" onserverclick="bttnNew_click">
                                                <i class="icon-new"></i>
                                                New</button>
                                        </div>
                                        <div class="row">
                                            <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                                        </div>

                                        <div class="row">


                                            <div class="col-md-4">
                                                <div class="form-group-sm row">
                                                    <label for="txtEmpSearch" class="col-sm-2 col-form-label">Name</label>
                                                    <div class="col-sm-10">
                                                        <asp:TextBox CssClass="form-control" ID="txtEmpSearch" AutoPostBack="true" OnTextChanged="txtEmployee_SearchTextChanged" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>



                                            <div class="col-md-3">
                                                <div class="form-group-sm row">
                                                    <label for="drpAdditionsSearch" class="col-md-3 col-form-label">Allowance</label>
                                                    <div class="col-md-9">
                                                        <asp:DropDownList CssClass="form-control" ID="drpAdditionsSearch" runat="server" Width="200"></asp:DropDownList>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="col-md-4">


                                                <div class="form-group-sm row">
                                                    <label for="drpSessionSearch" class="col-md-2 col-form-label">Session</label>
                                                    <div class="col-md-10">
                                                        <asp:DropDownList CssClass="form-control" ID="drpSessionSearch" runat="server" Width="200"></asp:DropDownList>

                                                    </div>
                                                </div>

                                            </div>


                                            <div class="col-md-1">


                                                <div class="form-group-sm row">

                                                    <div class="text-center">
                                                        <asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large" OnClick="bttnSearch_click" />
                                                    </div>


                                                </div>


                                            </div>

                                        </div>

                                        <div class="row">

                                            <asp:GridView ID="grdVariableAddition" DataKeyNames="VariableAllowanceAssignID,SessionID,EmployeeID,AllowanceID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdVariableAddition_RowCommand">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="VariableAllowanceAssignID" HeaderText="VariableAllowanceAssignID" Visible="False" />
                                                    <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                                                    <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                                                    <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                                                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                                                    <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                                    <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="False" />
                                                    <asp:BoundField DataField="AllowanceName" HeaderText="Allowance Name" />
                                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                    <asp:TemplateField HeaderText="Actions">
                                                        <ItemTemplate>
                                                            <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
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
                                    </div>

                                    <asp:HiddenField ID="IsEdit" runat="server" />
                                    <asp:HiddenField ID="TableID" runat="server" />


                                </div>


                            </div>
                        </div>

                    </ContentTemplate>
                    <Triggers>
                    </Triggers>

                </asp:UpdatePanel>
            </div>


            <script>
                $(document).ready(function () {
                    $(".nav-tabs a").click(function () {
                        $(this).tab('show');
                    });
                });
            </script>

        </div>

    </div>

    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
