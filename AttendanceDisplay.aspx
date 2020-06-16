<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AttendanceDisplay.aspx.cs" Inherits="Smarter_HRIS.AttendanceDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <p>
            <h1 class="fg-cobalt">
                    <a href="#" onclick="history.go(-1);"><i class="icon-arrow-left-3 fg-cobalt smaller"></i></a>
                    Attendance Display
            </h1>
    </p>
        <div class="grid">
            <div class="row">
                    <div class="span3">
                        <%--<label ><h5 class="fg-cyan">From :</h5></label>--%>
                        <asp:Label ID="Label1" runat="server" CssClass="fg-cyan" Text="From : " Font-Bold="True"></asp:Label>
                        <input type="date" id="txtFromDate" runat="server" name="FromDate"/>   
                               


                    </div>
                    <div class="span4">
                        <%--<label ><h5 class="fg-cyan">To :</h5></label>--%>
                        <asp:Label ID="Label2" runat="server" CssClass="fg-cyan" Text="To : " Font-Bold="True"></asp:Label>
                        <input type="date" id="txtToDate" runat="server" name="ToDate"/>  
                    </div>
            </div>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cloudSystemConnectionString %>" SelectCommand="SELECT [NameWithInitials] FROM [EmployeeMaster]"></asp:SqlDataSource>
        
        <asp:Button ID="Button2" class="large info" runat="server" OnClick="Button1_Click" Text="Select" />

        <br />
    
      <%--<p>
        
        <asp:Button ID="Button1" class="large success" runat="server" OnClick="Button1_Click" Text="Select" />
&nbsp;
</p>--%>

        <asp:Panel ID="pnlAttendance" runat="server"></asp:Panel>
  
    <asp:GridView ID="dataGridView" runat="server" CellPadding="3" GridLines="Vertical" Font-Size="Smaller" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
        <br />
        <br />
        <br />
      </div>
  <script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
<script>
    webshims.setOptions('forms-ext', { types: 'date' });
    webshims.polyfill('forms forms-ext');
</script>
</asp:Content>
