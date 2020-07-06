<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormPalestrantes.aspx.cs" Inherits="BarbeirosDeSucesso.Admin.FormPalestrantes" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sistema </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">

</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="Principal.aspx" class="site_title">
                            <img src="imagens/caveira.png" style="width: 40px; height: 40px;" />
                            <span>&nbsp; Orestes Tattoo</span></a>
                    </div>

                    <div class="clearfix"></div>

                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                        <div class="profile_pic">
                            <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                         <div class="profile_info">
                            <span>Bem vindo,</span><br />
                            <asp:Label ID="lblBemVindo" runat="server" Text="" style="color:white; font-size:12px;"></asp:Label>
                        </div>
                    </div>
                    <!-- /menu profile quick info -->

                    <br />

                    <!-- #include file="MenuLateral.html -->
                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav>
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">

                    <div class="clearfix"></div>
                    <div class="row">
                        <%--Cadastro cliente--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadPalestrante" style="display:block" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Gerenciador de Palestrantes</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form  id="FormPalestrante" name="FormPalestrante" runat="server" class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                                Nome <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="txtCodigo" runat="server"  class="form-control col-md-7 col-xs-12" style="display:none;">
                                                <input type="text" id="txtNome" runat="server"  class="form-control col-md-7 col-xs-12" required="required">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Especialidade
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtEspecialidade" runat="server" name="Especialidade" class="form-control col-md-7 col-xs-12" type="text" >
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Telefone
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtTelefone" runat="server" name="telefone" class="form-control col-md-7 col-xs-12" type="text" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Descricao</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
												<textarea class="form-control" rows="5" id="txtDescricao" runat="server"></textarea>
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                                Foto
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div >
                                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

                                                <asp:FileUpload id="fileUpload" accept="image/*" runat="server" class="form-control col-md-7 col-xs-12" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                                
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                
                                                
                                                <!--<input type="text" id="txtFoto1" runat="server"  class="form-control col-md-7 col-xs-12" style="display:none;">
                                                <asp:FileUpload id="txtFoto2" runat="server" name="Foto" class="form-control col-md-7 col-xs-12"/>-->
                                                
                                                
                                                <div class="nova" hidden >

                                                <asp:Image id="txtFoto" runat="server"  ImageUrl="~/"  style='width:100px; height:100px;' class="form-control col-md-7 col-xs-12"  />
                                                
                                                </div>
                                            
                                            
                                                <div class="atual">

                                            
                                                <img src='../images/palestrantes/<%= txtFoto.ImageUrl%>' style='width:100px; height:100px;' class="form-control col-md-7 col-xs-12" />
                                            
                                                </div>
                                            
                                                
                                                
                                             
                                                <!--<input type="file" name="foto" id="foto" accept="image/*"><br><br>
			                                    <div style="display:table"> 
                                                  <img id="img1" name="img1" border="0" />
                                                </div>-->


                                            </div>
                                         </div>  
                                     
                                        
                                        
                                        <div class="ln_solid"></div>
                                        <div class="form-group" id="divGravaPalestrante" runat="server" style="display:block;">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                      

                                            
                                           
                                        <asp:Button ID="btnGravaPalestrante" runat="server" class="btn btn-success" OnClick="btnGravaPalestrante_Click" Text="Gravar" />
                                               


                                        <asp:Button ID="Button1" runat="server" class="btn btn-success" OnClick="btnExcluiPalestrante_Click" Text="Excluir" />
												
                                            </div>
                                        </div>

                                        

                                    </form>

                                    <script>
                                        $("#<%=fileUpload.ClientID%>").on('change', function () {
                                            if (this.files[0].type.indexOf("image") > -1) {
                                                var reader = new FileReader();
                                                reader.onload = function (e) {
                                                    $('#<%=txtFoto.ClientID%>').attr('src', e.target.result);
                                                }
                                                reader.readAsDataURL(this.files[0]);
                                                $(".atual").hide();
                                                $(".nova").show();
                                            }
                                            else {
                                                $('#<%=txtFoto.ClientID%>').attr('src', '');
                                                alert('Não é uma imagem válida')
                                            }
                                        });
                                    </script>



                                    <!--<script>
                                        $("#foto").on('change', function () {
                                            if (this.files[0].type.indexOf("image") > -1) {
                                                var reader = new FileReader();
                                                reader.onload = function (e) {
                                                    $('#img1').attr('src', e.target.result);
                                                }
                                                reader.readAsDataURL(this.files[0]);
                                            } else {
                                                $('#img1').attr('src', '');
                                                alert('Não é uma imagem válida');
                                            }
                                        });
                                       
                                    </script>-->


                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            



            <!-- /page content -->

            <!-- footer content -->
            <footer>
                <div class="pull-right">
                
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    
            
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <script src="../js/imagem.js"></script>

     <script>
        //function ExcluirTestemunho() {

        //    var cpf = document.getElementById('txtCpfCliente').value;
        //    cpf = cpf.replace(/[^0-9]+/g, '');


        //    if (valida_cpf(cpf)) {
        //        var idCliente = $('#txtCodCliente').val();
        //        var nomecompletoCli = $('#txtNomeCompletoCliente').val();
        //        var CPFCli = $('#txtCpfCliente').val();
        //        var Telefone = $('#txtTelefoneCliente').val();
        //        var Endereco = $('#txtEnderecoCliente').val();
        //        var Bairro = $('#txtBairroCliente').val();
        //        var CEP = $('#txtCepCliente').val();
        //        var Sexo = $("input[name='rdSexoCliente']:checked").val();
        //        var DtNasc = $('#txtDtNasc').val();
        //        var Foto = $('#txtFotoCliente').val();

        //        var obj = new Object();
        //        obj.idCliente = idCliente;
        //        obj.nomecompleto = nomecompletoCli;
        //        obj.cpf = CPFCli;
        //        obj.telefone = Telefone;
        //        obj.endereco = Endereco;
        //        obj.bairro = Bairro;
        //        obj.cep = CEP;
        //        obj.sexo = Sexo;
        //        obj.datanascimento = DtNasc;
        //        obj.foto = Foto;

        //        var parametros = JSON.stringify(obj);

        //        $.ajax({
        //            type: "POST",
        //            url: "FormCadCliente.aspx/AlteraCliente",
        //            contentType: "application/json; charset=utf-8",
        //            data: parametros,
        //            dataType: "json",
        //            success: function (resposta) {
        //                alert("Cliente alterado com sucesso!");
        //            },
        //            failure: function (erro) {
        //                alert("Ocorreu um erro!");
        //            }
        //        });
        //    }
        //    else {
        //        alert("Por favor, digite um CPF válido!");
        //        document.getElementById('txtCpfCliente').focus();
        //        return false;
        //    }

        //}



        



    </script>
   
</body>
</html>

