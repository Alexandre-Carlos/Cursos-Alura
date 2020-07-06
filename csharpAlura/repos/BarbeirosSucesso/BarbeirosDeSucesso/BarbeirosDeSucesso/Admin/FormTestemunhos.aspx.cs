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
    public partial class FormTestemunhos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["Codigo"];

            int testemunhoId = Convert.ToInt32(codigo);

            if (testemunhoId != 0)
            {
                RecuperaTestemunho(testemunhoId);
            }
            //else
            //{
            //    this.divGravaCli.Style.Add("display", "block");
            //    this.divAlteraCli.Style.Add("display", "none");
            //}
        }

        private void RecuperaTestemunho(int testemunhoId)
        {
            List<Testemunho> ObterTestemunhoId = new TestemunhoController().ObterTestemunhoId(testemunhoId);

            if (ObterTestemunhoId.Count > 0)
            {
                //this.divGravaCli.Style.Add("display", "none");
                //this.divAlteraCli.Style.Add("display", "block");


                StringBuilder recCliente = new StringBuilder();

                foreach (var item in ObterTestemunhoId)
                {
                    this.txtCodigo.Value = Convert.ToInt32(item.Codigo).ToString();
                    this.txtNome.Value = item.Nome;
                    this.txtTipo.Value = item.Tipo;
                    this.txtTestemunho.Value = item.TextTestemunho;
                    this.txtStatus.Value = item.Status;
                    this.txtDatainclusao.Value = item.DataInclusao.ToString();
                }


            }
        }

        protected void btnGravaTestemunho_Click(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["Codigo"];

            int testemunhoId = Convert.ToInt32(codigo);

            try
            {
                
                Testemunho GravaTestemunho = new TestemunhoController().AprovarTestemunho(testemunhoId);

                Response.Write(@"
                     <script>
                        alert('Testemunho aprovado com sucesso!');
                        window.location = 'Testemunhos.aspx'
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

        protected void btnExcluiTestemunho_Click(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["Codigo"];

            int testemunhoId = Convert.ToInt32(codigo);

            try
            {
                Testemunho ExcluiTestemunho = new TestemunhoController().ExcluirTestemunho(testemunhoId);

                Response.Write("<script>alert('Testemunho gravado com sucesso!');</script>");
            }
            catch (Exception)
            {
                Response.Redirect("pageErro.html");
            }
        }
    }
}