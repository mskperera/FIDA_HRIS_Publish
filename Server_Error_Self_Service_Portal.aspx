<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Server_Error_Self_Service_Portal.aspx.cs" Inherits="Smarter_HRIS.Server_Error_Self_Service_Portal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .labels {
            color: grey;
            width: auto;
            display: inline-block;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>

        <div>
            <h1 style="font-size: 72px; text-align: center;"><span class="mif-warning mif-ani-flash mif-ani-fast"></span>Oops !!!</h1>
            <h1 style="font-size: 50px; text-align: center; color: darkcyan">Something went wrong.</h1>
            <br />
            <br />
            <div align="center">
                <asp:Label CssClass="labels" ID="Label1" runat="server"> Error : </asp:Label>
                <asp:Label CssClass="labels" ID="lblError" runat="server">  </asp:Label>
            </div>
            <br />
            <div align="center">
                <a href="##" onclick="history.go(-1);">Go Back To Previous Page </a>
            </div>
        </div>
    </div>
</asp:Content>
