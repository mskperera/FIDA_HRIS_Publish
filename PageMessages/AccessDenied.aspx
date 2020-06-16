<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessDenied.aspx.cs" Inherits="Smarter_HRIS.PageMessages.AccessDenied" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
    </script>
    <meta charset='UTF-8'>
    <meta name="robots" content="noindex">

    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style class="cp-pen-styles">
        body {
            display: inline-block;
           background-color:#30353a;
            height: 100vh;
            margin: 0;
            color: white;
        }

        h1 {
            margin: .8em 3rem;
            font: 4em Roboto;
        }

        p {
            display: inline-block;
            margin: .2em 3rem;
            font: 2em Roboto;
        }
    </style>
</head>
<body>

          <h1><i style="font-size:200px;color:#FF5722;" class="fa fa-ban"></i></h1>  
        <p style="font-size:40px; color:#FF5722;" runat="server" id="txtmsg"></p>
    <br />
       <p  runat="server" style="margin:50px; font-size:18px; color:#FF5722;">Contact administration if need any help...</p>
</body>
</html>
