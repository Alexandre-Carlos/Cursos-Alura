using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.Model
{
    public class Palestrante
    {
        public Palestrante() { _codigo = 0; }

        private int _codigo;
        public int Codigo
        {
            get { return _codigo; }
            set { _codigo = value; }
        }

        private string _nome;
        public string Nome
        {
            get { return _nome; }
            set { _nome = value; }
        }
        //(Nome, Especialidade, Telefone, Descricao, Foto, Ativo, DataCadastro)
        private string _especialidade;
        public string Especialidade
        {
            get { return _especialidade; }
            set { _especialidade = value; }
        }

        private string _telefone;
        public string Telefone
        {
            get { return _telefone; }
            set { _telefone = value; }
        }

        private string _descricao;
        public string Descricao
        {
            get { return _descricao; }
            set { _descricao = value; }
        }
        
        private string _foto;
        public string Foto
        {
            get { return _foto; }
            set { _foto = value; }
        }

        private string _ativo;
        public string Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }

        private DateTime _dataCadastro;
        public DateTime DataCadastro
        {
            get { return _dataCadastro; }
            set { _dataCadastro = value; }
        }
    }
}