using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class ConsultaProdutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                //this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            List<Produto> ConsultaProdutos = new ProdutoController().ConsultaProdutos();

            if (ConsultaProdutos.Count > 0)
            {
                StringBuilder gridProduto = new StringBuilder();

                foreach (var item in ConsultaProdutos)
                {

                    gridProduto.Append(" <tr class='even pointer'> ");
                    gridProduto.Append(String.Format(" <td class=' '>{0}</td> ", item.Titulo));
                    gridProduto.Append(String.Format(" <td class=' '>{0}</td> ", item.Descricao));
                    gridProduto.Append(String.Format(" <td class=' '>{0} </td> ", item.Valor));
                    gridProduto.Append(String.Format(" <td class=' '>{0} </td> ", item.Estoque));
                    gridProduto.Append(String.Format(" <td class=' '><img src='../FotoProduto/{0}' style='width:30px; heigth:30px;'> </td> ", item.Foto));
                    gridProduto.Append(String.Format(" <td class=' last'><a href='FormCadProduto.aspx?codProd={0}' >Editar</td> ", item.IdProduto));
                    //gridCliente.Append(" <td class=' last'><a href = '#'> Ver </a> ");
                    gridProduto.Append(" </td>");
                    gridProduto.Append(" </tr> ");
                }
                resultProduto.InnerHtml = gridProduto.ToString();
                
            }
        }
    }
}