using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite
{
    public partial class Principal : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                DateTime tempo = DateTime.Now;
                if (tempo.Hour > 6 && tempo.Hour < 12)
                    this.lblmsg.Text = "Bom dia " + Session["nomeFuncionario"].ToString();
                else if (tempo.Hour >= 12 && tempo.Hour < 18)
                    this.lblmsg.Text = "Boa tarde " + Session["nomeFuncionario"].ToString();
                else
                    this.lblmsg.Text = "Boa noite " + Session["nomeFuncionario"].ToString();

                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

                //lblUsuario.Text = string.Format("Código: {0}<br/>Nome: {1}<br/>Senha: {2}",
                //    Session["codigoFuncionario"].ToString(),
                //    Session["nomeFuncionario"].ToString(),
                //    Session["senhaFuncionario"].ToString());
            }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}