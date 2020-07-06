using StudioProjeto.Controller;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite
{
    public partial class LojaStudio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strDiretorio = Server.MapPath("~/FotoProduto");
            DirectoryInfo oDirectoryInfo = new DirectoryInfo(strDiretorio);

            List<String> oListTiposImagens = new List<string>();
            //Adicione quantas extensões você desejar!
            oListTiposImagens.Add("*.gif");
            oListTiposImagens.Add("*.png");
            oListTiposImagens.Add("*.jpg");

            List<String> oListImagensSelecionadas = new List<String>();
            foreach (String strExtensao in oListTiposImagens)
            {
                List<FileInfo> oListFileInfo = oDirectoryInfo.GetFiles(strExtensao).ToList();

                foreach (FileInfo oImagem in oListFileInfo)
                {
                    List<Produto> ConsultaProdutoNome = new ProdutoController().ObterProduto(oImagem.Name);

                    if (ConsultaProdutoNome.Count > 0)
                    {
                        StringBuilder gridImagem = new StringBuilder();

                        foreach (var item in ConsultaProdutoNome)
                        {
                            gridImagem.Append(" <div class='col-md-4 animate-box'> ");
                            gridImagem.Append(String.Format(" <a href='FotoProduto/{0}' class='grid-photo img-popup' style='background-image: url(FotoProduto/{0}); '> ", oImagem.Name));
                            gridImagem.Append(" </a>");
                            gridImagem.Append(String.Format("<label>{0}</label> <br> ", item.Titulo));
                            gridImagem.Append(String.Format("<label>{0}</label> <br>", item.Descricao));
                            gridImagem.Append(String.Format("<label>{0}</label> <br>", item.Valor));
                            gridImagem.Append(" </div> ");
                        }

                        LojaGaleria.InnerHtml += gridImagem.ToString();
                    }

                }

            }
        }
    }
}