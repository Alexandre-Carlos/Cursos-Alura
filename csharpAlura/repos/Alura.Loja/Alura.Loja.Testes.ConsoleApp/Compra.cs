namespace Alura.Loja.Testes.ConsoleApp
{
    public class Compra
    {
      
        public int Id { get; set; }
        public int Quantidade { get; internal set; }
        public int ProdutoId { get; set; }
        public Produto Produto { get; internal set; }
        public double Preco { get; internal set; }


        public override string ToString()
        {
            var totalCompra = this.Quantidade * this.Preco;
            return $"Compra: {this.Quantidade}, {Produto.Unidade}, {this.ProdutoId},{Produto.Nome}, Total = {totalCompra}";
        }

    }


}