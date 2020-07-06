using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.DAO
{
    internal class ClienteDB
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        internal Clientes InsertCliente(string nomecompleto, string cpf, string telefone, string endereco, string bairro, string cep, string sexo, string datanascimento, string foto)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO TAB_CLIENTES (NomeCompleto, CPF, Telefone, Endereco, Bairro, CEP, Sexo, DataNascimento, Foto) VALUES (@nomeCompleto, @cpf, @telefone, @endereco, @bairro, @cep, @sexo, @datanascimento, @foto)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@nomeCompleto", nomecompleto));
            comando.Parameters.Add(new SqlParameter("@cpf", cpf));
            comando.Parameters.Add(new SqlParameter("@telefone", telefone));
            comando.Parameters.Add(new SqlParameter("@endereco", endereco));
            comando.Parameters.Add(new SqlParameter("@bairro", bairro));
            comando.Parameters.Add(new SqlParameter("@cep", cep));
            comando.Parameters.Add(new SqlParameter("@sexo", sexo));
            comando.Parameters.Add(new SqlParameter("@datanascimento", datanascimento));
            comando.Parameters.Add(new SqlParameter("foto", foto));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação do cliente!" + e);
            }

            return null;
        }

        internal Clientes AlterarCliente(string idCliente, string nomecompleto, string cpf, string telefone, string endereco, string bairro, string cep, string sexo, string datanascimento, string foto)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "UPDATE TAB_CLIENTES SET NOMECOMPLETO = @nomeCompleto, CPF = @cpf, Telefone = @telefone, Endereco = @endereco, Bairro = @bairro, CEP = @cep, Sexo = @sexo, DataNascimento = @datanascimento, Foto = @foto WHERE idCliente = @idCliente";

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@idCliente", idCliente));
            comando.Parameters.Add(new SqlParameter("@nomeCompleto", nomecompleto));
            comando.Parameters.Add(new SqlParameter("@cpf", cpf));
            comando.Parameters.Add(new SqlParameter("@telefone", telefone));
            comando.Parameters.Add(new SqlParameter("@endereco", endereco));
            comando.Parameters.Add(new SqlParameter("@bairro", bairro));
            comando.Parameters.Add(new SqlParameter("@cep", cep));
            comando.Parameters.Add(new SqlParameter("@sexo", sexo));
            comando.Parameters.Add(new SqlParameter("@datanascimento", datanascimento));
            comando.Parameters.Add(new SqlParameter("@foto", foto));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação do cliente!" + e);
            }

            return null;
        }

        public List<Clientes> ObterClienteId(string idCliente)
        {
            List<Clientes> lstObtClientes = new List<Clientes>();

            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * from TAB_CLIENTES WHERE idCliente = " + idCliente;

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader obterCli = cmd.ExecuteReader();

            while (obterCli.Read())
            {
                Clientes cliente = new Clientes();
                cliente.IdCliente = Convert.ToInt32(obterCli["idCliente"].ToString());
                cliente.NomeCliente = obterCli["NomeCompleto"].ToString();
                cliente.Cpf = obterCli["CPF"].ToString();
                cliente.Telefone = obterCli["Telefone"].ToString();
                cliente.Endereco = obterCli["Endereco"].ToString();
                cliente.Bairro = obterCli["Bairro"].ToString();
                cliente.Cep = obterCli["CEP"].ToString();
                cliente.Sexo = obterCli["Sexo"].ToString();
                cliente.DataNascimento = obterCli["DataNascimento"].ToString();
                cliente.Foto = obterCli["Foto"].ToString();
                cliente.DataCadastro = Convert.ToDateTime(obterCli["DataCadastro"].ToString());

                lstObtClientes.Add(cliente);
            }
            conn.Close();

            return lstObtClientes;



        }

        public List<ComboCliente> PopulaCliente()
        {
            List<ComboCliente> lstComboCliente = new List<ComboCliente>();

            SqlConnection conn = new SqlConnection(conecta);

            string querySql = "select IdCliente, NomeCompleto from tab_clientes";

            SqlCommand cmd = new SqlCommand(querySql, conn);

            conn.Open();

            SqlDataReader popCombo = cmd.ExecuteReader();

            while (popCombo.Read())
            {
                ComboCliente comboCliente = new ComboCliente();
                comboCliente.IdCliente = Convert.ToInt32(popCombo["idCliente"].ToString());
                comboCliente.NomeCliente = popCombo["NomeCompleto"].ToString();

                lstComboCliente.Add(comboCliente);
            }

            conn.Close();

            return lstComboCliente;

        }

        public List<Clientes> ConsultarClientes()
        {
            List<Clientes> lstClientes = new List<Clientes>();

            SqlConnection conn = new SqlConnection(conecta);
            string sql = "Select * from TAB_CLIENTES";
            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();
            SqlDataReader retCli = cmd.ExecuteReader();

            while (retCli.Read())
            {
                Clientes cliente = new Clientes();
                cliente.IdCliente = Convert.ToInt32(retCli["idCliente"].ToString());
                cliente.NomeCliente = retCli["NomeCompleto"].ToString();
                cliente.Cpf = retCli["CPF"].ToString();
                cliente.Telefone = retCli["Telefone"].ToString();
                cliente.Endereco = retCli["Endereco"].ToString();
                cliente.Bairro = retCli["Bairro"].ToString();
                cliente.Cep = retCli["CEP"].ToString();
                cliente.Sexo = retCli["Sexo"].ToString();
                cliente.DataNascimento = retCli["DataNascimento"].ToString();
                cliente.Foto = retCli["Foto"].ToString();
                cliente.DataCadastro = Convert.ToDateTime(retCli["DataCadastro"].ToString());

                lstClientes.Add(cliente);
            }

            conn.Close();

            return lstClientes;
        }



    }
}
