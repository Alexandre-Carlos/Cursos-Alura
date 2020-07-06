using BarbeirosDeSucesso.Projeto.Controller;
using BarbeirosDeSucesso.Projeto.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarbeirosDeSucesso.Admin
{
    public partial class FormPalestrantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                
                string codigo = Request.QueryString["Codigo"];

                int palestranteId = Convert.ToInt32(codigo);

                if (palestranteId != 0)
                {
                    RecuperaPalestrante(palestranteId);
                }
            }

            
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
                    this.txtFoto.ImageUrl = item.Foto;

                    //this.txtAtivo.Value = item.Ativo;
                    //this.txtDataCadastro.Value = item.DataCadastro.ToString();
                }


            }
        }

        protected void btnGravaPalestrante_Click(object sender, EventArgs e)
        {

            
            string codigo = Request.QueryString["Codigo"];

            int palestranteId = 0;

            var texto = sender.ToString();

            

            if (codigo != null) 
            {
               palestranteId = Convert.ToInt32(codigo);
            }

            if (texto == "Gravar") 
            {
                var teste = "sim";

            }
                

                    var nome = txtNome.Value;

                    string especialidade = txtEspecialidade.Value;

                    var telefone = txtTelefone.Value;
                    var descricao = txtDescricao.Value;
                    var foto = "";
                    if (fileUpload.FileName != null && fileUpload.FileName != "")
                    {
                        foto = fileUpload.FileName;
                    }
                    else
                    {
                        foto = txtFoto.ImageUrl;
                    }

                    var ativo = "S";

            //string foto = Path.GetFileName(txtFoto.PostedFile.FileName);
            //txtFoto.SaveAs(Server.MapPath("~/images/palestrantes/" + foto));
            if (foto != null && foto != ""){
                fileUpload.SaveAs(Server.MapPath("~/images/palestrantes/" + foto));
            }

         try
            {
                
            if ( palestranteId == 0)
                {


                    Palestrante GravaPalestrante = new PalestranteController().InserirPalestrante(nome, especialidade, telefone, descricao, foto, ativo);

                }
                else
                {
                    
                    
                    Palestrante GravaPalestrante = new PalestranteController().AprovarPalestrante(palestranteId, nome, especialidade, telefone, descricao, foto);
                }

                Response.Write(@"
                     <script>
                        alert('Palestrante gravado com sucesso!');
                        window.location = 'Palestrantes.aspx'
                    </script>
                ");
                //Response.Write("<script>alert('Cliente gravado com sucesso!');</script>");
                //Response.
                //Response.Redirect("Palestrante.aspx", false);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
                //Response.Redirect("pageErro.html"); 
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

            Response.Redirect("Palestrantes.aspx");
        }
    }
}