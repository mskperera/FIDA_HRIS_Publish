<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test123.aspx.cs" Inherits="Smarter_HRIS.test123" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script src="ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="Select/select2.css" rel="stylesheet" />
    <script src="Select/select2.js"></script>

    <style>
        body
        {
            font: 11px verdana;
        }
    </style>--%>
    <script src="Select/jquery-1.7.1.js"></script>
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="myDropDownlistID" runat="server" class="chosen-select" Height="30px" Width="200px">
                <asp:ListItem Text="Select Color"></asp:ListItem>
                <asp:ListItem Text="Red"></asp:ListItem>
                <asp:ListItem Text="Green" />
                <asp:ListItem Text="Blue" />
                <asp:ListItem Text="Pink" />
                <asp:ListItem Text="Yellow" />
                <asp:ListItem Text="Lime" />
                <asp:ListItem Text="Black" />
                <asp:ListItem Text="Purple" />
                <asp:ListItem Text="Deep Pink" />
                <asp:ListItem Text="Orange" />
                <asp:ListItem Text="Light Pink" />
            </asp:DropDownList>

        <script type="text/javascript">
            var config = {
                '.chosen-select': {},
            }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }
</script>
    </div>
        <%--<script>
            $(document).ready(function () { $("#myDropDownlistID").select2(); });
        </script>--%>
    </form>
</body>
</html>
