<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="HNB.aspx.cs" Inherits="Smarter_HRIS.HNB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="row">
                            <div class="span2">
                                <label>Company<sup class="fg-red">*</sup></label>
                                <label>Session<sup class="fg-red">*</sup></label>
                            </div>
                            <div class="span3">
                                <asp:DropDownList ID="drpCompany1" runat="server" Width="200"></asp:DropDownList><br />
                                <asp:DropDownList ID="drpSession1" runat="server" Width="200"></asp:DropDownList>
                            </div>
                
                            <div class="span4">
                                <button class="shortcut primary" runat="server" id="bttnProcess" onserverclick="bttnProcess_click">
                                    <i class="icon-spin"></i>
                                    Process</button>
                                <%--<button class="shortcut info" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                                        <i class="icon-download"></i>
                                        Download Excel</button>
                                        <button class="shortcut info" runat="server" id="bttnUpload" onserverclick="bttnUpload_click">
                                        <i class="icon-upload"></i>
                                        Upload Excel</button>--%>
                            </div>

                        </div>
</asp:Content>
