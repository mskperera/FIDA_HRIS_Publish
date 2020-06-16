<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CreateJobOpening.aspx.cs" Inherits="Smarter_HRIS.CreateJobOpening1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Create Job Opening</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <div class="grid">
            <div class="row">
                <div class="span7">
                    <div class="row">
                        <div class="span2">
                            <label>Job Title</label>
                        </div>
                        <div class="span5">
                            <div class="input-control text info-state">
                                <input type="text" id="txtJobTitle" runat="server" placeholder="" />
                                <button class="btn-clear"></button>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2">
                            <label>Job Description</label>
                        </div>
                        <div class="span5">
                            <div class="input-control textarea info-state">
                                <textarea id="txtJobDescription" runat="server"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2">
                            <label>Job Responsibilities</label>
                        </div>
                        <div class="span5">
                            <div class="input-control textarea info-state">
                                <textarea id="txtJobResponsibilities" runat="server"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2">
                            <label>Qualifications</label>
                        </div>
                        <div class="span5">
                            <div class="input-control textarea info-state">
                                <textarea id="txtQualifications" runat="server"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span6">
                    <div class="row">
                        <div class="span2">
                            <label>Opening Date</label>
                        </div>
                        <div class="span4">
                            <input type="date" id="txtOpeningDate" runat="server" name="OpeningDate" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2">
                            <label>Closing Date</label>
                        </div>
                        <div class="span4">
                            <input type="date" id="txtClosingDate" runat="server" name="ClosingDate" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2">
                            <label>Company Name</label>
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpCompanyName" runat="server" Width="300px" DataTextField="CompanyName" DataValueField="CompanyRegistrationID"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2">
                            <label>Contact Details</label>
                        </div>
                        <div class="span4">
                            <div class="input-control textarea info-state">
                                <textarea id="txtContactDetails" runat="server"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span2"></div>
                        <div class="span4">
                            <button class="shortcut success" runat="server" id="bttnCreate" onserverclick="bttnCreate_click">
                                <i class="icon-enter"></i>
                                Create
                            </button>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <%--<table>
                <tr>
                    <td>
                        <label>Job Title</label>
                    </td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Job Description</label>
                    </td>
                    <td>:</td>
                    <td>
                        <div class="input-control textarea">
                        <textarea id="txtJobDescription" runat="server"></textarea>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Job Responsibilities</label>
                    </td>
                    <td>:</td>
                    <td>
                        <div class="input-control textarea">
                        <textarea id="txtJobResponsibilities" runat="server"></textarea>
                        </div>
                    </td>
                </tr>
            </table>--%>
    </div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
