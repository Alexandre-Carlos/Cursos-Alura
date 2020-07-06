using BarbeirosDeSucesso.Projeto.Controller;
using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarbeirosDeSucesso.Admin
{
    public partial class FormPalestrante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["Codigo"];

            int palestranteId = Convert.ToInt32(codigo);

            if (palestranteId != 0)
            {
                RecuperaPalestrante(palestranteId);
            }
            //else
            //{
            //    this.divGravaCli.Style.Add("display", "block");
            //    this.divAlteraCli.Style.Add("display", "none");
            //}
        }

        private void RecuperaPalestrante(int palestranteId)
        {
            List<Palestrante> ObterPalestranteId = new PalestranteController().ObterPalestranteId(palestranteId);

            if (ObterPalestranteId.Count > 0)
            {
                //this.divGravaCli.Style.Add("display", "none");
                //this.divAlteraCli.Style.Add("display", "block");


                StringBuilder recCliente = new StringBuilder();

                foreach (var item in ObterPalestranteId)
                {
                    this.txtCodigo.Value = Convert.ToInt32(item.Codigo).ToString();
                    this.txtNome.Value = item.Nome;

                    this.txtEspecialidade.Value = item.Especialidade;
                    this.txtTelefone.Value = item.Telefone;
                    this.txtDescricao.Value = item.Descricao;
                    this.txtFoto.Value = item.Foto;

                    this.txtAtivo.Value = item.Ativo;
                    this.txtDataCadastro.Value = item.DataCadastro.ToString();
                }


            }
        }

        protected void btnGravaPalestrante_Click(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["Codigo"];

            int palestranteId = Convert.ToInt32(codigo);

            try
            {
                
                Palestrante GravaPalestrante = new PalestranteController().AprovarPalestrante(palestranteId);

                Response.Write(@"
                     <script>
                        alert('Palestrante aprovado com sucesso!');
                        window.location = 'Palestrantes.aspx'
                    </script>
                ");
                //Response.Write("<script>alert('Cliente gravado com sucesso!');</script>");
                //Response.
                //Response.Redirect("Testemunhos.aspx", false);
            }
            catch (Exception ex)
            {
                Response.Redirect("pageErro.html");
            }


        }

        protected void btnExcluiPalestrante_Click(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["Codigo"];

            int palestranteId = Convert.ToInt32(codigo);

            try
            {
                Palestrante ExcluiPalestrante = new PalestranteController().ExcluirPalestrante(palestranteId);

                Response.Write("<script>alert('Palestrante foi excluido com sucesso!');</script>");
            }
            catch (Exception)
            {
                Response.Redirect("pageErro.html");
            }
        }
    }
}