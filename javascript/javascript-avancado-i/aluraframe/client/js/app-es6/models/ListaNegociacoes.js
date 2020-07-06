


export class ListaNegociacoes {


//essa classe de lista de negociações foi criada para encapsular as negociações, para que assim após ser feita a inclusão, não possa ser editada ou deletada.
//como o array simples pode ser manipulado pelos seus metodos push, pop e etc, foi feito os metodos na classe.

    //definição de atributos de classe no construtor
    constructor() {

        this._negociacoes = [];
        //this._armadilha = armadilha;
        //this._contexto = contexto;
    }

    adiciona(negociacao) {

        this._negociacoes.push(negociacao);
        
        //Reflect.apply(this._armadilha, this._contexto, [this]); //recebe o contexto para executar como se estivesse na classe que chamou a função
                                                                    //e o [this] passa a clase atual lista negociações
        //this._armadilha(this);
    }

    get negociacoes() {

        //return this._negociacoes;
        return [].concat(this._negociacoes); //progamação defensiva, cria um array em branco e concatena com a negociação, assim caso alguem tente
                                            //alterar por outro metodo que não seja o getter, não consegue zerar ou alterar o conteudo dele.
    }

    esvazia() {
        this._negociacoes = [];
        
        //Reflect.apply(this._armadilha, this._contexto, [this]);
        //this._armadilha(this);
    }


    get volumeTotal() {
        return this._negociacoes.reduce((total, n) => total + n.volume, 0.0);
     }


     ordena(criterio) {

        this._negociacoes.sort(criterio);
    }

    inverteOrdem() {
        this._negociacoes.reverse();
    }
}