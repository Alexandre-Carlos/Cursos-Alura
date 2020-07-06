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
    public partial class Palestrantes : System.Web.UI.Page
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Palestrante> ConsultaPalestrantes = new PalestranteController().ConsultarPalestrantes();

            if (ConsultaPalestrantes.Count > 0)
            {
                //(Nome, Especialidade, Telefone, Descricao, Foto, Ativo, DataCadastro)
                StringBuilder gridPalestrantes = new StringBuilder();
                foreach (var item in ConsultaPalestrantes)
                {
                    gridPalestrantes.Append(" <tr class='even pointer'> ");
                    gridPalestrantes.Append(String.Format(" <td class=' '>{0}</td> ", item.Nome));
                    gridPalestrantes.Append(String.Format(" <td class=' '>{0}</td> ", item.Especialidade));
                    gridPalestrantes.Append(String.Format(" <td class=' '>{0} </td> ", item.Telefone));
                    gridPalestrantes.Append(String.Format(" <td class=' '><img src='../images/palestrantes/{0}' style='width:30px; heigth:30px;'> </td> ", item.Foto));
                    gridPalestrantes.Append(String.Format(" <td class='last'><a href='FormPalestrantes.aspx?codigo={0}'>Ver</a></td> ", item.Codigo));
                    gridPalestrantes.Append(" </td>");
                    gridPalestrantes.Append(" </tr> ");
                }
                palestrantes.InnerHtml = gridPalestrantes.ToString();
            }

        }


    }
}