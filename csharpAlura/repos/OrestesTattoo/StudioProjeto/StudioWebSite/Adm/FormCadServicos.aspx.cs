using StudioProjeto.Controller;
using StudioProjeto.Model;
using StudioWebSite.Adm.Controle;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudioWebSite.Adm
{
    public partial class FormCadServicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidaLogin.VerificaLogin();

            if (Session["autenticado"] != null && Session["autenticado"].ToString() == "OK")
            {
                this.lblBemVindo.Text = Session["nomeFuncionario"].ToString();

            }
        }

        [WebMethod]
        public static string RecuperaCliente()
        {
            List<ComboCliente> populacombo = new ClienteController().PopulaCliente();

            var jsonSerializer = new JavaScriptSerializer();
            string result = jsonSerializer.Serialize(populacombo);
            
            return result;
        }

        [WebMethod]
        public static Servico InsertServico(int codCliente, string dataServico, Decimal valor, string tipoServico, string obsCliente, string obsGerais, string fotoServico)
        {
            Servico InsertServico = new ServicoController().InsertServico(codCliente, dataServico, valor, tipoServico, obsCliente, obsGerais, fotoServico );
        
            return null;
        }

        protected void btnGravarServico_Click(object sender, EventArgs e)
        {
            try
            {
                int codCliente = Convert.ToInt32(Request["cbNomeCliente"]);
                string dataServico = this.txtData.Value;
                Decimal valor = Convert.ToDecimal(this.valor.Value);
                string tipoServico = Request["lblTipoServico"];
                string obsCliente = this.txtObsCliente.Value;
                string obsGerais = this.txtObsGerais.Value;

                string foto = Path.GetFileName(fotoServico.PostedFile.FileName);
                if (foto != "")
                    fotoServico.SaveAs(Server.MapPath("~/Adm/FotoServico/" + foto));

                Servico InsertServico = new ServicoController().InsertServico(codCliente, dataServico, valor, tipoServico, obsCliente, obsGerais, foto);

                Response.Write("<script>alert('Serviço gravado com sucesso!');</script>");
               

            }
            catch (Exception)
            {
                Response.Redirect("pageErro.html");
            }
            
            
        }
    }
}