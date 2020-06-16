<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Smarter_HRIS.OtherWebForms.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
    </script>
    <meta charset='UTF-8'>
    <meta name="robots" content="noindex">

    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css'>


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

    <h1>Hmmm...</h1>
    <p>Something went wrong
        <br />
        <span style="font-size: 40px">Please contact service provider...</span></p>
    <br />
       <p  runat="server" style="margin:50px; font-size:18px; color:#FF5722;">Error:<span runat="server" id="txterror">Error</span></p>
</body>
</html>
