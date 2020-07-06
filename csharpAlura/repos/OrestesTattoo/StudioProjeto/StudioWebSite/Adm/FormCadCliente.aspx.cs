using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class FormCadCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }

            string codCli = Request.QueryString["codCliente"];

            if (codCli != null)
            {
                RecuperaCliente(codCli);
            }
            else
            {
                this.divGravaCli.Style.Add("display", "block");
                this.divAlteraCli.Style.Add("display", "none");
            }
        }




        private void RecuperaCliente(string codCli)
        {
            List<Clientes> ObterClientesId = new ClienteController().ObterClienteId(codCli);

            if(ObterClientesId.Count > 0)
            {
                this.divGravaCli.Style.Add("display", "none");
                this.divAlteraCli.Style.Add("display", "block");
                

                StringBuilder recCliente = new StringBuilder();

                foreach (var item in ObterClientesId)
                {
                    this.txtCodCliente.Value = Convert.ToInt32(item.IdCliente).ToString();
                    this.txtNomeCompletoCliente.Value = item.NomeCliente;
                    this.txtCpfCliente.Value = item.Cpf;
                    this.txtTelefoneCliente.Value = item.Telefone;
                    this.txtEnderecoCliente.Value = item.Endereco;
                    this.txtBairroCliente.Value = item.Bairro;
                    this.txtCepCliente.Value = item.Cep;
                    this.txtDtNasc.Value = item.DataNascimento;
                    this.divFoto.Style.Add("display", "none");
                    //this.txtFotoCliente.Value = item.Foto;
                }

                
            }
        }

        [WebMethod]
        public static Clientes GravaCliente(string nomecompleto, string cpf, string telefone, string endereco, string bairro, string cep, string sexo, string datanascimento, string foto)
        {
            Clientes GravaCliente = new ClienteController().InserirCliente(nomecompleto, cpf, telefone, endereco, bairro, cep, sexo, datanascimento, foto);

        return null;
        }

        [WebMethod]
        public static Clientes AlteraCliente(string idCliente, string nomecompleto, string cpf, string telefone, string endereco, string bairro, string cep, string sexo, string datanascimento, string foto)
        {
            Clientes AlteraCliente = new ClienteController().AlteraCliente(idCliente, nomecompleto, cpf, telefone, endereco, bairro, cep, sexo, datanascimento, foto);

            return null;
        }

        protected void btnGravaCliente_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = this.txtNomeCompletoCliente.Value;
                string cpf = this.txtCpfCliente.Value;
                string telefone = this.txtTelefoneCliente.Value;
                string endereco = this.txtEnderecoCliente.Value;
                string bairro = this.txtBairroCliente.Value;
                string cep = this.txtCepCliente.Value;
                string sexo = Request["rdSexoCliente"];
                string datanascimento = this.txtDtNasc.Value;

                string foto = Path.GetFileName(fotoCliente.PostedFile.FileName);
                if(foto != "")
                    fotoCliente.SaveAs(Server.MapPath("~/Adm/FotoCliente/" + foto));

                Clientes GravaCliente = new ClienteController().InserirCliente(nome, cpf, telefone, endereco, bairro, cep, sexo, datanascimento, foto);

                Response.Write("<script>alert('Cliente gravado com sucesso!');</script>");

                this.txtNomeCompletoCliente.Value = "";
                this.txtCpfCliente.Value = "";
                this.txtTelefoneCliente.Value = "";
                this.txtEnderecoCliente.Value = "";
                this.txtBairroCliente.Value = "";
                this.txtCepCliente.Value = "";
                this.txtDtNasc.Value = "";
            }
            catch (Exception)
            {
                Response.Redirect("pageErro.html");
            }
            

        }
    }
}