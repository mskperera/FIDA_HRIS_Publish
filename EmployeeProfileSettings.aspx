<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeProfileSettings.aspx.cs" Inherits="Smarter_HRIS.EmployeeProfileSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        .pCheck label {
            display: inline-block;
            margin-left: 5px;
        }
    </style>

    <style>
        .text-left {
            text-align: left;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }
    </style>


    <script runat="server">
        protected void RadioButton_CheckedChanged(object sender, System.EventArgs e)
        {
            if (rbEmpNo.Checked == true)
            {
                prefixSearch.InnerText = rbEmpNo.Text;
            }
            else
            {
                prefixSearch.InnerText = rbOfficeID.Text;
            }
        }
    </script>

    <%--  <script>
        function SelectSearchcolumn(vv) {
          
            document.getElementById('<%=prefixSearch.ClientID %>').innerHTML = vv;
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <progresstemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </progresstemplate>
        </asp:UpdateProgress>
        <br />
        <asp:HiddenField ID="hidden_UserID" runat="server" />
        <asp:HiddenField ID="hidden_selectedcheckbox" runat="server" />

        <div class="tab-control" data-role="tab-control" data-effect="fade">
            <ul class="tabs">
                <li class="active"><a href="#_page_1">Employee Search</a></li>
                <li><a href="#_page_2">Employee Profile Custom Fields</a></li>

            </ul>

            <div class="frames">
                <%-- Apply Leaves Tab --%>
                <div class="frame" id="_page_1">
                    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                        <contenttemplate>
                                <legend>Employee Search Values</legend>

                                <div class="grid">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div >
                                                <div style="margin:10px">

                                           
                                              <div style="font-size:16px;margin:10px;">
                                                    <span runat="server" id="prefixSearch">[EmployeeNo]</span> | <span>[NameWithInitials]</span>
                                               
                                              </div> 
                                                      <div runat="server" id="radiobuttonPanel" style="display:flex; padding:5px">
                                         
                                                                  <div style="margin:5px">
                                                            <asp:RadioButton         
                                                                 ID="rbEmpNo" 
                                                                 runat="server"
                                                                 Text="EmployeeNo"
                                                                 GroupName="Controls"
                                                                 OnCheckedChanged="RadioButton_CheckedChanged"
                                                                 AutoPostBack="true"
                                                                 />
                                                                   </div>

                                                               <div style="margin:5px">
                                                            <asp:RadioButton 
                                                                 ID="rbOfficeID" 
                                                                 runat="server"
                                                                 Text="OfficeID"
                                                                 GroupName="Controls"
                                                                 OnCheckedChanged="RadioButton_CheckedChanged"
                                                                 AutoPostBack="true"
                                                                 />
                                                                </div>
                                                            </div>
                                               
                                                </div>


                                                </div>
                                  </div>
                                 
                                    </div>

                                    <div class="row">

                                  

                                                <div class="col-md-2">
                                            <button class="shortcut success" runat="server" type="button" id="bttnSave" onserverclick="bttnSave_ServerClick">
                                                <i class="icon-floppy"></i>
                                                Save
                                            </button>

                                        </div>
                                    </div>
                                    <br />
                                       <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                                </div>
                            </contenttemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="frame" id="_page_2">
                    <legend>Employee Profile Custom Fields</legend>
                    <%--<legend>Search Employee vs Group</legend>--%>
                    <asp:Panel ID="pnlSearch" runat="server"></asp:Panel>
                    <div class="grid">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <contenttemplate>

                                    <div class="row">
                                    </div>

                                </contenttemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>
</asp:Content>
