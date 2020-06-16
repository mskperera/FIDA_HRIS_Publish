<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EmployeeDesktop.aspx.cs" Inherits="Smarter_HRIS.EmployeDesktop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>My Desktop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="grid">
    <div class="row">
        <div class="span4">
            <%--<img src="images/employee_new.jpg" height="250" width="290"/>--%>
            <asp:Image ID="Image1" runat="server" Height="260" Width="290" /><br />
            <nav class="sidebar dark">
                <ul>
                    <li class="stick bg-blue"><a href="#" target="_blank"><i class="icon-home"></i>Leave Application</a></li>
                    <li class="stick bg-red"><a href="#" target="_blank"><i class="icon-cog"></i>Loan Application</a></li>
                    <li class="stick bg-yellow">
                    <a class="dropdown-toggle" href="#"><i class="icon-tree-view"></i>Access Profile</a>
                        <ul class="dropdown-menu" data-role="dropdown">
                        <li><a href="#" target="_blank">Assets</a></li>
                        <li><a href="#" target="_blank">Benefits</a></li>
                        </ul>
                    </li>
                    <li class="stick bg-green"><a href="#" target="_blank">Performance Management</a></li>
                    <li class="stick bg-blue"><a href="#" target="_blank">Employee Evaluation</a></li>
                    <li class="stick bg-red"><a href="#">My Package</a></li>
                    <li class="stick bg-yellow"><a href="#">Talk to CEO</a></li>
                </ul>
            </nav>
        </div>
        <div class="span5">
            <div class="panel" style="padding-top:0px" style="position:fixed">
    	        <div class="panel-header bg-lightBlue fg-white">
        	        Title
    	        </div>
    	        <div class="panel-content">
        	        <%--<p>Name : Christina Dev<bR />
            	        Subject : Christina Dev<br />
                        Date : 12 /2/2014
                    </p>--%>
    	        </div>
		    </div>
            <div class="panel">
    		    <div class="panel-header bg-lightBlue fg-white">
        		    Employee Message
    		    </div>
    		    <div class="panel-content">
        		    <%--Dear All.<br /><br />
				    Please let me take this opportunity to introduce myself as the newly appointed sales agent for your Group.
				    As an initiative to a growing business relationship that will benefit both of us, I could also introduce our new 					products to you.<br /><br />
				    Thanking You,--%>
    		    </div>
		    </div>
        </div>
        <div class="span4">
                    <div class="accordion span4 place-left margin10" data-role="accordion"  data-closeany="false">
                    <div class="accordion-frame active">
                      <a class="heading bg-green fg-white" href="#"><i class="icon-broadcast"></i>Notifications</a>
                      <div class="content">
                          <%--<asp:Label ID="lblNotify" runat="server" Text=""></asp:Label><br />--%>
                          <asp:Panel ID="pnlNotify" runat="server"></asp:Panel>

                          <%--<div class='listview-outlook' data-role='listview'>
                              <a class='list marked' href='#'>
                                  <div class='list-content'>
                                      <span class='list-title'>Leave Approved</span>
                                      <span class='list-subtitle'>Leave Approved by <b>W.A.D.Dilnuwan</b></span>
                                  </div>
                              </a>
                          </div>--%>
                          <a class="button primary" href="NotificationCenter.aspx">Go to Notifications</a>
                      </div>
                    </div>
                    <div class="accordion-frame active">
                       <a class="heading bg-red fg-white" href="#"><i class="icon-link-2"></i>Alerts</a>
                       <div class="content">
                            <asp:Panel ID="pnlAlerts" runat="server"></asp:Panel>
                            <a class="button primary" href="NotificationCenter.aspx">Go to Alerts</a>
                       </div>
                     </div>
                     <div class="accordion-frame active">
                       <a class="heading bg-amber fg-white" href="#"><i class="icon-mail"></i>Messages</a>
                       <div class="content">
                          <a class="button primary" href="NotificationCenter.aspx">Go to Messages</a>
                        </div>
                     </div>
                  </div>

        </div>
    </div>
    </div>
</div>
    <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
</asp:Content>
