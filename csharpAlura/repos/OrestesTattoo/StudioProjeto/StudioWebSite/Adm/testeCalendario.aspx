<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testeCalendario.aspx.cs" Inherits="StudioWebSite.Adm.testeCalendario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <link href="css/default.css" rel="stylesheet" type="text/css"/>
		<link href="css/jquery.click-calendario-1.0.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.click-calendario-1.0-min.js"></script>		
		<%--<script type="text/javascript" src="js/exemplo-calendario.js"></script>--%>

    <script>
        /* Javascript */
        $('#data_1').focus(function () {
            $(this).calendario({
                target: 'data_1',
                top: 0,
                left: 130
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" name="data_1" id="data_1" size="10" maxlength="10"/>
    </div>
    </form>
</body>
</html>
