class NegociacaoController{

    constructor() {

        let $ = document.querySelector.bind(document); //criando um alias para o metodo querySelector, como ele é associado ao document, para não perder essa associação utilizamos a função bind para indicar e não perder a ligação.
            //o $ é muito utilizado no framework jQuery
            //a função bind, presente em todas as funções, permite indicar qual será o valor de this quando ela for executada

            this._inputData =        $('#data');
        this._inputQuantidade =  $('#quantidade');
        this._inputValor =       $('#valor');

        this._listaNegociacoes = new ListaNegociacoes();
        
        this._negociacoesView = new NegociacoesView($('#negociacoesView'));
        this._negociacoesView.update(this._listaNegociacoes);

        this._mensagem = new Mensagem();
        this._mensagemView = new MensagemView($('#mensagemView'));
        this._mensagemView.update(this._mensagem);
    }

    adiciona(event){

        event.preventDefault();
        
        // adicionar a negociação em uma lista

        this._listaNegociacoes.adiciona(this._criaNegociacao());
        this._negociacoesView.update(this._listaNegociacoes);

        this._mensagem.texto = 'Negociação adicionada com Sucesso!';
        this._mensagemView.update(this._mensagem);

        this._limpaFormulario();



        //console.log(typeof(this._inputData.value));

        //let data = new Date(this._inputData.value.split('-')); //pega a data e divide com o split, em dia, mês e ano, transformando em um array
        // ['2016','11','12'].join(',') junta todo o array em uma strig, dividida por ","
        //date tambem aceita array de inteiros

        //let data = new Date(this._inputData.value.replace(/-/g, ',')); // faz a troca do - por ,  utilizando uma exp regular e o replace - paramentro g = global

        //  o construtor da data conta os meses a partir de 0 (janeiro), (1) fevereiro e etc
        // let data = new Date(...
        //     this._inputData.value
        //         .split('-') //transforma em array cada item procurando pelo -
        //         .map(function(item, indice){
        //             if(indice == 1) {
        //                 return item - 1;    //quando encontrar o item na segunda posição faz a subtração de 1 da data para corrigir o mês
        //             }
        //                 return item;
        //         })
        //     );

        // este codigo substitui o acima, diminuindo assim a verbosidade com as mesmas funcionalidades.
            // let data = new Date(... //spread operator
            //     this._inputData.value
            //         .split('-')
            //         .map((item, indice) => item - indice % 2)        //foi criada o arrow function =>
                                                            //quando o bloco de comando tem apenas uma instrução pode ser retirado as {}
                                                            // o return foi retirado porque a função entende que tem que ser retornado o resultado do calculo                                                
            //);

            //console.log(data);
        //let helper = new DAteHelper();
        //let data = DateHelper.textoParaData(this._inputData.value);
        //foi retirado porque na classe DateHelper foi definida como staticos seus metodos e assim não é necessário instancia-la, pode ser acessada diretamente


        // let negociacao = new Negociacao(
        //     DateHelper.textoParaData(this._inputData.value),
        //     this._inputQuantidade.value,
        //     this._inputValor.value,
        //     this._listaNegociacoes = new ListaNegociacoes()
        // );

        //console.log(negociacao);

        //console.log(DateHelper.dataParaTexto(negociacao.data));
                


        
        
    }

    apaga(){
        this._listaNegociacoes.esvazia();
        this._negociacoesView.update(this._listaNegociacoes);

        this._mensagem.texto = 'Negociações apagadas com sucesso!';
        this._mensagemView.update(this._mensagem);


    }


    //criação do metodo para criação da negociação.
    _criaNegociacao() {
        return new Negociacao(
            DateHelper.textoParaData(this._inputData.value),
            this._inputQuantidade.value,
            this._inputValor.value);
    }

    //criação do metodo para limpar os campos do formulário,
    //com o _ Underscore, indica que a função só pode ser chamada dentro desta classe.
    _limpaFormulario() {

        this._inputData.value = '';
        this._inputQuantidade.value = 1;
        this._inputValor.value = 0.0;
        this._inputData.focus();
    }


}