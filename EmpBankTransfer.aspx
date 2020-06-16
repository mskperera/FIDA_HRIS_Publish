<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmpBankTransfer.aspx.cs" Inherits="Smarter_HRIS.EmpBankTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%= txtEmployee1.ClientID %>').autocomplete({
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
        <legend>Employee Bank Transfer</legend>

        <asp:HiddenField ID="lblUserID" runat="server" />
        
        <label>Employee<sup class="fg-red">*</sup></label>
        <%--      <asp:TextBox ID="txtEmployee" runat="server"></asp:TextBox>--%>
        <asp:TextBox ID="txtEmployee1" runat="server" Width="300"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <div class="grid">
                    <div class="row">
                        <div class="span5">
                            <asp:HiddenField ID="hiddenempno" runat="server" />
                            <asp:Label ID="lblEmployee" runat="server" Text=""></asp:Label>
                            <label>Name as in Bank<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtNameasinBank" runat="server" Width="250"></asp:TextBox>
                            <label>Bank Name<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpBank" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpLoanType_SelectedIndexChanged"></asp:DropDownList>
                            <label>Branch Name<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpBranch" Width="250" runat="server"></asp:DropDownList>
                            <label>Account Type<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpAccType" Width="250" runat="server"></asp:DropDownList>
                            <label>Account No<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtAccountNo" runat="server" Width="250"></asp:TextBox>
                            <label>Account Name<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtAccountName" runat="server" Width="250"></asp:TextBox>
                        </div>
                        <div class="span5">
                            <label>Pay Type<sup class="fg-red">*</sup></label>
                            <asp:DropDownList ID="drpPayType" Width="200" runat="server"></asp:DropDownList>
                            <label>Amount<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                            <label>Percentage<sup class="fg-red">*</sup></label>
                            <asp:TextBox ID="txtPercentage" runat="server"></asp:TextBox>
                            <label>Priority Level<sup class="fg-red">*</sup><sup class="fg-grayDark">1,2,3...</sup></label>
                            <asp:TextBox ID="txtPriority" runat="server"></asp:TextBox>
                            <label>Stop If Not Sufficient</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkStopIfNotSufficient" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                        </div>
                        <div class="span4">
                            <label>Permanantly Stop</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkPermanantlyStop" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>Auto Stop On Maturity</label>
                            <div class="input-control switch">
                                <label>
                                    <input id="chkStopOnMaturity" runat="server" type="checkbox" />
                                    <span class="check"></span>
                                </label>
                            </div>
                            <label>From Date<sup class="fg-red">*</sup></label>
                            <input type="date" id="txtFromDate" runat="server" name="txtFromDate" style="width: 198px;" />
                            <label>To Date</label>
                            <input type="date" id="txtToDate" runat="server" name="txtToDate" style="width: 198px;" />
                            <label>Remarks</label>
                            <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <button class="shortcut success" runat="server" id="bttnSave" onserverclick="bttnSave_click">
                            <i class="icon-floppy"></i>
                            Save</button>
                        <button class="shortcut warning" runat="server" id="bttnNew" onserverclick="bttnNew_click">
                            <i class="icon-new"></i>
                            New</button>
                    </div>
                    <div class="row">
                        <asp:GridView ID="grdBankTransfer" DataKeyNames="EmployeeBankTransferID,EmployeeMasterID,BankRegistrationID,BranchRegistrationID,EmpBankAccountTypeID,EmpPayTypeID,Amount,Percentage,PriorityLevel,StopIfNotSufficient,PermrnantlyStop,AutoStopOnMaturity,FromDate,ToDate,Remarks,NameAsInBank,EmployeeNo" runat="server" AutoGenerateColumns="False" CellPadding="7" CellSpacing="4" ForeColor="#333333" GridLines="None" OnRowCommand="grdBankTransfer_RowCommand" OnRowDeleting="grdBankTransfer_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmployeeBankTransferID" HeaderText="EmployeeBankTransferID" Visible="False" />
                                <asp:BoundField DataField="EmployeeMasterID" HeaderText="EmployeeMasterID" Visible="False" />
                                <asp:BoundField DataField="EmployeeNo" HeaderText="Employee No" Visible="true" ItemStyle-Width="30px">
                                    <ControlStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NameWithInitials" HeaderText="Employee Name" />
                                <asp:BoundField DataField="BankRegistrationID" HeaderText="BankRegistrationID" Visible="False" />
                                <asp:BoundField DataField="BankName" HeaderText="Bank Name" />
                                <asp:BoundField DataField="BranchRegistrationID" HeaderText="BranchRegistrationID" Visible="False" />
                                <asp:BoundField DataField="BranchName" HeaderText="Branch Name" />
                                <asp:BoundField DataField="EmpBankAccountTypeID" HeaderText="EmpBankAccountTypeID" Visible="False" />
                                <asp:BoundField DataField="AccountType" HeaderText="Account Type"  ItemStyle-Width="100px"/>
                                <asp:BoundField DataField="AccountNo" HeaderText="Account No" />
                                <asp:BoundField DataField="Account_Name" HeaderText="Account Name" />
                                <asp:BoundField DataField="EmpPayTypeID" HeaderText="EmpPayTypeID" Visible="False" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" Visible="False" />
                                <asp:BoundField DataField="Percentage" HeaderText="Percentage" Visible="False" />
                                <asp:BoundField DataField="PriorityLevel" HeaderText="PriorityLevel" Visible="False" />
                                <asp:BoundField DataField="StopIfNotSufficient" HeaderText="StopIfNotSufficient" Visible="False" />
                                <asp:BoundField DataField="PermrnantlyStop" HeaderText="PermrnantlyStop" Visible="False" />
                                <asp:BoundField DataField="AutoStopOnMaturity" HeaderText="AutoStopOnMaturity" Visible="False" />
                                <asp:BoundField DataField="FromDate" HeaderText="FromDate" Visible="False" />
                                <asp:BoundField DataField="ToDate" HeaderText="ToDate" Visible="False" />
                                <asp:BoundField DataField="Remarks" HeaderText="Remarks" Visible="False" />
                                <asp:BoundField DataField="NameAsInBank" HeaderText="NameAsInBank" Visible="False" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="DelButton" runat="server" CommandName="Delete" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
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

            </ContentTemplate>
        </asp:UpdatePanel>

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
        <script>
            webshims.setOptions('forms-ext', { types: 'date' });
            webshims.polyfill('forms forms-ext');
        </script>
    </div>
</asp:Content>
