<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AttendanceView.aspx.cs" Inherits="Smarter_HRIS.AttendanceView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="grid">
            <div class="row">
                <div class="tile-group six" >
                    <a class="tile double bg-emerald" data-click="transform" href="AttendanceDisplay3.aspx">
                        <div class="tile-content icon">
                            <span class="icon-stats"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Attendance Display</div>
                        </div>
                    </a>
                    <a class="tile double bg-green" data-click="transform" href="SubbordinateAttendanceDisplay.aspx">
                        <div class="tile-content icon">
                            <span class="icon-user"></span>
                        </div>
                        <div class="brand">
                            <div class="label" style="font-size: 15px">Subordinate Attendance Display</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
