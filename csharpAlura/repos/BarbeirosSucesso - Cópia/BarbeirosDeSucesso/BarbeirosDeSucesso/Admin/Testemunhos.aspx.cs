using BarbeirosDeSucesso.Projeto.Controller;
using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarbeirosDeSucesso.Admin
{
    public partial class Testemunhos : System.Web.UI.Page
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Testemunho> ConsultaTestemunhos = new TestemunhoController().ConsultarTestemunhos();

            if (ConsultaTestemunhos.Count > 0)
            {

                StringBuilder gridTestemunhos = new StringBuilder();
                foreach (var item in ConsultaTestemunhos)
                {
                    gridTestemunhos.Append(" <tr class='even pointer'> ");
                    gridTestemunhos.Append(String.Format(" <td class=' '>{0}</td> ", item.Nome));
                    gridTestemunhos.Append(String.Format(" <td class=' '>{0}</td> ", item.Tipo));
                    gridTestemunhos.Append(String.Format(" <td class=' '>{0} </td> ", item.TextTestemunho));
                    gridTestemunhos.Append(String.Format(" <td class=' '>{0} </td> ", item.Status));
                    gridTestemunhos.Append(String.Format(" <td class='last'><a href='FormTestemunhos.aspx?codigo={0}'>Ver</a></td> ", item.Codigo));
                    gridTestemunhos.Append(" </td>");
                    gridTestemunhos.Append(" </tr> ");
                }
                testemunhos.InnerHtml = gridTestemunhos.ToString();
            }

        }


    }
}