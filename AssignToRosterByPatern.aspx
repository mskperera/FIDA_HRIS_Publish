<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="AssignToRosterByPatern.aspx.cs" Inherits="Smarter_HRIS.AssignToRosterByPatern1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmpName.ClientID %>').autocomplete({
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
            $('#<%= txtGrpName.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetGroupNames_Sup ",
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







  <%--  <script type="text/javascript">


            function getProgress() {
 
                $.ajax({
          
                    url: "SearchEmployee.asmx/get_GroupAssignToShift_progress",
                    data: "{GroupName:'Day 6-2',FromDate:'2018-02-01',ToDate:'2018-02-07'}",
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {
                        // lblprogress
                        var element = document.getElementById('<%= lblprogress.ClientID %>');

                        element.innerHTML = data.d;
                       //jj alert(groupname);
                       // var element3 = document.getElementById('<%= lblprogress.ClientID %>').innerHTML;

                    },
                    complete: function () {
                        // Schedule the next request when the current one's complete
                          setTimeout(getProgress, 1000);
                    },
                    error: function (result) {
                        alert('There is a problem processing your request');
            
                    }
                });

            };

    </script>--%>





    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }

        .auto-style1 {
            width: 58px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:HiddenField ID="lblUserID" runat="server" />
          <asp:HiddenField ID="hidden_groupname" runat="server" />
        <legend>Assign Roster By Pattern</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <div class="input-control radio">
            <label>
                <asp:RadioButton GroupName="empgroup" AutoPostBack="true" ID="radioByEmp" runat="server" OnCheckedChanged="radio_By_Employee_CheckedChanged" />
                <span class="check"></span>
                By Employee
            </label>
        </div>
        <div class="input-control radio">
            <label>
                <asp:RadioButton GroupName="empgroup" AutoPostBack="true" ID="radioByGrp" runat="server" OnCheckedChanged="radio_By_Group_CheckedChanged" />
                <span class="check"></span>
                By Group
            </label>
        </div>

        <%--<div class="input-control radio">
            <label>
                <input id="radioByEmp" type="radio" name="a1" runat="server"  onclick="<%enableEmployee();%>" />
                <span class="check"></span>
                By Employee
            </label>
        </div>
        <div class="input-control radio">
            <label>
                <asp:RadioButton GroupName="groupname" ID="RadioButton2" runat="server" />
                <input id="radioByGrp" type="radio" name="a1" runat="server" />
                <span class="check"></span>
                By Group
            </label>
        </div>--%>
        <%--        &nbsp;&nbsp;
            <asp:Button ID="bttnSelect" runat="server" Text="Select" CssClass="primary" OnClick="bttnSelect_Click" />--%>
        <br />
        <%--    <asp:Panel ID="pnlEmployee" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Select Employee"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByEmployee" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectEmployee" runat="server" CssClass="warning" Text="Select" OnClick="bttnSelectEmployee_click" />
        </asp:Panel>
        <asp:Panel ID="pnlGroup" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Select Group"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtByGroup" runat="server"></asp:TextBox>&nbsp;&nbsp;
                    <asp:Button ID="bttnSelectGroup" runat="server" CssClass="warning" Text="Select" OnClick="bttnSelectGroup_click" />
        </asp:Panel>--%>

        <div class="grid">
            <div class="row">

                <div class="span5">

                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_emp" runat="server" Text="Employee"></asp:Label>
                                <asp:Label ID="lbl_grp" runat="server" Text="Group Name"></asp:Label>
                            </td>
                            <td class="auto-style1"></td>
                            <td>
                                <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtGrpName" runat="server"></asp:TextBox>

                            </td>


                            <td>

                               
                            </td>
                        </tr>
                        <tr>
                            <td>From Date
                            </td>
                            <td class="auto-style1"></td>
                            <td>
                                <input type="date" id="txtFromDate" runat="server" name="FromDate" />
                            </td>




                            <td></td>
                        </tr>
                        <tr>
                            <td>To Date
                            </td>
                            <td class="auto-style1"></td>
                            <td>
                                <input type="date" id="txtToDate" runat="server" name="ToDate" />
                            </td>


                            <td></td>
                        </tr>
                        <tr>
                            <td>Is Active Shift
                            </td>
                            <td class="auto-style1"></td>
                            <td>
                                <div class="input-control checkbox">
                                    <label>
                                        <input type="checkbox" id="chkIsActive" runat="server" />
                                        <span class="check"></span>
                                        IsActive
                                    </label>
                                </div>
                            </td>



                            <td>

                              <%--  <asp:Label ID="lblprogress" runat="server" Text="Label"></asp:Label>--%>
                   
                            </td>
                        </tr>
                    </table>


                </div>




                <div class="span6">
                    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Monday</label>--%>
                    <asp:CheckBox ID="chkDay1" CssClass="pCheck" Text=" Day 1" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay1_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpMon4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Tuesday</label>--%>
                    <asp:CheckBox ID="chkDay2" CssClass="pCheck" Text=" Day 2" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay2_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpTue4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Wednesday</label>--%>
                    <asp:CheckBox ID="chkDay3" CssClass="pCheck" Text=" Day 3" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay3_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpWed4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Thursday</label>--%>
                    <asp:CheckBox ID="chkDay4" CssClass="pCheck" Text=" Day 4" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay4_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpThu4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Friday</label>--%>
                    <asp:CheckBox ID="chkDay5" CssClass="pCheck" Text=" Day 5" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay5_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpFri4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Saturday</label>--%>
                    <asp:CheckBox ID="chkDay6" CssClass="pCheck" Text=" Day 6" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay6_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSat4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3">
                    <%--<label>Sunday</label>--%>
                    <asp:CheckBox ID="chkDay7" CssClass="pCheck" Text=" Day 7" runat="server" AutoPostBack="True" OnCheckedChanged="chkDay7_CheckedChanged" />
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun1" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun2" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun3" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="span2">
                    <asp:DropDownList ID="drpSun4" runat="server" Width="150px"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="span3"></div>
                <div class="span2">
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkSkipSaturday" runat="server" />
                            <span class="check"></span>
                            Skip Saturday
                        </label>
                    </div>
                </div>
                <div class="span2">
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkSkipSunday" runat="server" />
                            <span class="check"></span>
                            Skip Sunday
                        </label>
                    </div>
                </div>
                <div class="span2">
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkSkipHoliday" runat="server" />
                            <span class="check"></span>
                            Skip Holiday
                        </label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="span3"></div>
                <div class="span3">
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkSkipSpecialSaturday" runat="server" />
                            <span class="check"></span>
                            Skip Special Saturday
                        </label>
                    </div>
                </div>
                <div class="span3">
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkSkipSpecialSunday" runat="server" />
                            <span class="check"></span>
                            Skip Special Sunday
                        </label>
                    </div>
                </div>
                <div class="span3">
                    <div class="input-control checkbox">
                        <label>
                            <input type="checkbox" id="chkSkipSpecialHoliday" runat="server" />
                            <span class="check"></span>
                            Skip Special Holiday
                        </label>
                    </div>
                </div>
            </div>

            <div class="row">
                <button class="shortcut success" runat="server" id="bttnAssign" onserverclick="bttnAssign_click">
                    <i class="icon-enter"></i>
                    Assign</button>

                <button class="shortcut success" runat="server" id="bttnAssign_fast" onserverclick="bttnAssign_fast_ServerClick">
                    <i class="icon-enter"></i>
                    Assign Fast</button>

                <button class="shortcut defalut" runat="server" id="btn_new" onserverclick="btn_new_ServerClick">
                    <i class="icon-new"></i>
                    New Assign</button>

                <%--<button class="shortcut warning" runat="server" id="bttnDelete">
                        <i class="icon-remove"></i>
                        Delete
                    </button>--%>
            </div>


        </div>

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
</asp:Content>
