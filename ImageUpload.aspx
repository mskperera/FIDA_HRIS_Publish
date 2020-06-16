<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ImageUpload.aspx.cs" Inherits="Smarter_HRIS.ImageUpload1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtSearchEmp.ClientID %>').autocomplete({
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
    <asp:HiddenField ID="lblUserID" runat="server" />
    <div class="container">
        <legend>Upload Images</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <label>Select Employee</label>
        <asp:TextBox ID="txtSearchEmp" runat="server"></asp:TextBox>
        <%--<asp:TextBox ID="txtFullname" runat="server" ></asp:TextBox>--%>
        <asp:Button ID="bttnSearchEmp" runat="server" Text="Select Employee" CssClass="info" OnClick="bttnSearchEmp_Click" />



        <asp:Panel ID="Panel1" runat="server">

            <div class="grid">
                <div class="row">
                    <div class="span3">
                        <asp:Image ID="Image1" runat="server" Height="200" Width="200" /><br />
                    </div>
                    <div class="span6">
                        <h2>Change/Add Image</h2>
                        <asp:Panel ID="pnlHeader" runat="server">
                            <%--<label>Upload Image</label>--%><br />
                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                            <asp:Button ID="bttnUpload" runat="server" Text="Upload" OnClick="bttnUpload_Click" CssClass="success" />
                        </asp:Panel>
                    </div>
                </div>
            </div>

        </asp:Panel>

    </div>
</asp:Content>
