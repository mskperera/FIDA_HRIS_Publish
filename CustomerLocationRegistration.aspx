<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CustomerLocationRegistration.aspx.cs" Inherits="Smarter_HRIS.CustomerLocationRegistration1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="css/sComponentStyles.css" rel="stylesheet" />

<%--    <script>

        function SearchValues() {

            // Declare variables 
            var input, filter, table, tr, td, i;
            input = document.getElementById("search1");
            filter = input.value.toUpperCase();
            table = document.getElementById("ContentPlaceHolder1_grdCustomerLoc");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            var ddl = document.getElementById("<%=dd_column.ClientID%>");
            var colIndex = ddl.selectedIndex;
            // alert(colIndex);
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[colIndex];
                if (td) {
                    if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>--%>



    <style>
        .ColumnSelectPanel {
            display: flex;
            margin: 10px;
            overflow: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <!--#region CutstLoc Delete Dialog  -->
        <div class="BackDrop" id="deletebackdrop" style="display: none">
            <div class="center">
                <div id="deletedialogbox" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p>Are you sure you want to delete this assigned shift?</p>
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

        <legend>Customer Location Registration</legend>

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
                            <label>Customer</label>
                            <label>Location Reg. No</label>
                            <label>System Ref. Code</label>
                            <label>Location Name</label>
                            <label>Address No</label>
                            <label>Street</label>


                        </div>
                        <div class="span4">

                            <asp:DropDownList ID="drpCustomer" Width="200" runat="server" AutoPostBack="True"></asp:DropDownList>

                            <asp:TextBox ID="txtLocRegNo" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtSystemRefcode" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtLocationName" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtAddressNo" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>

                        </div>

                        <div class="span2">
                            <label>City</label>
                            <label>District</label>
                            <label>Provinace</label>
                            <label>Country</label>
                        </div>

                        <div class="span2">
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtDisctrict" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtProvinace" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">

                        <div class="span4">
                            <button class="shortcut success" type="button" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                                <i class="icon-floppy"></i>
                                Save</button>
                            <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                                <i class="icon-new"></i>
                                New</button>
                        </div>

              
                            <div class="SearchPanel">
                                <div class="search-panel-container">
                                <div class="SetHorizontally">

                        <%--            <asp:DropDownList ID="dd_column" Width="200px" runat="server">
                                        <asp:ListItem Text="Customer" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="LocationReg. nNo" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="SystemRef. Code" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="LocationName" Value="3"></asp:ListItem>
                                    </asp:DropDownList>--%>
                              <%--      <input type="text" runat="server" class="form-control" id="search1"/>--%>
                                    <asp:TextBox CssClass="searchbox" ID="txtsearch" runat="server" OnTextChanged="txtsearch_TextChanged"></asp:TextBox>
                                    <asp:Button CssClass="sSearchButton" ID="btn_search" runat="server" Text="Search"  OnClick="btn_search_Click"/>
                                </div>
                                    </div>
                            </div>
                    
                    </div>
                    <div class="row">


                        <asp:GridView CssClass="table table-bordered table-hover table-striped" ID="grdCustomerLoc"
                            DataKeyNames="CustomerLocationID,CustomerRegistrationID" runat="server" AutoGenerateColumns="False"
                            PageSize="100" GridLines="Vertical" PageIndex="0" AllowPaging="true" AllowSorting="true"
                            PagerSettings-Position="TopAndBottom" OnRowCommand="grdBranch_RowCommand"
                            OnPageIndexChanging="grdSearch_PageIndexChanging">

                            <PagerStyle CssClass="gridview" BackColor="Transparent"></PagerStyle>
                            <EmptyDataTemplate>No Records Found. </EmptyDataTemplate>

                            <Columns>
                                <asp:BoundField DataField="CustomerLocationID" HeaderText="CustomerLocationID" Visible="False" />
                                <asp:BoundField DataField="CustomerRegistrationID" HeaderText="CustomerRegistrationID" Visible="False" />
                                <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
                                <asp:BoundField DataField="LocationRegistrationNo" HeaderText="LocationReg. nNo" />
                                <asp:BoundField DataField="SystemReferenceCode" HeaderText="SystemRef. Code" />


                                <asp:BoundField DataField="LocationName" HeaderText="LocationName" />
                                <asp:BoundField DataField="Address_No" HeaderText="Address_No" />
                                <asp:BoundField DataField="Address_Street" HeaderText="Street" />
                                <asp:BoundField DataField="Address_City" HeaderText="City" />
                                <asp:BoundField DataField="District" HeaderText="District" />
                                <asp:BoundField DataField="Provinace" HeaderText="Provinace" />
                                <asp:BoundField DataField="Country" HeaderText="Country" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />

                                        <asp:Button ID="DelButton" runat="server" type="button" OnClick="DelButton_Click" CssClass="danger mini" Text="Delete" />
                                    </ItemTemplate>

                                </asp:TemplateField>
                            </Columns>


                            <%--   <EditRowStyle BackColor="#2461BF" />--%>
                            <%--<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />--%>
                            <HeaderStyle BackColor="#555555" Font-Names="arial" ForeColor="White" />
                            <%--<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />--%>
                            <%--    <RowStyle BackColor="#EFF3FB" />--%>
                            <%--<SelectedRowStyle CssClass="SelectedRow" BorderWidth="2" Font-Names="arial" />--%>
                            <SortedAscendingCellStyle BackColor="#969696" />
                            <%-- <SortedAscendingHeaderStyle BackColor="#6D95E1" />--%>
                            <%--    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />--%>
                        </asp:GridView>

                    </div>
                </div>
                <asp:HiddenField ID="IsEdit" runat="server" />
                <asp:HiddenField ID="TableID" runat="server" />


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
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
</asp:Content>
