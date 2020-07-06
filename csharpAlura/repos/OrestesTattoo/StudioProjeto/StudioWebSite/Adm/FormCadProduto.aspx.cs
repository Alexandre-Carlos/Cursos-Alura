using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class FormCadProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            string codProd = Request.QueryString["codProd"];

            if (codProd != null)
            {
                RecuperaProduto(codProd);
            }
            else
            {
                this.divGravaProd.Style.Add("display", "block");
                this.divAltProd.Style.Add("display", "none");
            }
        }

        private void RecuperaProduto(string codProd)
        {
            List<Produto> ObterProdutoId = new ProdutoController().ObterProdutoId(codProd);

            if (ObterProdutoId.Count > 0)
            {
                this.divGravaProd.Style.Add("display", "none");
                this.divAltProd.Style.Add("display", "block");


                StringBuilder recProduto = new StringBuilder();

                foreach (var item in ObterProdutoId)
                {
                    this.txtCodProd.Value = Convert.ToInt32(item.IdProduto).ToString();
                    this.txtTitulo.Value = item.Titulo;
                    this.txtDescricao.Value = item.Descricao;
                    this.valor.Value = item.Valor;
                    //this.fotoProduto. = item.Foto;
                }


            }
        }

        protected void btnGravaProduto_Click(object sender, EventArgs e)
        {
            string titulo = this.txtTitulo.Value;
            string descricao = this.txtDescricao.Value;
            string valor = this.valor.Value;
            string estoque = Request["lblEstoque"];

            string foto = Path.GetFileName(fotoProduto.PostedFile.FileName);
            fotoProduto.SaveAs(Server.MapPath("~/FotoProduto/" + foto));

            Produto gravaProduto = new ProdutoController().InserirProduto(titulo, descricao, valor, estoque, foto);
            
            Response.Write("<script>alert('Produto gravado com sucesso!');</script>");

            this.txtTitulo.Value = "";
            this.txtDescricao.Value = "";
            this.valor.Value = "";

        }

        protected void bnAlteraProduto_Click(object sender, EventArgs e)
        {
            string codigo = this.txtCodProd.Value;
            string titulo = this.txtTitulo.Value;
            string descricao = this.txtDescricao.Value;
            string valor = this.valor.Value;


            string foto = Path.GetFileName(fotoProduto.PostedFile.FileName);
            fotoProduto.SaveAs(Server.MapPath("~/FotoProduto/" + foto));

            Produto alteraProduto = new ProdutoController().AlterarProduto(codigo, titulo, descricao, valor, foto);
        }
    }
}