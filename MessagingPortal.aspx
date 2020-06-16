<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MessagingPortal.aspx.cs" Inherits="Smarter_HRIS.MessagingPortal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>My MailBox</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navigation-bar white">
    <div class="navigation-bar-content container">
                <div class="row">
                    <h3>Mail Portal (Beta Version)</h3>
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

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

<div class="grid container">

    <div class="row">
        <div class="span3">
            <nav class="sidebar light">
                                    <ul>
                                        <li class="title">Mail Box</li>
                                        <li class="stick bg-red" id="lblinbox" runat="server"><a runat="server" OnServerClick="Inbox_click"><i class="icon-box-add"></i>Inbox</a></li>
                                        <li class="stick bg-yellow" id="lbloutbox" runat="server"><a runat="server" onserverclick="Outbox_click"><i class="icon-box-remove"></i>Outbox</a></li>
                                        <li class="stick bg-cyan" id="lbldraft" runat="server"><a runat="server" onserverclick="Draft_click"><i class="icon-pencil"></i>Drafts</a></li>
                                        <li class="stick bg-green" id="lbljunk" runat="server"><a runat="server" onserverclick="Junk_click"><i class="icon-remove"></i>Junk Mails</a></li>
                                        <li class="stick bg-orange">
                                            <a class="dropdown-toggle" href="#"><i class="icon-key"></i>Important</a>
                                            <ul class="dropdown-menu" data-role="dropdown">
                                                <li><a href="#">Personal</a></li>
                                                <li><a href="#">Offical</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav><br />
            <a class="button bg-cyan fg-white large" href="ComposeMail.aspx">Compose Mail</a>

        </div>
        <div class="span11">
            <asp:Button ID="bttnPrevious" runat="server" CssClass="success" Text="<" OnClick="bttnPrevious_Click" />
            <asp:Button ID="bttnNext" runat="server" CssClass="success" Text=">" OnClick="bttnNext_Click" /><br />
            <asp:Label ID="lbltitle" runat="server" Font-Size="Large" Font-Italic="true" Font-Bold="true" Text=""></asp:Label><br />
            <asp:Panel ID="PnlInbox" runat="server">
                <asp:UpdateProgress ID="UpdateProgress1" class="text-center" runat="server">
                <ProgressTemplate>
                    <img src="Images/loading_bar.GIF" />
                </ProgressTemplate>
                </asp:UpdateProgress>  

            </asp:Panel>

 


        </div>
    </div>
</div>
            </ContentTemplate>
            </asp:UpdatePanel>     
</asp:Content>
