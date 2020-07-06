using BarbeirosDeSucesso.Projeto.Controller;
using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarbeirosDeSucesso
{
    public partial class Default : System.Web.UI.Page
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Testemunho> ListaTestemunhos = new TestemunhoController().ObterTestemunhosAprovados();

            if (ListaTestemunhos.Count > 0)
            {
                StringBuilder gridTestemunhos = new StringBuilder();

                foreach (var item in ListaTestemunhos)
                {
                    gridTestemunhos.Append("<blockquote class='quote-classic'>");
                    gridTestemunhos.Append("<div class='quote-classic-meta'>");
                    //gridTestemunhos.Append("<div class='quote-classic-avatar'><img src='images/testimonials-person-6-96x96.jpg' width='96' height='96'/>");
                    //gridTestemunhos.Append("</div>");
                    gridTestemunhos.Append("<div class='quote-classic-info'>");
                    gridTestemunhos.Append(String.Format("<cite class='quote-classic-cite'>{0}</cite>", item.Nome));
                    gridTestemunhos.Append(String.Format("<p class='quote-classic-caption'>{0}</p>", item.Tipo));
                    gridTestemunhos.Append("</div>");
                    gridTestemunhos.Append("</div>");
                    gridTestemunhos.Append("<div class='quote-classic-text'>");
                    gridTestemunhos.Append(String.Format("<p>{0}</p>", item.TextTestemunho));
                    gridTestemunhos.Append("</div>");
                    gridTestemunhos.Append("</blockquote>");

                }
                lista.InnerHtml = gridTestemunhos.ToString();
            }

            //Palestrante
            //< div class="col-md-10 col-lg-6 wow-outer">
            //  <!-- Profile Creative-->
            //  <article class="profile-creative wow slideInLeft">
            //    <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/Pal1.png" alt="" width="270" height="273"/>
            //    </figure>
            //    <div class="profile-creative-main">
            //      <h5 class="profile-creative-title"><a href = "#" > Nathalie Porter</a></h5>
            //      <p class="profile-creative-position">Nonono nonon</p>
            //      <div class="profile-creative-contacts">
            //        <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href = "tel:#" > 1 - 800 - 1324 - 567 </ a ></ div >
            //      </ div >
            //      < p > Nononno nono nnon onon onon onon ono no</p>
            //    </div>
            //  </article>
            //</div>




        }



        [WebMethod]
        public static Testemunho EnviarTestemunho(string nome, string tipo, string testemunho)
        {
            Testemunho EnviarTestemunho = new TestemunhoController().InserirTestemunho(nome, tipo, testemunho);

            return null;
        }

        
    }
}