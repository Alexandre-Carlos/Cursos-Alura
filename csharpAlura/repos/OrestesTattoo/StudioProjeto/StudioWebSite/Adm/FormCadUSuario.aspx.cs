using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace StudioWebSite.Adm
{
    public partial class FormCadUSuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }
        }

        [WebMethod]
        public static Usuarios GravaUser(string nomeCompleto, string cpf, string login, string senha, string confsenha, string sexo, string foto, string ativo)
        {
            Usuarios gravaUser = new UsuarioController().InserirUsuario(nomeCompleto, cpf, login, senha, confsenha, sexo, foto, ativo);

            return new Usuarios();
        }

        protected void btnGravaUser_Click(object sender, EventArgs e)
        {
            try
            {
                string nomeCompleto = this.txtnomeCompleto.Value;
                string cpf = this.txtCpfUser.Value;
                string login = this.txtLogin.Value;
                string pwd = this.txtsenha.Value;
                string cpwd = this.txtConfSenha.Value;
                string sexo = Request["gender"];
                string ativo = Request["chkAtivo"];
                if (ativo == null)
                    ativo = "off";

                string filename = Path.GetFileName(fotouser.PostedFile.FileName);
                if (filename != "")
                    fotouser.SaveAs(Server.MapPath("~/Adm/ImgUsuario/" + filename));

                Usuarios gravaUser = new UsuarioController().InserirUsuario(nomeCompleto, cpf, login, pwd, cpwd, sexo, filename, ativo);

                Response.Write("<script>alert('Usuário gravado com sucesso!');</script>");

                this.txtnomeCompleto.Value = "";
                this.txtCpfUser.Value = "";
                this.txtLogin.Value = "";
                this.txtsenha.Value = "";
                this.txtConfSenha.Value = "";
            }
            catch (Exception)
            {
                Response.Redirect("PageErro.html");
            }
            
            

        }
    }
}