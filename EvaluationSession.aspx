<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EvaluationSession.aspx.cs" Inherits="Smarter_HRIS.EvaluationSession1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="css/sComponentStyles.css" rel="stylesheet" />
    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <div class="container">
        <legend>Evaluation Session</legend>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <asp:HiddenField ID="IsEdit" runat="server" />
        <asp:HiddenField ID="TableID" runat="server" />
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

        <!--#region Eval Delete Dialog  -->
        <div class="BackDrop" id="deletebackdrop" style="display: none">
            <div class="center">
                <div id="deletedialogbox" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p>Are you sure you want to delete this Evaluation Session?</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button ID="btn_yes" CssClass="btn-yes"
                                runat="server" OnClick="btn_yes_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="btn_no" onclick="HideDialogBox()">
                                No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <table>
                <tr>
                    <td>
                        <label>Session Name</label>
                    </td>
                    <td>&nbsp;:&nbsp<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>From Date</label>
                    </td>
                    <td>&nbsp;:&nbsp<input type="date" id="txtFromDate"  runat="server" name="txtFromDate" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>To Date</label>
                    </td>
                    <td>&nbsp;:&nbsp<input type="date" id="txtToDate" runat="server" name="txtToDate" />
                    </td>
                </tr>
            </table>
            <br />
            <button class="shortcut success" id="bttnSave" runat="server" type="button" onserverclick="bttnSave_click">
                <i class="icon-floppy"></i>
                Save
            </button>
        </div>

        <div style="margin-top: 10px" class="row">

            <div class="col-md-12">
                <asp:GridView CssClass="table table-bordered table-hover table-striped" ID="grdSearch"
                    DataKeyNames="SessionID" runat="server" AutoGenerateColumns="False"
                    PageSize="100" GridLines="Vertical" PageIndex="0" AllowPaging="true" AllowSorting="true"
                    PagerSettings-Position="TopAndBottom" OnRowDeleting="grdSearch_RowDeleting" OnRowCommand="grdSearch_RowCommand">

                    <PagerStyle CssClass="gridview" BackColor="Transparent"></PagerStyle>
                    <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>
                    <Columns>

                        <asp:BoundField DataField="SessionID" HeaderText="SessionID" Visible="False" />
                        <asp:BoundField DataField="SessionName" HeaderText="Session Name" />
                        <asp:BoundField DataField="FromDate" HeaderText="From Date"/>
                        <asp:BoundField DataField="ToDate" HeaderText="To Date"  />
                        <asp:TemplateField HeaderText="Actions">

                            <ItemTemplate>
                                <asp:Button ID="DelButton" runat="server" CommandName="Delete" type="button" OnClick="DelButton_Click" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                <div style="border-left: 1px white solid"></div>
                                <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />

                            </ItemTemplate>


                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#555555" Font-Names="arial" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#969696" />

                </asp:GridView>

            </div>


        </div>


    </div>

    <script>
        function ShowDialogBox() {
            var x = document.getElementById("deletedialogbox");
            x.style.display = "block";
            var bd = document.getElementById("deletebackdrop");
            bd.style.display = "block";
        }
        function HideDialogBox() {
            var x = document.getElementById("deletedialogbox");
            x.style.display = "none";
            var bd = document.getElementById("deletebackdrop");
            bd.style.display = "none";
        }
    </script>

    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
