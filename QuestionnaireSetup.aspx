<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="QuestionnaireSetup.aspx.cs" Inherits="Smarter_HRIS.QuestionnaireSetup1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Questionnaire Setup</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="grid">
            <div class="row">
                <div class="span3">
                    <label>Job Opening</label>
                    <label>Questionnaire Name</label>
                </div>
                <div class="span6">
                    <asp:DropDownList ID="drpJobOpening" runat="server"></asp:DropDownList><br />
                    <asp:TextBox ID="txtQuestionnaireName" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="span5">
                    <label>Question / Criteria</label>
                    <asp:TextBox ID="txtQuestion" runat="server" Width="380"></asp:TextBox>
                </div>
                <div class="span2">
                    <label>Min Mark</label>
                    <asp:TextBox ID="txtMinMark" runat="server" Width="80"></asp:TextBox>
                </div>
                <div class="span2">
                    <label>Max Mark</label>
                    <asp:TextBox ID="txtMaxMark" runat="server" Width="80"></asp:TextBox>
                </div>
                <div class="span2">
                    <label>Weightage %</label>
                    <asp:TextBox ID="txtWeightage" runat="server" Width="80"></asp:TextBox>
                </div>
                <div class="span2">
                    <br />
                    <asp:Button ID="bttnAdd" runat="server" Text="Add" CssClass="info" OnClick="bttnAdd_Click" />
                </div>
            </div>
            <br />
            <asp:GridView ID="grdQuestion" runat="server" AutoGenerateColumns="False" Width="950" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="8" CellSpacing="2" GridLines="Vertical" OnRowDataBound="grdQuestion_RowDataBound" ShowFooter="True">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="QuestionNo" HeaderText="Question No" />
                    <asp:BoundField DataField="Question" HeaderText="Question / Cryteria" />
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
            <br />
            <button class="shortcut success" id="bttnSave" runat="server" onserverclick="bttnSave_click">
                <i class="icon-floppy"></i>
                Save
            </button>
        </div>



    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
