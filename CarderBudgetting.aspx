<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CarderBudgetting.aspx.cs" Inherits="Smarter_HRIS.CarderBudgetting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
     
        <div class="tile-group six">
    <div class="tile-group-title fg-black">Carder Budgetting</div>
         
            <asp:HyperLink class="tile double bg-lime" data-click="transform"  NavigateUrl="CarderBudgettingSession.aspx" runat="server" id="A1">
                <div class="tile-content icon">
                    <span class="icon-calendar"></span>
                </div>
                <div class="brand">
                    <div class="label">Carder Budgetting Session</div>
                </div>
            </asp:HyperLink>
            <a class="tile double bg-green" data-click="transform" href="CarderBudgettingDetail.aspx" runat="server" id="A2">
                <div class="tile-content icon">
                    <span class="icon-cube"></span>
                </div>
                <div class="brand">
                    <div class="label">Carder Budgetting</div>
                </div>
            </a>
        </div>
        </div>
</asp:Content>
