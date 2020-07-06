using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Model
{
    class ComboProduto
    {
        public ComboProduto() { _idProduto = 0; }

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
    }
}
