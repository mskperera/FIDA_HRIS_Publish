<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="DownloadHRDetails.aspx.cs" Inherits="Smarter_HRIS.DownloadHRDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Download Employee Details</legend>
        <div class="grid">
              <asp:HiddenField ID="lblUserID" runat="server" />
            <div class="row">
                <div class="span2">
                    <label>Company<sup class="fg-red">*</sup></label>
                    <br />
                    <label>Category<sup class="fg-red">*</sup></label>
                </div>
                <div class="span3">
                    <asp:DropDownList ID="drpCompany" runat="server" Width="200"></asp:DropDownList><br />

                    <div class="span3" style="margin-left: 0px;">

                        <br />
                        <div class="input-control checkbox">
                            <label>
                                <input type="checkbox" id="chkIsEmployeeMaster" runat="server" />
                                <span class="check"></span>
                                Employee Master
                            </label>
                        </div>
                        <div class="input-control checkbox">
                            <label>
                                <input type="checkbox" id="chkIsAddressDetails" runat="server" />
                                <span class="check"></span>
                                Address Details
                            </label>
                        </div>
                    </div>
                </div>
                <div class="span3">
                    <div class="span3">
                        <br />
                        <br />
                        <div class="input-control checkbox">
                            <label>
                                <input type="checkbox" id="chkIsOfficialDetails" runat="server" />
                                <span class="check"></span>
                                Official Details
                            </label>
                        </div>
                        <div class="input-control checkbox">
                            <label>
                                <input type="checkbox" id="chkIsJobDetails" runat="server" />
                                <span class="check"></span>
                                Job Details
                            </label>
                        </div>
                    </div>
                </div>
            </div>
                  
            <div class="row">
                    <div class="span4">
                    <button class="shortcut info" runat="server" id="bttnDownload" onserverclick="bttnDownload_click">
                        <i class="icon-download"></i>
                        Download Excel</button>
                    <button class="shortcut warning" runat="server" id="bttnNew">
                        <i class="icon-new"></i>
                        New</button>
                </div>
                <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>
            </div>
        </div>
</asp:Content>
