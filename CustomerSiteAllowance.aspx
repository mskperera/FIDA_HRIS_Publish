<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CustomerSiteAllowance.aspx.cs" Inherits="Smarter_HRIS.CustomerSiteAllowance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="css/sComponentStyles.css" rel="stylesheet" />
        <script type="text/javascript">
        $(function () {
            $('#<%= txtCustomerLocation.ClientID %>').autocomplete({
                    source: function (request, response) {
                        $.ajax({
                            url: "SearchEmployee.asmx/getAllCustomerSites",
                            data: "{'CustomerLocationName': '" + request.term + "' }",
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

               <!--#region Allowance Delete Selected Dialog  -->
        <div class="BackDrop" id="backdropDeleteSelected" style="display: none">
            <div class="center">
                <div id="dialogboxDeleteSelected" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p runat="server" id="UploadPromptMessage">Are you sure you want to delete this allowance?</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button CssClass="btn-yes" ID="btn_yes_deleteSelected"
                                runat="server" OnClick="btn_yes_deleteSelected_Click" Text="Yes" />
                            <button runat="server" class="btn-no" type="button"
                                id="btn_no_deleteAll" onclick="HideModelDeleteSelected()">
                                No</button>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <legend>Site Allowances</legend>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="lblUserID" runat="server" />
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <div class="grid">
                    <div class="row">
                        <div class="span2">
                            <label>Allowance  <sup class="fg-red">*</sup> </label>
                            <label>Customer Location  <sup class="fg-red">*</sup> </label>
                            <label>Rate <sup class="fg-red">*</sup> </label>
                            <label>D/M <sup class="fg-red">*</sup> </label>
                            <label>Gender <sup class="fg-red">*</sup> </label>
                                  <div class="sControllerFieldH">
                                    <div class="input-control checkbox">
                                        <label>
                                            <input type="checkbox" id="chkIsActive" checked="checked" runat="server" />
                                            <span class="check"></span>
                                            IsActive
                                        </label>
                                    </div>
                                </div>
                            <%--<label>Designation</label>--%>


                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpAllowance"  Width="400" runat="server"></asp:DropDownList>
                                  <asp:TextBox  ID="txtCustomerLocation" Width="400" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>

                            <asp:DropDownList ID="drp_D_M" Width="200" runat="server">
                                    <asp:ListItem Value="-2">--Select--</asp:ListItem>
                                <asp:ListItem Value="D">Daily</asp:ListItem>
                                <asp:ListItem Value="M">Monthly</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpGender" Width="200" runat="server"></asp:DropDownList>


                            <%--<asp:DropDownList ID="drpDesignation" Width="200" runat="server" AutoPostBack="True"></asp:DropDownList>--%>
                        </div>

                    </div>
                    <div class="row">
                        <button class="shortcut success" type="button" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        <asp:GridView ID="grdCustomerLoc" DataKeyNames="AllowanceMasterID,AllowanceID,CustomerLocationID,DesignationID" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="3" ForeColor="#333333" GridLines="None" OnRowCommand="grdBranch_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="AllowanceMasterID" HeaderText="AllowanceMasterID" Visible="False" />
                                <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" Visible="False" />
                                <asp:BoundField DataField="CustomerLocationID" HeaderText="CustomerLocationID" Visible="False" />
                                <asp:BoundField DataField="DesignationID" HeaderText="DesignationID" Visible="False" />

                                <asp:BoundField DataField="AllowanceName" HeaderText="AllowanceName" />
                                <asp:BoundField DataField="LocationName" HeaderText="Location Name" />
                                <asp:BoundField DataField="LocationRegistrationNo" HeaderText="LocationReg. nNo" />
                                <asp:BoundField DataField="Rate" HeaderText="Rate" />


                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                <asp:BoundField DataField="DailyMonthly" HeaderText="Daily/Monthly" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                 <asp:BoundField DataField="IsActive" HeaderText="Is Active" />
                           <%--     <asp:BoundField DataField="Designation" HeaderText="Designation" />--%>

                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" CssClass="primary danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" OnClick="DeleteButton_Click" />
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


                <script>
                    function ShowModelDeleteSelected() {
                        var x = document.getElementById("dialogboxDeleteSelected");
                        x.style.display = "block";
                        var bd = document.getElementById("backdropDeleteSelected");
                        bd.style.display = "block";
                    }
                    function HideModelDeleteSelected() {
                        var x = document.getElementById("dialogboxDeleteSelected");
                        x.style.display = "none";
                        var bd = document.getElementById("backdropDeleteSelected");
                        bd.style.display = "none";
                    }
                </script>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
</asp:Content>
