<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudioWebSite.Default" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sistema OrestesTattoo </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">

  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="frmLogin" runat="server">
              <h1>Acesso ao sistema</h1>
              <div>
                  <asp:TextBox ID="txtLogin" runat="server" class="form-control" placeholder="Login"></asp:TextBox>
                <%--<input type="text" class="form-control" placeholder="Username" required="" />--%>
              </div>
              <div>
                  <asp:TextBox ID="txtSenha" class="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                <%--<input type="password" class="form-control" placeholder="Password" required="" />--%>
              </div>
              <div>
                  <center>
                      <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Logar" class="btn btn-default submit" />
                      <br />
                      <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                  </center>
              </div>
              <div class="clearfix"></div>
              <div class="separator"></div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
