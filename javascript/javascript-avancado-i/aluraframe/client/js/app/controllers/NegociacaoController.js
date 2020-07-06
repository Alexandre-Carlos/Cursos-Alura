'use strict';

System.register(['../models/ListaNegociacoes', '../models/Mensagem', '../views/NegociacoesView', '../views/MensagemView', '../services/NegociacaoService', '../helpers/DateHelper', '../helpers/Bind', '../models/Negociacao'], function (_export, _context) {
    "use strict";

    var ListaNegociacoes, Mensagem, NegociacoesView, MensagemView, NegociacaoService, DateHelper, Bind, Negociacao, _createClass, NegociacaoController, negociacaoController;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_modelsListaNegociacoes) {
            ListaNegociacoes = _modelsListaNegociacoes.ListaNegociacoes;
        }, function (_modelsMensagem) {
            Mensagem = _modelsMensagem.Mensagem;
        }, function (_viewsNegociacoesView) {
            NegociacoesView = _viewsNegociacoesView.NegociacoesView;
        }, function (_viewsMensagemView) {
            MensagemView = _viewsMensagemView.MensagemView;
        }, function (_servicesNegociacaoService) {
            NegociacaoService = _servicesNegociacaoService.NegociacaoService;
        }, function (_helpersDateHelper) {
            DateHelper = _helpersDateHelper.DateHelper;
        }, function (_helpersBind) {
            Bind = _helpersBind.Bind;
        }, function (_modelsNegociacao) {
            Negociacao = _modelsNegociacao.Negociacao;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            NegociacaoController = function () {
                function NegociacaoController() {
                    _classCallCheck(this, NegociacaoController);

                    this._ordemAtual = ''; // quando a página for carregada, não tem critério. Só passa a ter quando ele começa a clicar nas colunas
                    var $ = document.querySelector.bind(document); //criando um alias para o metodo querySelector, como ele é associado ao document, para não perder essa associação utilizamos a função bind para indicar e não perder a ligação.
                    //o $ é muito utilizado no framework jQuery
                    //a função bind, presente em todas as funções, permite indicar qual será o valor de this quando ela for executada

                    this._inputData = $('#data');
                    this._inputQuantidade = $('#quantidade');
                    this._inputValor = $('#valor');

                    this._negociacoesView = new NegociacoesView($('#negociacoesView'));

                    this._listaNegociacoes = new Bind(new ListaNegociacoes(), new NegociacoesView($('#negociacoesView')), 'adiciona', 'esvazia', 'ordena', 'inverteOrdem');

                    /*this._listaNegociacoes = new Bind(
                        new ListaNegociacoes(),
                        this._negociacoesView,
                        'adiciona', 'esvazia', 'ordena');*/

                    /*this._listaNegociacoes = ProxyFactory.create(
                        new ListaNegociacoes(),
                        ['adiciona', 'esvazia'], (model) => this._negociacoesView.update(model));
                        */
                    /* this._listaNegociacoes = new ListaNegociacoes(this, function(model){
                        this._negociacoesView.update(model);
                    });
                    */

                    /* this._listaNegociacoes = new ListaNegociacoes(model => this._negociacoesView.update(model));*/

                    //o escopo do this de um arrow functio é lexico, ele não é dinamico igual o escopo de uma function, ele não se modifica de acordo com o contexto
                    //independente de onde for chamada a função unificada a criação do objeto _ListaNegociação, ele será executado baseado no this do local da sua criação.

                    //this._negociacoesView.update(this._listaNegociacoes);

                    this._mensagemView = new MensagemView($('#mensagemView'));

                    this._mensagem = new Bind(new Mensagem(), this._mensagemView, 'texto');

                    /*this._mensagem = ProxyFactory.create(
                        new Mensagem(), 
                        ['texto'], model => this._mensagemView.update(model));
                        */

                    //this._mensagem = new Mensagem();
                    //this._mensagemView.update(this._mensagem);

                    /*ConnectionFactory
                        .getConnection()
                        .then(connection => {
                            
                            new NegociacaoDao(connection)
                            .listatodos()
                            .then(negociacoes => {
                                negociacoes.forEach(negociacao => {
                                this._listaNegociacoes.adiciona(negociacao);
                                });
                            });
                        });*/

                    this._service = new NegociacaoService();

                    this._init();
                }

                _createClass(NegociacaoController, [{
                    key: '_init',
                    value: function _init() {
                        var _this = this;

                        this._service.lista().then(function (negociacoes) {
                            return negociacoes.forEach(function (negociacao) {
                                return _this._listaNegociacoes.adiciona(negociacao);
                            });
                        }).catch(function (erro) {
                            console.log(erro);
                            _this._mensagem.texto = erro;
                        });

                        /*
                        ConnectionFactory
                            .getConnection()
                            .then(connection => new NegociacaoDao(connection))
                            .then(dao => dao.listatodos())
                            .then(negociacoes => 
                                    negociacoes.forEach(negociacao => 
                                    this._listaNegociacoes.adiciona(negociacao)))
                            .catch(erro => {
                                console.log(erro);
                                this._mensagem.texto = error;
                            });
                        */

                        setInterval(function () {
                            _this.importaNegociacoes();
                        }, 3000);
                    }
                }, {
                    key: 'adiciona',
                    value: function adiciona(event) {
                        var _this2 = this;

                        event.preventDefault();

                        var negociacao = this._criaNegociacao();

                        this._service.cadastra(negociacao).then(function (mensagem) {
                            _this2._listaNegociacoes.adiciona(negociacao);
                            _this2._mensagem.texto = mensagem;
                            _this2._limpaFormulario();
                        }).catch(function (erro) {
                            return _this2._mensagem.texto = erro;
                        });

                        // adicionar a negociação através do DAO.

                        /*ConnectionFactory
                            .getConnection()
                            .then(connection => {
                                  let negociacao = this._criaNegociacao();
                                  new NegociacaoDao(connection)
                                    .adiciona(negociacao)
                                    .then(() => {
                                        this._listaNegociacoes.adiciona(negociacao);
                                        this._mensagem.texto = 'Negociação adicionada com sucesso';
                                        this._limpaFormulario();
                                    })
                            }).catch(erro => this._mensagem.texto = erro);
                            */

                        // adicionar a negociação em uma lista

                        /*
                        try{
                              this._listaNegociacoes.adiciona(this._criaNegociacao());
                              this._negociacoesView.update(this._listaNegociacoes); 
                              this._mensagem.texto = 'Negociação adicionada com Sucesso!';
                            //this._mensagemView.update(this._mensagem);
                            this._limpaFormulario();
                        }catch(erro){
                            this._mensagem.texto = erro;
                        }
                        */

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
                }, {
                    key: 'importaNegociacoes',
                    value: function importaNegociacoes() {
                        var _this3 = this;

                        this._service.importa(this._listaNegociacoes.negociacoes).then(function (negociacoes) {
                            return negociacoes.forEach(function (negociacao) {
                                _this3._listaNegociacoes.adiciona(negociacao);
                                _this3._mensagem.texto = 'Negociações do período importadas';
                            });
                        }).catch(function (erro) {
                            return _this3._mensagem.texto = erro;
                        });

                        /*this._service
                        .obterNegociacoes()
                        .then(negociacoes => 
                            negociacoes.filter(negociacao =>
                                !this._listaNegociacoes.negociacoes.some(negociacaoExistente =>
                                    JSON.stringify(negociacao) == JSON.stringify(negociacaoExistente)))
                        )
                        .then(negociacoes => negociacoes.forEach(negociacao => {
                           this._listaNegociacoes.adiciona(negociacao);
                           this._mensagem.texto = 'Negociações do período importadas'
                        })).catch(error => this._mensagem.texto = error);  
                        */

                        /*
                        service
                        .obterNegociacoes()
                        .then(negociacoes => {
                          negociacoes.forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                          this._mensagem.texto = 'Negociações do período importadas com sucesso';
                        })
                        .catch(error => this._mensagem.texto = error);  
                        */

                        /*let service = new NegociacaoService();
                        
                        Promise.all([
                            service.obterNegociacoesDaSemana(),
                            service.obterNegociacoesDaSemanaAnterior(),
                            service.obterNegociacoesDaSemanaRetrasada()]
                            ).then(negociacoes => {
                                negociacoes
                                .reduce((arrayAchatado, array) => arrayAchatado.concat(array), [])
                                .forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                                this._mensagem.texto = 'Negociações importadas com sucesso!';
                            })
                            .catch(error => this._mensagem.texto = error);
                            */
                        /*
                        let promise = service.obterNegociacoesDaSemana();
                        promise
                            .then(negociacoes => {
                                negociacoes.forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                                this._mensagem.texto = 'Negociações da semana obtida com sucesso';
                            })
                            .catch(erro => this._mensagem.texto = erro);
                          let promise = service.obterNegociacoesDaSemanaAnterior();
                        promise
                            .then(negociacoes => {
                                negociacoes.forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                                this._mensagem.texto = 'Negociações da semana obtida com sucesso';
                            })
                            .catch(erro => this._mensagem.texto = erro);
                          let promise = service.obterNegociacoesDaSemanaRetrasada();
                        promise
                            .then(negociacoes => {
                                negociacoes.forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                                this._mensagem.texto = 'Negociações da semana obtida com sucesso';
                            })
                            .catch(erro => this._mensagem.texto = erro);
                        */

                        //função de callback passada na chamada da função obter negociacoes da semana.
                        /*service.obterNegociacoesDaSemana((erro, negociacoes) => {
                            if(erro){
                                this._mensagem.texto = erro;
                                return;
                            }
                              negociacoes.forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                              //forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                            this._mensagem.texto = 'Negociações importadas com sucesso!';
                          });*/
                    }
                }, {
                    key: 'apaga',
                    value: function apaga() {
                        var _this4 = this;

                        this._service.apaga().then(function (mensagem) {
                            _this4._mensagem.texto = mensagem;
                            _this4._listaNegociacoes.esvazia();
                        }).catch(function (error) {
                            return _this4._mensagem.texto = erro;
                        });

                        /*
                        ConnectionFactory
                        .getConnection()
                        .then(connection => new NegociacaoDao(connection))
                        .then(dao => dao.apagaTodos())
                        .then(mensagem => {
                            this._mensagem.texto = mensagem;
                            this._listaNegociacoes.esvazia();
                        })
                          */

                        //this._listaNegociacoes.esvazia();
                        //this._negociacoesView.update(this._listaNegociacoes); //esse metodo será executado na colasse listaNegociacoes

                        //this._mensagem.texto = 'Negociações apagadas com sucesso!';
                        //this._mensagemView.update(this._mensagem);
                    }
                }, {
                    key: '_criaNegociacao',
                    value: function _criaNegociacao() {
                        return new Negociacao(DateHelper.textoParaData(this._inputData.value), parseInt(this._inputQuantidade.value), parseFloat(this._inputValor.value));
                    }
                }, {
                    key: '_limpaFormulario',
                    value: function _limpaFormulario() {

                        this._inputData.value = '';
                        this._inputQuantidade.value = 1;
                        this._inputValor.value = 0.0;
                        this._inputData.focus();
                    }
                }, {
                    key: 'ordena',
                    value: function ordena(coluna) {
                        if (this, this._ordemAtual == coluna) {
                            this._listaNegociacoes.inverteOrdem();
                        } else {
                            this._listaNegociacoes.ordena(function (a, b) {
                                return a[coluna] - b[coluna];
                            });
                        }
                        this._ordemAtual = coluna;
                    }
                }]);

                return NegociacaoController;
            }();

            negociacaoController = new NegociacaoController();
            function currentInstance() {
                return negociacaoController;
            }

            _export('currentInstance', currentInstance);
        }
    };
});
//# sourceMappingURL=NegociacaoController.js.map