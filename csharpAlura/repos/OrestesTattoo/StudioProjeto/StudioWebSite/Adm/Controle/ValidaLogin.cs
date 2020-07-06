using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudioWebSite.Adm.Controle
{
    public class ValidaLogin
    {
        public static void VerificaLogin()
        {
            if (HttpContext.Current.Session["autenticado"] == null ||
                HttpContext.Current.Session["autenticado"].ToString() != "OK")
            {
                HttpContext.Current.Session.Abandon();
                HttpContext.Current.Response.Redirect("Default.aspx?msg=Por favor, autentique-se");
            }
        }
    }
}