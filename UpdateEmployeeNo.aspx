<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="UpdateEmployeeNo.aspx.cs" Inherits="Smarter_HRIS.UpdateEmployeeNo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearch.ClientID %>').autocomplete({
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="lblUserID" Visible="false" Text="" runat="server"></asp:Label>
        <legend>Update Employee Number</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <br />

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Employee Name"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    

                    <div class="input-control password warning-state span4">
                        <asp:TextBox ID="txtSearch" runat="server"  ></asp:TextBox>
                        <asp:LinkButton ID="bttnSearch" runat="server" CssClass="btn-search" OnClick="bttnSearch_Click"></asp:LinkButton>
                    </div>
                    &nbsp;&nbsp;
                           <%--<button class="shortcut info" runat="server" id="bttnSearch1" onserverclick="bttnSubmit_Click">--%>
                    <%--     <i class="icon-search"></i>
                        Search</button>--%>
                </td>
            </tr>

        </table>
        <div id="seachPanel" runat="server">
            <table>
                <tr>
                    <td>
                        <br />
                    </td>
                    <td>&nbsp;&nbsp;
                    <br />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Current Employee Number"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                    <asp:Label ID="lblCurrentEmployeeNo" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Name With Initials"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                    <asp:Label ID="lblFullName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                    <asp:Label ID="lblGender" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="NIC"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                     <asp:Label ID="lblNIC" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Birth Date"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                    <asp:Label ID="lblBirthDate" runat="server"></asp:Label>
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="New Employee Number"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;

                             <script>
                                 function allowOnlyNumber(evt) {
                                     var charCode = (evt.which) ? evt.which : event.keyCode
                                     if (charCode > 31 && (charCode < 48 || charCode > 57))

                                         return false;
                                     return true;
                                 }
                         </script>

                    <asp:TextBox ID="txtNewNo" runat="server" onkeypress="return allowOnlyNumber(event);" ToolTip="Numbers must be entered"></asp:TextBox>
                    </td>

                </tr>

            </table>

            <br />
            <button class="shortcut primary" runat="server" id="bttnSaveAll" onserverclick="bttnSaveAll_click">

                <i class="icon-floppy"></i>
                Save</button>

            <button class="shortcut success" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                <%--onserverclick="bttnNew_click"--%>
                <i class="icon-new"></i>
                New</button>
        </div>
    </div>


</asp:Content>
