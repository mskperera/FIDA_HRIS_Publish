<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="Language_Translation.aspx.cs" Inherits="Smarter_HRIS.Language_Translation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>

    <style>
        .text-left {
            text-align: left;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }
    </style>
    <link href="css/sComponentStyles.css" rel="stylesheet" />
    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <br />


        <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                        <asp:HiddenField ID="hidden_UserID" runat="server" />
        <asp:HiddenField ID="hidden_selectedPhraseID" runat="server" />
            <asp:HiddenField ID="hidden_isEdit" runat="server" />

                   <!--#region Delete Translation Dialog  -->
        <div class="BackDrop" id="backdropDeletePhrase" style="display: none">
            <div class="center">
                <div id="dialogboxDeletePhrase" style="display: none;" class="DialogBox">
                    <div class="TitleBar">File Upload</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p runat="server" id="UploadPromptMessage">message</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button CssClass="btn-yes" ID="btnDeletePromptYes" type="button"
                                runat="server" OnClick="btnDeletePromptYes_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="btnUploadPromptNo" onclick="HideModelDeletePhrase()">
                                No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                <legend>Language Translations</legend>

                <div class="grid">
                    <div class="row">
                        <div class="col-md-12">
                        </div>

                    </div>


                    <div class="row">

                        <div class="col-md-10">

                            <div class="sSearchPanelH">
                                <div class="sControllerFieldH">
                                    <div class="lbl" style="width:200px">Primary Lanaguage </div>
                                    <asp:TextBox ID="txtPrimaryLang" ClientIDMode="Static" AutoPostBack="true" CssClass="sFormControl" runat="server"></asp:TextBox>
                                </div>


                                <div class="sControllerFieldH">
                                    <div class="lbl">Sinhala </div>
                                    <asp:TextBox ID="txtTransLangSinhala" ClientIDMode="Static" AutoPostBack="true" CssClass="sFormControl" runat="server"></asp:TextBox>

                                </div>



                                
                                    <div class="sControllerFieldH">
                                    <button class="sButton Search" runat="server" type="button" id="bttnSave" onserverclick="bttnSave_ServerClick">
                                Save
                            </button>
                                        </div>


                            </div>

                        </div>
                        <div class="col-md-12">
                                   <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>

                        </div>
                        </div>
                      
                    <div class="row">

                        <div class="col-md-10">
                                 <asp:GridView ID="grdLanguages" BorderWidth="1px" BorderStyle="Solid" GridLines="Vertical" BorderColor="LightGray" runat="server" DataKeyNames="PhraseID" Width="100%" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" OnRowCommand="grdLanguages_RowCommand">
                            <%--OnRowDeleting="grdLoanType_RowDeleting"--%>
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="PhraseID" HeaderText="PhraseID" Visible="False" />
                                <asp:BoundField DataField="English" HeaderText="English" />
                                <asp:BoundField DataField="Sinhala" HeaderText="Sinhala" />
                 
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                  <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                      <asp:Button ID="DeleteButton" OnClientClick="ShowModelDeletePhrase()" runat="server" CommandName="Delete" CssClass="primary danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                        </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle HorizontalAlign="Left" />
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
            </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnDeletePromptYes" />
       </Triggers>
        </asp:UpdatePanel>

    </div>

    <script>
        function ShowModelDeletePhrase() {
            var x = document.getElementById("dialogboxDeletePhrase");
            x.style.display = "block";
            var bd = document.getElementById("backdropDeletePhrase");
            bd.style.display = "block";
        }
        function HideModelDeletePhrase() {
            var x = document.getElementById("dialogboxDeletePhrase");
            x.style.display = "none";
            var bd = document.getElementById("backdropDeletePhrase");
            bd.style.display = "none";
        }
    </script>


</asp:Content>
