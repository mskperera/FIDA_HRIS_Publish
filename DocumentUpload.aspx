<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="DocumentUpload.aspx.cs" Inherits="Smarter_HRIS.DocumentUpload1" %>

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
    <div class="container">
        <legend>Upload Employee Documents</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:HiddenField ID="lblHiddenURL" runat="server" />
        <asp:Panel ID="pnlMesssages" runat="server"></asp:Panel>

        <div id="pnlSelect" runat="server">
            <label>Select Employee</label>
            <asp:TextBox ID="txtSearchEmp" runat="server"></asp:TextBox>
            <asp:Button ID="bttnSearchEmp" runat="server" Text="Select Employee" CssClass="info" OnClick="bttnSearchEmp_Click" />
        </div>
       
        
        <asp:Panel ID="pnlDocuments" runat="server">
             <a class="element brand" href="#" onclick="history.go(-1);"><span class="icon-undo" onclick="history.go(-1);"></span> Back</a><br /><br />
            <asp:DropDownList ID="drpDocument" Width="250" Height="30" runat="server"></asp:DropDownList>
            <asp:Button ID="bttnSelectDocument" runat="server" Text="Select Document" CssClass="info" OnClick="bttnSelectDocument_Click" />
            <%--<asp:GridView ID="grdDocuments" runat="server" DataKeyNames="EmployeeDocumentID" onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="EmployeeDocumentID" HeaderText="Document ID" />
                        <asp:BoundField DataField="DocumentNumber" HeaderText="Document Number" />
                        <asp:BoundField DataField="IsseuedBy" HeaderText="Isseued By" />
                    </Columns>
                </asp:GridView>
                <asp:TextBox ID="txtSelectedDocument" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" CommandArgument="" CommandName="ThatBtnClick" OnClick="MyBtnHandler" />--%>
        </asp:Panel>

        <asp:Panel ID="pnlDocumentDetails" runat="server">

            <div class="grid">
                <div class="row">
                    <div class="span2">
                    <%--    <a class="tile bg-emerald" data-click="transform" onclick="lnkfilepath_Click()">
                            <div class="tile-content icon">
                                <span class="icon-file"></span>
                            </div>
                            <div class="brand">
                            </div>
                        </a>--%>
                          <button class="shortcut info" runat="server" id="bttnSearch1" onserverclick="lnkfilepath_Click">
                        <i class="icon-file"></i>
                        </button>
                        <br />
                        <asp:Label ID="lblDocument" runat="server" Text="No Documents" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </div>
                    <div class="span4">
                        <h2>Change/Add Document</h2>
                        <asp:Panel ID="pnlHeader" runat="server">
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                            <asp:Button ID="bttnUpload" runat="server" Text="Upload" OnClick="bttnUpload_Click" CssClass="success" />
                        </asp:Panel>
                    </div>
                    <div class="span3">
                        <label>Document Type</label>
                        <div class="input-control text">
                            <input type="text" value="" placeholder="" id="txtDocumentType" runat="server" disabled="disabled" />
                            <button class="btn-clear"></button>
                        </div>
                        <label>Document Name</label>
                        <div class="input-control text">
                            <input type="text" value="" placeholder="" id="txtDocumentNo" runat="server" disabled="disabled" />
                            <button class="btn-clear"></button>
                        </div>
                        <label>Issued By</label>
                        <div class="input-control text">
                            <input type="text" value="" placeholder="" id="txtIssuedBy" runat="server" disabled="disabled" />
                            <button class="btn-clear"></button>
                        </div>
                    </div>
                    <div class="span3">
                        <label>Issued Date</label>
                        <div class="input-control text">
                            <input type="text" value="" placeholder="" id="txtIssuedDate" runat="server" disabled="disabled" />
                            <button class="btn-clear"></button>
                        </div>
                        <label>Expiery Date</label>
                        <div class="input-control text">
                            <input type="text" value="" placeholder="" id="txtExpieryDate" runat="server" disabled="disabled" />
                            <button class="btn-clear"></button>
                        </div>
                    </div>

                </div>
            </div>

        </asp:Panel>

    </div>
</asp:Content>
