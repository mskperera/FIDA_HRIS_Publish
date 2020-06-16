<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuleActivationPagen.aspx.cs" Inherits="Smarter_HRIS.ModuleActivationPagen" %>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Activation</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    <link href="css/ModuleActivation.css" rel="stylesheet" />
        <!-- font Awesome -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <!-- Theme style -->
   
    
</head>
<body style="background-color: black;text-align: center;  width: 100%;height: 100%;">
    <form id="form1" runat="server"  >
    <div class="ModuleActivation">
            <div class="FormHeader">Activate Module : <asp:Label ID="lblModuleName" runat="server"></asp:Label></div>
         
                <div class="FormBody">
                    <div class="form-group">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </div>
                
                        <asp:TextBox ID="txtKey" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Enter key here"></asp:TextBox>
                 
                </div>
                <div class="FormFooter">                    
                    <button type="submit" id="bttnSubmit" runat="server" onserverclick="bttnSave_click" class="btn bg-light-blue btn-block">Activate</button>
                </div>
        
   </div>
    </form>
</body>
</html>