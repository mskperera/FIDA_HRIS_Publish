<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="FixAdditions.aspx.cs" Inherits="Smarter_HRIS.FixAdditions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(function () {
            $('#<%= txtByEmp.ClientID %>').autocomplete({
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

    <%-- <style>
            .primary large{
            margin-bottom: 5px;
            }
            </style>--%>



<%--        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script src="https://unpkg.com/popper.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap-confirmation2/dist/bootstrap-confirmation.js"></script>
    <script src="https://use.fontawesome.com/5dfc29e1bc.js"></script>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
        <legend>Fix Additions</legend>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="grid">
            <div class="row">
                <div class="span2">
                    <asp:RadioButton ID="rdEmp" runat="server" Text="By Employee" GroupName="a1" OnCheckedChanged="rdEmp_CheckedChanged" AutoPostBack="True" />
                </div>
                <div class="span2">
                    <asp:RadioButton ID="rdGroup" runat="server" Text="By Group" GroupName="a1" OnCheckedChanged="rdGroup_CheckedChanged" AutoPostBack="True" />
                </div>
            </div>
            <asp:Panel ID="pnlEmp" runat="server">
                <div class="row">
                    <div class="span3">
                        <label>Search An Employee</label>
                    </div>
                    <div class="span5">
                        <asp:TextBox ID="txtByEmp" runat="server"></asp:TextBox>
                        <asp:Button ID="bttnSelectEmp" runat="server" Text="select" CssClass="mini primary" OnClick="bttnSelectEmp_click" />
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlGroup" runat="server">
                <div class="row">
                    <div class="span2">
                        <label>Search Group</label>
                    </div>
                    <div class="span5">
                        <asp:TextBox ID="txtByGroup" runat="server"></asp:TextBox>
                        <asp:Button ID="bttnSelectGroup" runat="server" Text="select" CssClass="mini primary" OnClick="bttnSelectGroup_click" />
                    </div>
                </div>
            </asp:Panel>
            <div class="row">
                <div class="span2">
                    <label>Employee/ Group<sup class="fg-red">*</sup></label>
                    <label>Addition Name<sup class="fg-red">*</sup></label>
                    <label>Amount<sup class="fg-red">*</sup></label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="drpAddition" runat="server" Width="200"></asp:DropDownList>
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                    <i class="icon-floppy"></i>
                    Save</button>
                <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                    <i class="icon-new"></i>
                    New</button>
 

            </div>
            <div class="row">
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
            </div>

            <div class="row">
                Name &nbsp; : &nbsp;
                <asp:TextBox ID="txtEmpSearch" runat="server"></asp:TextBox>
                &nbsp;&nbsp; Allowance &nbsp; : &nbsp;
                <asp:DropDownList ID="drpAdditionsSearch" runat="server" Width="200"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="bttnSearch" runat="server" Text="search" CssClass="primary large" OnClick="bttnSearch_click" Style="margin: 5px" />
                <br />
                <asp:GridView ID="grdFixAdditions" DataKeyNames="AllowancesFixAllID,EmployeeID,AllowanceID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdFixAdditions_RowCommand" OnRowDeleting="grdFixAddition_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="AllowancesFixAllID" HeaderText="AllowancesFixAllID" Visible="False" />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" Visible="False" />
                        <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" />
                        <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                        <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="False" />
                        <asp:BoundField DataField="AllowanceName" HeaderText="Addition Name" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" data-toggle="confirmation" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini"  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
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

    </div>

    <asp:HiddenField ID="IsEdit" runat="server" />
    <asp:HiddenField ID="TableID" runat="server" />


    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>





                <script>
                    console.log('Bootstrap ' + $.fn.popover.Constructor.VERSION);
                    console.log('Bootstrap Confirmation ' + $.fn.confirmation.Constructor.VERSION);

                    $('[data-toggle=confirmation]').confirmation({
                        rootSelector: '[data-toggle=confirmation]',
                        container: 'body'
                    });
                    $('[data-toggle=confirmation-singleton]').confirmation({
                        rootSelector: '[data-toggle=confirmation-singleton]',
                        container: 'body'
                    });
                    $('[data-toggle=confirmation-popout]').confirmation({
                        rootSelector: '[data-toggle=confirmation-popout]',
                        container: 'body'
                    });

                    $('#confirmation-delegate').confirmation({
                        selector: 'button'
                    });

                    $('[data-toggle=custom-confirmation-events]')
                      .confirmation({
                          rootSelector: '[data-toggle=custom-confirmation-events]',
                          container: 'body'
                      })
                      .on('mouseenter', function () {
                          $(this).confirmation('show');
                      })
                      .on('myevent', function () {
                          alert('"myevent" triggered');
                      });

                    $('#custom-confirmation').confirmation({
                        rootSelector: '#custom-confirmation',
                        container: 'body',
                        title: '',
                        onConfirm: function (value) {
                            alert('You choosed ' + value);
                        },
                        buttons: [
                          {
                              class: 'btn btn-danger',
                              iconClass: 'material-icons mr-1',
                              iconContent: 'directions_railway',
                              label: 'Railway',
                              value: 'Railway'
                          },
                          {
                              class: 'btn btn-primary',
                              iconClass: 'material-icons mr-1',
                              iconContent: 'directions_car',
                              label: 'Car',
                              value: 'Car'
                          },
                          {
                              class: 'btn btn-warning',
                              iconClass: 'material-icons mr-1',
                              iconContent: 'directions_boat',
                              label: 'Boat',
                              value: 'Boat'
                          },
                          {
                              class: 'btn btn-secondary',
                              iconClass: 'material-icons mr-1',
                              iconContent: 'cancel',
                              label: 'Cancel',
                              cancel: true
                          }
                        ]
                    });

                    $('#custom-confirmation-links').confirmation({
                        rootSelector: '#custom-confirmation-link',
                        container: 'body',
                        title: '',
                        buttons: [
                          {
                              label: 'Twitter',
                              iconClass: 'fa fa-twitter fa-lg mr-1',
                              attr: {
                                  href: 'https://twitter.com',
                                  target: '_blank'
                              }
                          },
                          {
                              label: 'Facebook',
                              iconClass: 'fa fa-facebook fa-lg mr-1',
                              attr: {
                                  href: 'https://facebook.com',
                                  target: '_blank'
                              }
                          },
                          {
                              label: 'Pinterest',
                              iconClass: 'fa fa-pinterest fa-lg mr-1',
                              attr: {
                                  href: 'https://pinterest.com',
                                  target: '_blank'
                              }
                          }
                        ]
                    });
</script>





</asp:Content>
