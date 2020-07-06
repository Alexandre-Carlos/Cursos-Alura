using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class FormCadGaleriaTattoo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }
        }

        protected void btnGravaTattoo_Click(object sender, EventArgs e)
        {
            foreach (HttpPostedFile tattoo in fotoGaleria.PostedFiles)
            {
                string nome = tattoo.FileName;
                string caminho = Server.MapPath("~/GaleriaTattoo");
                string dadosImagem = Path.Combine(caminho, nome);
                tattoo.SaveAs(dadosImagem);
            }

            Response.Write("<script>alert('Imagem gravada com sucesso!');</script>");
        }
    }
}