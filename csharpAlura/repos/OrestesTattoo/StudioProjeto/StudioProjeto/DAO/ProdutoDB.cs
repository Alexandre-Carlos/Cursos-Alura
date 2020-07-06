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
    internal class ProdutoDB : Banco
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        internal Produto InserirProduto (string titulo, string descricao, string valor, string estoque, string foto)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "insert into tab_loja (Titulo, Descricao, Valor, Estoque, Foto) values (@titulo, @descricao, @valor, @estoque, @foto)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@titulo", titulo));
            comando.Parameters.Add(new SqlParameter("@descricao", descricao));
            comando.Parameters.Add(new SqlParameter("@valor", valor));
            comando.Parameters.Add(new SqlParameter("@estoque", estoque));
            comando.Parameters.Add(new SqlParameter("@foto", foto));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
                
            }
            catch (Exception e)
            {
                throw  new Exception("Houve um erro na gravação dos dados!" + e); 
            }

            return null;
        }

        internal Produto AlterarProduto (string idProduto, string titulo, string descricao, string valor, string foto)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "UPDATE TAB_LOJA SET TITULO = @titulo, DESCRICAO = @descricao, VALOR = @valor, FOTO = @foto WHERE idProduto = @idProduto";

            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@idProduto", idProduto));
            comando.Parameters.Add(new SqlParameter("@titulo", titulo));
            comando.Parameters.Add(new SqlParameter("@descricao", descricao));
            comando.Parameters.Add(new SqlParameter("@valor", valor));
            comando.Parameters.Add(new SqlParameter("@foto", foto));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação do Produto!" + e);
            }

            return null;
        }

        public List<Produto> ObterProduto(string nome)
        {
            List<Produto> lstProdNome = new List<Produto>();

            SqlConnection conn = new SqlConnection(conecta);
            string sql = "SELECT idProduto, Titulo, Descricao, Valor, Foto FROM TAB_LOJA WHERE FOTO = '"+nome+"' " ;

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();
            SqlDataReader obterProdNome = cmd.ExecuteReader();
            while (obterProdNome.Read())
            {
                Produto produto = new Produto();
                produto.IdProduto = Convert.ToInt32(obterProdNome["idProduto"].ToString());
                produto.Titulo = obterProdNome["Titulo"].ToString();
                produto.Descricao = obterProdNome["Descricao"].ToString();
                produto.Valor = obterProdNome["Valor"].ToString();
                produto.Foto = obterProdNome["Foto"].ToString();

                lstProdNome.Add(produto);
            }
            conn.Close();

            return lstProdNome;
        }

        public List<Produto> ObterProdutoId(string idProduto)
        {
            List<Produto> lstObtProdutos = new List<Produto>();

            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * from TAB_LOJA WHERE idProduto = " + idProduto;

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader obterProd = cmd.ExecuteReader();

            while (obterProd.Read())
            {
                Produto produto = new Produto();
                produto.IdProduto = Convert.ToInt32(obterProd["idProduto"].ToString());
                produto.Titulo = obterProd["Titulo"].ToString();
                produto.Descricao = obterProd["Descricao"].ToString();
                produto.Valor = obterProd["Valor"].ToString();
                produto.Foto = obterProd["Foto"].ToString();


                lstObtProdutos.Add(produto);
            }
            conn.Close();

            return lstObtProdutos;



        }

        public List<ComboProduto> PopulaProduto()
        {
            List<ComboProduto> lstComboProduto = new List<ComboProduto>();

            SqlConnection conn = new SqlConnection(conecta);

            string querySql = "select IdProduto, Titulo from tab_loja";

            SqlCommand cmd = new SqlCommand(querySql, conn);

            conn.Open();

            SqlDataReader popCombo = cmd.ExecuteReader();

            while (popCombo.Read())
            {
                ComboProduto comboProduto = new ComboProduto();
                comboProduto.IdProduto = Convert.ToInt32(popCombo["IdProduto"].ToString());
                comboProduto.Titulo = popCombo["Titulo"].ToString();

                lstComboProduto.Add(comboProduto);
            }

            conn.Close();

            return lstComboProduto;

        }


        public List<Produto> ConsultaProdutos()
        {
            List<Produto> lstProdutos = new List<Produto>();

            SqlConnection conn = new SqlConnection(conecta);
            string sql = "Select * from TAB_LOJA";
            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();
            SqlDataReader retProd = cmd.ExecuteReader();

            while (retProd.Read())
            {
                Produto produtos = new Produto();
                produtos.IdProduto = Convert.ToInt32(retProd["idProduto"].ToString());
                produtos.Titulo = retProd["Titulo"].ToString();
                produtos.Descricao = retProd["Descricao"].ToString();
                produtos.Valor = retProd["Valor"].ToString();
                produtos.Estoque = retProd["Estoque"].ToString();
                produtos.Foto = retProd["Foto"].ToString();

                lstProdutos.Add(produtos);
            }

            conn.Close();

            return lstProdutos;
        }
    }
}
