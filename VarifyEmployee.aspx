<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="VarifyEmployee.aspx.cs" Inherits="Smarter_HRIS.VarifyEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <legend>Varify Employee Work</legend>
        <div class="row">
            <div>
                <asp:Panel ID="pnlMessages3" runat="server"></asp:Panel>
            </div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <label>
                            <asp:Label ID="Label8" class="" runat="server" Text="Supervisor Name"></asp:Label>
                        </label>
                    </td>
                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                    <td class="auto-style3">
                        <label>
                            <asp:Label ID="lblSupervisorName4" class="" runat="server" Text="Supervisor Name"></asp:Label>
                        </label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>
                            <asp:Label ID="Label23" class="" Style="" runat="server" Text="Section"></asp:Label>
                        </label>
                    </td>
                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                    <td class="auto-style3">
                        <label>
                            <asp:Label ID="lblSection4" class="" runat="server"></asp:Label>
                        </label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>

                </tr>
  <%--              <tr>
                    <td class="auto-style2">
                        <label>
                            <asp:Label ID="Label25" class="" runat="server" Text="Date"></asp:Label>
                        </label>
                    </td>
                    <td class="auto-style4-fg-cyan" style="width: 22px;">:</td>
                    <td class="auto-style3">
                        <label>
                            <input type="date" id="Date4" runat="server" name="txtFromDate" />

                        </label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
               <%-- <tr>
                    <td class="auto-style2">
                        <label>
                            <asp:Button ID="Button8" class="small info" runat="server" Text="Search" Width="60px" /> 
                   
                        </label>
                    </td>
                    <td class="auto-style4-fg-cyan" style="width: 22px;"></td>
                    <td class="auto-style3">
                        <label>
                        </label>
                    </td>
                    <td class="auto-style3">
                        <label>
                        </label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
            </table>

            <div class="content">
                <div class="grid">
                    <div class="row">
                        <table class='table striped bordered hovered'>
                            <thead class="bg-green fg-white">
                                <th>Emp No</th>
                                <th>Name</th>
                                <th></th>

                            </thead>

                            <tbody>
                                <asp:Panel ID="pnlLeaves" runat="server"></asp:Panel>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
