<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ConductInterview.aspx.cs" Inherits="Smarter_HRIS.ConductInterview1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtInterviewer.ClientID %>').autocomplete({
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
        <legend>Conduct Interview</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:Panel ID="pnlStart" runat="server">
            <div class="text-center">
                <asp:Label ID="Label1" runat="server" Text="Select Interviewer"></asp:Label>
                <asp:TextBox ID="txtInterviewer" runat="server"></asp:TextBox>
                <asp:Button ID="bttnSelect" runat="server" Text="Select" CssClass="info" OnClick="bttnSelect_click" />
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlContent" runat="server">
            <h2>
                <asp:Label ID="lblInterviewer" runat="server" Text="Label"></asp:Label></h2>
            <table>
                <tr>
                    <td>
                        <label>Company</label>
                    </td>
                    <td>&nbsp;:&nbsp<asp:DropDownList ID="drpCompany" runat="server" Width="200"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Job Opening</label>
                    </td>
                    <td>&nbsp;:&nbsp<asp:DropDownList ID="drpJobOpening" runat="server" Width="200"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Questionnaire</label>
                    </td>
                    <td>&nbsp;:&nbsp<asp:DropDownList ID="drpQuestionnaire" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="drpQuestionnaire_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Interview Level</label>
                    </td>
                    <td>&nbsp;:&nbsp<asp:TextBox ID="txtLevel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Candidate</label>
                    </td>
                    <td>&nbsp;:&nbsp<asp:DropDownList ID="drpCandidate" runat="server" Width="200"></asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="grdScoreCard" runat="server" AutoGenerateColumns="False" Width="850" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="7" CellSpacing="3" GridLines="Vertical" ShowFooter="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="QuestionNo" HeaderText="Question No" />
                    <asp:BoundField DataField="Question" HeaderText="Question / Cryteria" />
                    <asp:TemplateField HeaderText="Score">
                        <ItemTemplate>
                            <asp:TextBox ID="txtScore" Text='<%# Eval("Score") %>' Width="80" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MinMarks" HeaderText="Min Marks" />
                    <asp:BoundField DataField="MaxMarks" HeaderText="Max Marks" />
                    <asp:BoundField DataField="Weightage" HeaderText="Weightage %" />
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
            <asp:Button ID="bttnTotal" runat="server" Text="Calculate" CssClass="info small" OnClick="bttnTotal_Click" />
            <br />
            <br />
            <button class="shortcut success" id="bttnSubmit" runat="server" onserverclick="bttnSubmit_click">
                <i class="icon-floppy"></i>
                Submit
            </button>
        </asp:Panel>
    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
    <asp:HiddenField ID="HiddenID" runat="server" />
</asp:Content>
