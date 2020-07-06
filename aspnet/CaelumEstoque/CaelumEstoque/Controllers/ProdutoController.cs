using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CaelumEstoque.DAO;
using CaelumEstoque.Controllers;
using CaelumEstoque.Models;
using System.Security.Cryptography.X509Certificates;
using CaelumEstoque.Filtros;

namespace CaelumEstoque.Controllers
{
    [AutorizacaoFilterAttribute]
    public class ProdutoController : Controller
    {
        // GET: Produto
        [Route("produtos", Name ="ListaProdutos")]
        
        public ActionResult Index()
        {
            ProdutosDAO dao = new ProdutosDAO();
            IList<Produto> produtos =  dao.Lista();
            //ViewBag.Produtos = produtos;
            return View(produtos);
        }


        public ActionResult Form()
        {
            CategoriasDAO categoriasDAO = new CategoriasDAO();
            IList<CategoriaDoProduto>categorias = categoriasDAO.Lista();
            ViewBag.Categorias = categorias;
            ViewBag.Produto = new Produto();
            return View();
        }

        [HttpPostAttribute]
        [ValidateAntiForgeryToken]
        public ActionResult Adiciona(Produto produto)
            //(String nome, float preco, string descricao, int quantidade, int categoriaId)
        {
            //Produto produto = new Produto()
            //{
            //    Nome = nome,
            //    Preco = preco,
            //    Descricao = descricao,
            //    Quantidade = quantidade,
            //    CategoriaId = categoriaId,
            //};

            int idDaInformatica = 1;
            if (produto.CategoriaId.Equals(idDaInformatica) && produto.Preco >= 100)
            {
                ModelState.AddModelError("produto.InformaticaComPrecoInvalido", "Produtos da categoria informatica devem ter preco maior ou igual a 100 reais");
            }



                //(produto.Nome != null && produto.Nome.Length < 20) não é mais feita deste jeito, na model produto é colocado a validação
            if (ModelState.IsValid)
            {
                ProdutosDAO dao = new ProdutosDAO();
                dao.Adiciona(produto);
                return RedirectToAction("Index", "Produto");
            }
            else
            {
                ViewBag.Produto = produto;
                CategoriasDAO categoriasDAO = new CategoriasDAO();
                ViewBag.Categorias = categoriasDAO.Lista();
                return View("Form");
            }
        }

        [Route("produtos/{id}", Name ="VisualizaProduto")]
        public ActionResult Visualiza(int id)
        {
            ProdutosDAO dao = new ProdutosDAO();
            Produto produto = dao.BuscaPorId(id);
            ViewBag.Produto = produto;
            return View();
        }

        public ActionResult DecrementaQtd(int id)
        {
            ProdutosDAO dao = new ProdutosDAO();
            Produto produto = dao.BuscaPorId(id);
            produto.Quantidade--;
            dao.Atualiza(produto);
            return Json(produto);
        }
    }
}