<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ComposeMail.aspx.cs" Inherits="Smarter_HRIS.ComposeMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Compose Mail</title>
    <script type="text/javascript">
        $(function () {
            $('#<%= txtToAddress.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames_SelfServicePortal_MessagingPortal",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $('#<%= txtCCAddress.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "SearchEmployee.asmx/GetEmployeeNames_SelfServicePortal_MessagingPortal",
                        data: "{ 'EmpName': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navigation-bar white">
    <div class="navigation-bar-content container">
        <a href="MessagingPortal.aspx" class="element"><span class="icon-mail"></span>&nbsp; Mail Box<sup></sup></a>
        <span class="element-divider"></span>

        

        <div class="no-tablet-portrait">
                        <span class="element-divider"></span>
                        <a class="element brand" href="#"><span class="icon-spin"></span></a>
                        <%--<a class="element brand" href="#"><span class="icon-printer"></span></a>--%>
                        <span class="element-divider"></span>

                        <%--<div class="element input-element">
                            <form>
                                <div class="input-control text">
                                    <input type="text" placeholder="Search..."/>
                                    <button class="btn-search"></button>
                                </div>
                            </form>
                        </div>--%>
                        <asp:Label ID="lblUserName" runat="server" class="element"></asp:Label>
                        <div class="place-right">
                            <asp:Label ID="lbluserMail" runat="server" class="element"></asp:Label>
                        &nbsp;</div>
                       
                        <span class="element-divider place-right"></span>
                        
                        <span class="element-divider place-right"></span>
                        
                    </div>
            <!--<span class="element-divider place-right"></span>-->
            <!--<div class="element place-right" title="GitHub Forks"><span class="icon-share-2"></span> <span class="github-forks">0</span></div>-->
        </div>          
</div>
    <div class="container">
                                    <fieldset>
                                        <legend><%--<span onclick="history.go(-1);"><i class="icon-arrow-left-3 fg-darker"></i></span> --%>Compose Mail</legend>
                                        <asp:Panel ID="Panel1" runat="server">
                                        </asp:Panel>
                        <div class="grid">
                            <div class="row">
                                <div class="span8">
                                    <label>To:</label>
                                        <div class="input-control text info-state span4" data-role="input-control">
                                            <input type="text" runat="server" id="txtToAddress" placeholder="Receiver's name"/>
                                            <button class="btn-clear" tabindex="-1"></button>
                                        </div>
                                        <%--<asp:DropDownList ID="drptoAddress" CssClass="span3" runat="server"></asp:DropDownList>&nbsp;
                                        <asp:Button ID="bttnSelectTo" CssClass="primary" runat="server" Text="Add" OnClick="bttnSelectTo_Click" />--%><br /><br />
                                    <label>Cc:</label>
                                        <div class="input-control text info-state span4" data-role="input-control">
                                            <input type="text" runat="server" id="txtCCAddress" placeholder="Copy mail to"/>
                                            <button class="btn-clear" tabindex="-1"></button>
                                        </div>
                                        <%--<asp:DropDownList ID="drpccAddress" CssClass="span3" runat="server"></asp:DropDownList>&nbsp;
                                        <asp:Button ID="bttnSelectCc" CssClass="primary" runat="server" Text="Add" OnClick="bttnSelectCc_Click" />--%><br /><br />
                                    <label>Subject:</label>
                                        <div class="input-control text info-state" data-role="input-control">
                                            <input type="text" runat="server" id="txtSubject" placeholder="Enter subject"/>
                                            <button class="btn-clear" tabindex="-1"></button>
                                        </div>
                                    <label>Body:</label>
                                    <div class="input-control textarea info-state">
                                        <textarea style="height:257px" runat="server" id="txtBody"></textarea>
                                    </div>
                                    


                                </div>
                                <div class="span6">
                                    <%--<div class="input-control checkbox" data-role="input-control">
                                            <label>
                                                <input type="checkbox"  />
                                                <span class="check"></span>
                                            </label>
                                        </div>

                                    <div class="accordion with-marker span5 place-left margin10" data-role="accordion" data-closeany="false">
                                    <div class="accordion-frame">
                                        <a class="heading ribbed-cobalt fg-white" href="#"><i class="icon-folder"></i>Attach File</a>
                                        <div class="content">
                                            Select file to attach:
                                            <div class="input-control file" data-role="input-control">
                                                <input type="file"/>
                                                <button class="btn-file"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div><br /> --%>
                                    <button class="shortcut success" runat="server" id="bttnSend" OnServerClick="Submit_click" type="button">
    	                                <i class="icon-upload"></i>
        	                                Send
  	                                </button>
                                    <button class="shortcut warning" runat="server" id="bttnSavetoDraft" OnServerClick="SavetoDraft_click" type="button">
    	                                <i class="icon-floppy"></i>
                                            Save to Drafts
  	                                </button>
                                    <button class="shortcut danger" runat="server" id="bttnDelete" OnServerClick="Delete_click" type="button">
    	                                <i class="icon-remove"></i>
                                            Delete
  	                                </button>
                                    <button class="shortcut info" runat="server" id="bttnBacktoMailBox" onclick="location.href='MessagingPortal.aspx'" type="button">
    	                                <i class="icon-undo"></i>
                                            Back to MailBox
  	                                </button>

                                    <script type="text/javascript">
                                        document.getElementById("txtToAddress").focus();
                                    </script>
                                    
                                </div>
                            </div>
                        </div>

                                        
                                    </fieldset>
                                

        <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>

</div>
</asp:Content>
