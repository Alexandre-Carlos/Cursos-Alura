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
    public partial class GaleriaImagem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            var cod = Request.QueryString["codEnviado"];

            var httpPostedFile = HttpContext.Current.Request.Files["GaleriaDefault"];

            if(httpPostedFile != null)
            {
                //httpPostedFile.FileName("pic1.jpg").ToString();
                //FileName.Replace = "pic1.jpg";
                var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/GaleriaDefault"), "pic"+cod+".jpg");

                httpPostedFile.SaveAs(fileSavePath);

                Response.Redirect("GaleriaImagem.aspx");
            }
        }
    }
}