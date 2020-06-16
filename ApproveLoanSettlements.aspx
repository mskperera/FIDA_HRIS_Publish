<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ApproveLoanSettlements.aspx.cs" Inherits="Smarter_HRIS.ApproveLoanSettlements" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <legend>Approve Loan Settlements</legend>
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="hiddenNotifyID" runat="server" />

                <div class="span6">
                    <td>&nbsp;&nbsp;<asp:Label ID="lblEmpID" runat="server" Text="" Visible="false"></asp:Label>
                             <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <label>
                                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                    </label>
                                </td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td class="auto-style2">
                                    <label>
                                        <asp:Label ID="Label10" class="fg-cyan" runat="server" Text="Description "></asp:Label>
                                    </label>
                                </td>
                                <td class="auto-style4">:</td>
                            </tr>
                        </table>
                        <br />
                        <div class="span7">
                            <asp:Panel ID="pnlCoveringPerson" runat="server"></asp:Panel>
                        </div>
                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                        <br />
                        <asp:Button ID="bttnApprove" runat="server" Text="Approve" CssClass="success" OnClick="bttnApprove_Click" />
                        <asp:Button ID="bttnReject" runat="server" Text="Reject" CssClass="warning" OnClick="bttnReject_Click" />
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
