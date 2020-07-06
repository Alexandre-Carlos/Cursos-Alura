using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.DAO
{
    public class Banco
    {
        public static string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        private string _strConexao;
        private SqlConnection _conn;
        private SqlTransaction _transacao;

        private SqlCommand _commandSQL;
        protected SqlCommand ComandoSQL
        {
            get { return _commandSQL; }
            set { _commandSQL = value; }
        }

        protected Banco()
        {
            //_strConexao = @"Data Source=den1.mssql3.gear.host;Initial Catalog=dadoslogin;Integrated Security=True;User Id=dadoslogin;Password=Abcd!0001";
            _strConexao = conecta;
            _conn = new SqlConnection(_strConexao);
            _commandSQL = new SqlCommand();
            _commandSQL.Connection = _conn;
        }

        protected Banco(string stringConexao)
        {
            _strConexao = stringConexao;
            _conn = new SqlConnection(_strConexao);
            _commandSQL = new SqlCommand();
            _commandSQL.Connection = _conn;
        }

        protected bool AbreConexao(bool transacao)
        {
            try
            {
                _conn.Open();
                if (transacao)
                {
                    _transacao = _conn.BeginTransaction();
                    _commandSQL.Transaction = _transacao;
                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        protected bool FechaConexao()
        {
            try
            {
                if (_conn.State == ConnectionState.Open)
                    _conn.Close();

                return true;

            }
            catch (Exception)
            {
                return false;
            }
        }

        protected void FinalizarTransacaoi(bool commit)
        {
            if (commit)
                _transacao.Commit();
            else
                _transacao.Rollback();

            FechaConexao();
        }

        protected int ExecutaComando(bool transacao)
        {
            if (_commandSQL.CommandText.Trim() == string.Empty)
                throw new Exception("Não há instrução SQL a ser executada.");

            int retorno;
            AbreConexao(transacao);
            try
            {
                retorno = ComandoSQL.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                retorno = -1;
                throw new Exception("Erro ao executar o comando SQL: ", ex);
            }
            finally
            {
                if (transacao)
                    FechaConexao();
            }
            return retorno;
        }


        protected int ExecutaComando(bool transacao, out int ultimocodigo)
        {
            if (_commandSQL.CommandText.Trim() == string.Empty)
                throw new Exception("Não há instrução SQL a ser executada.");

            int retorno;
            ultimocodigo = 0;
            AbreConexao(transacao);
            try
            {
                ultimocodigo = Convert.ToInt32(_commandSQL.ExecuteScalar());
                retorno = 1;
            }
            catch (Exception ex)
            {
                retorno = -1;
                throw new Exception("Erro ao executar o comando SQL", ex);
            }
            finally
            {
                if (transacao)
                    FechaConexao();
            }
            return retorno;
        }

        protected DataTable ExecutaSelect()
        {
            if (_commandSQL.CommandText.Trim() == string.Empty)
                throw new Exception("Não há instrução SQL a ser executada.");

            AbreConexao(false);
            DataTable dt = new DataTable();
            try
            {
                dt.Load(_commandSQL.ExecuteReader());
            }
            catch (Exception ex)
            {
                dt = null;
                throw new Exception("Erro ao executar o comando SQL", ex);
            }
            finally
            {
                FechaConexao();
            }
            return dt;
        }

        protected double ExecutaScalar()
        {
            if (_commandSQL.CommandText.Trim() == string.Empty)
                throw new Exception("Não há instrução SQL a ser executada.");

            AbreConexao(false);
            double retorno;

            try
            {
                retorno = Convert.ToDouble(_commandSQL.ExecuteScalar());
            }
            catch (Exception ex)
            {
                retorno = -1;
                throw new Exception("Erro ao executar o comando SQL", ex);
            }
            finally
            {
                FechaConexao();
            }
            return retorno;
        }

    }
}