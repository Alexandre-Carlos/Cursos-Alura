using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;

namespace Alura.ListaLeitura.App
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            //services.AddRouting();
            services.AddMvc();
        }

        public void Configure(IApplicationBuilder app)
        {
            app.UseDeveloperExceptionPage();
            app.UseMvcWithDefaultRoute();
            
            
            //Roteamento padão do asp.net core - apos instalação do pacote 
            //Install - Package Microsoft.AspNetCore.Mvc - Version 2.0.2


            //roteamento manual desativado
            //var builder = new RouteBuilder(app);
            //builder.MapRoute("{classe}/{metodo}", RoteamentoPadrao.TratamentoPadrao);
            
            //Substituida pela classe RoteamentoPadrão com o Reflection
            //builder.MapRoute("Livros/ParaLer", LivrosLogica.Paraler);
            //builder.MapRoute("Livros/Lendo", LivrosLogica.Lendo);
            //builder.MapRoute("Livros/Lidos", LivrosLogica.Lidos);
            //builder.MapRoute("Livros/Detalhes/{id:int}", LivrosLogica.Detalhes);
            //builder.MapRoute("Cadastro/NovoLivro/{nome}/{autor}", CadastroLogica.NovoLivro);
            //builder.MapRoute("Cadastro/ExibeFormulario", CadastroLogica.ExibeFormulario);
            //builder.MapRoute("Cadastro/Incluir", CadastroLogica.Incluir);


            //var rotas = builder.Build();

            //app.UseRouter(rotas);

            //app.Run(Roteamento);

        }



        //Foi substituido pelo roteamento nativo do asp.net core
        //public Task Roteamento(HttpContext context)
        //{

        //    var _repo = new LivroRepositorioCSV();
        //    var caminhoAtendidos = new Dictionary<string, RequestDelegate>
        //    {
        //        { "/Livros/ParaLer", LivrosParaler},
        //        { "/Livros/Lendo", LivrosLendo },
        //        { "/Livros/Lidos", LivrosLidos }

        //    };
        //    if (caminhoAtendidos.ContainsKey(context.Request.Path))
        //    {
        //        var metodo = caminhoAtendidos[context.Request.Path];
        //        return metodo.Invoke(context);
        //    }

        //    context.Response.StatusCode = 404;
        //    return context.Response.WriteAsync("Caminho Inexistente");


        //}

    }
}