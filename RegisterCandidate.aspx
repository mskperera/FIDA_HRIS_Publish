<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="RegisterCandidate.aspx.cs" Inherits="Smarter_HRIS.RegisterCandidate1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>Register Candidate</legend>
        <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
        <asp:HiddenField ID="lblUserID" runat="server" />
        <table>
            <tr>
                <td>
                    <label>Candidate No</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtCandidateNo" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>Passport No</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtPassportNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Gender</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpGender" runat="server" Width="200"></asp:DropDownList>
                </td>
                <td style="padding-left: 50px">
                    <label>Language</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpLanguage" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Title</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpTitle" runat="server" Width="200"></asp:DropDownList>
                </td>
                <td style="padding-left: 50px">
                    <label>Date Of Birth</label>
                </td>
                <td>&nbsp;:&nbsp;<input type="date" id="txtDOB" runat="server" name="FromDate" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Initials</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtInitials" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>Marital Status</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpMaritalStatus" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>First Name</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>Nationality</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpNationality" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Middle Name</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>Race</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpRace" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Last Name</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>Relegion</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpRelegion" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Name with Initials</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtNamewithInitials" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>Blood Group</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpBloodGroup" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Office Use Name</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtOfficeUseName" runat="server"></asp:TextBox>
                </td>
                <td style="padding-left: 50px">
                    <label>NIC No</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:TextBox ID="txtNICNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Distance From Work Place</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:DropDownList ID="drpDistanceFromWorkPlace" runat="server" Width="200"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Upload CV</label>
                </td>
                <td>&nbsp;:&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
        </table>
        <button class="shortcut success" id="bttnSave" runat="server" onserverclick="bttnSave_click">
            <i class="icon-floppy"></i>
            Save
        </button>


    </div>

    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
    <script>
        webshims.setOptions('forms-ext', { types: 'date' });
        webshims.polyfill('forms forms-ext');
    </script>
</asp:Content>
