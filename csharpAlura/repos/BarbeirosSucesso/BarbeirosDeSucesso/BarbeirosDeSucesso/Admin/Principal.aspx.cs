using BarbeirosDeSucesso.Admin.Funcoes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarbeirosDeSucesso.Admin
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Comentado para acesso na rede do banco

            /*
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

            }
            */
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}