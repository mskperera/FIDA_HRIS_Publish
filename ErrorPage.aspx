<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Smarter_HRIS.ErrorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br /><br /><br /><br /><br /><br /><br /><br />
    </div>

    <div>
        <h1 style="font-size:72px;text-align:center;"><span class="mif-warning mif-ani-flash mif-ani-fast"></span>Oops !!!</h1>
        <h1 style="font-size:50px;text-align:center;color:darkcyan">Something went wrong.</h1>
        <br />
       <div align="center">
        <a href="##" onclick="history.go(-1);">Go Back To Previous Page </a>
           </div>
    </div>
</asp:Content>
