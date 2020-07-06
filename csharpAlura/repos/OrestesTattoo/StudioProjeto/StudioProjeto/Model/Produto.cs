using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Model
{
    public class Produto
    {
        public Produto() { _idProduto = 0; }

        private int _idProduto;
        public int IdProduto
        {
            get { return _idProduto; }
            set { _idProduto = value; }
        }

        private string _titulo;
        public string Titulo
        {
            get { return _titulo; }
            set { _titulo = value; }
        }
        private string _descricao;
        public string Descricao
        {
            get { return _descricao; }
            set { _descricao = value; }
        }
        private string _valor;
        public string Valor
        {
            get { return _valor; }
            set { _valor = value; }
        }
        private string _estoque;
        public string Estoque
        {
            get { return _estoque; }
            set { _estoque = value; }
        }
        private string _foto;
        public string Foto
        {
            get { return _foto; }
            set { _foto = value; }
        }

    }
}
