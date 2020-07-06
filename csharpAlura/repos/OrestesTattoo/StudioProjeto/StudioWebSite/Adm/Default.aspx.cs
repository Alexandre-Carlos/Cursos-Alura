using StudioProjeto.Controller;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Acesso"] != null && IsPostBack)
            {
                txtLogin.Text = Request.Cookies["Acesso"]["funcionario"];
                txtSenha.Attributes.Add("value", Request.Cookies["Acesso"]["senha"]);
            }

            if (Request.QueryString["msg"] != null)
                lblMensagem.Text = Request.QueryString["msg"];

            txtLogin.Focus();
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {

            lblMensagem.Text = string.Empty;

            if (txtLogin.Text.Trim() != null)
            {

                Usuarios user = new UsuarioController().Autenticar(txtLogin.Text, txtSenha.Text);
                //Funcionario user = new FuncionarioController().Autenticar(txtLogin.Text, txtSenha.Text);

                if (user != null)
                {
                    Session["Autenticado"] = "OK";
                    Session["codigofuncionario"] = user.Codigo;
                    Session["nomefuncionario"] = user.Login;
                    Session["senhafuncionario"] = user.Pswd;

                    Server.Transfer("Principal.aspx");
                }
                else
                {
                    lblMensagem.Text = "Usuário e/ou senha inválido.";
                }
            }
        }
    }
}