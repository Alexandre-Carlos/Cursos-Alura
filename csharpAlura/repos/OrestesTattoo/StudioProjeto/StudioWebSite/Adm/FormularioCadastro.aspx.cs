using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace StudioWebSite.Adm
{
    public partial class FormularioCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            string tipoCadastro = Request.QueryString["tpCad"];

            switch (tipoCadastro)
            {
                case "cadUsuarios":
                    this.divCadUsuario.Style.Add("display","block");

                    break;
                case "cadClientes":
                    this.divCadCliente.Style.Add("display", "block");
                    break;
                default:
                    break;
            }
        }

        protected void btn_Gravar_User_Click(Object sender, EventArgs e)
        {
            //string nome = txtnomeCompleto.value ;
            //Usuarios newUser = new UsuarioController();
        }

        [WebMethod]
        public static Usuarios GravaUser(string nomeCompleto, string cpf, string login, string senha, string confsenha, string sexo, string foto, string ativo)
        {
            Usuarios gravaUser = new UsuarioController().InserirUsuario(nomeCompleto, cpf, login, senha, confsenha, sexo, foto, ativo);

            return new Usuarios();
        }
    }
}