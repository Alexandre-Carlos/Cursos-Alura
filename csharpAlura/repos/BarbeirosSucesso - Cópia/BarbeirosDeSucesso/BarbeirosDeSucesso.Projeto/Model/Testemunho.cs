using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BarbeirosDeSucesso.Projeto.Model
{
    public class Testemunho
    {
        public Testemunho() { _codigo = 0; }

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

        private string _tipo;
        public string Tipo
        {
            get { return _tipo; }
            set { _tipo = value; }
        }

        private string _textoTestemunho;
        public string TextTestemunho
        {
            get { return _textoTestemunho; }
            set { _textoTestemunho = value; }
        }

        private string _status;
        public string Status
        {
            get { return _status; }
            set { _status = value; }
        }

        private DateTime _dataInclusao;
        public DateTime DataInclusao
        {
            get { return _dataInclusao; }
            set { _dataInclusao = value; }
        }
    }
}