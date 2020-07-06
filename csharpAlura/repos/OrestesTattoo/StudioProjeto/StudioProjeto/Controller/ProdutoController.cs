using StudioProjeto.DAO;
using StudioProjeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudioProjeto.Controller
{
    public class ProdutoController
    {
        ProdutoDB prodDB = new ProdutoDB();

        public Produto InserirProduto (string titulo, string descricao, string valor, string estoque, string foto)
        {
            return new ProdutoDB().InserirProduto(titulo, descricao, valor, estoque, foto);
        }

        public Produto AlterarProduto(string idProduto, string titulo, string descricao, string valor, string foto)
        {
            return new ProdutoDB().AlterarProduto(idProduto, titulo, descricao, valor, foto);
        }

        public List<Produto> ConsultaProdutos()
        {
            return new ProdutoDB().ConsultaProdutos();
        }

        public List<Produto> ObterProduto(string nome)
        {
            return new ProdutoDB().ObterProduto(nome);
        }

        public List<Produto> ObterProdutoId(string idProduto)
        {
            return new ProdutoDB().ObterProdutoId(idProduto);
        }

        public ProdutoController() { }
    }
}
