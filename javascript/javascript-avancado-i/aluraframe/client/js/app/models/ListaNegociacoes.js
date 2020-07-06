"use strict";

System.register([], function (_export, _context) {
    "use strict";

    var _createClass, ListaNegociacoes;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
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

            _export("ListaNegociacoes", ListaNegociacoes = function () {

                //essa classe de lista de negociações foi criada para encapsular as negociações, para que assim após ser feita a inclusão, não possa ser editada ou deletada.
                //como o array simples pode ser manipulado pelos seus metodos push, pop e etc, foi feito os metodos na classe.

                //definição de atributos de classe no construtor
                function ListaNegociacoes() {
                    _classCallCheck(this, ListaNegociacoes);

                    this._negociacoes = [];
                    //this._armadilha = armadilha;
                    //this._contexto = contexto;
                }

                _createClass(ListaNegociacoes, [{
                    key: "adiciona",
                    value: function adiciona(negociacao) {

                        this._negociacoes.push(negociacao);

                        //Reflect.apply(this._armadilha, this._contexto, [this]); //recebe o contexto para executar como se estivesse na classe que chamou a função
                        //e o [this] passa a clase atual lista negociações
                        //this._armadilha(this);
                    }
                }, {
                    key: "esvazia",
                    value: function esvazia() {
                        this._negociacoes = [];

                        //Reflect.apply(this._armadilha, this._contexto, [this]);
                        //this._armadilha(this);
                    }
                }, {
                    key: "ordena",
                    value: function ordena(criterio) {

                        this._negociacoes.sort(criterio);
                    }
                }, {
                    key: "inverteOrdem",
                    value: function inverteOrdem() {
                        this._negociacoes.reverse();
                    }
                }, {
                    key: "negociacoes",
                    get: function get() {

                        //return this._negociacoes;
                        return [].concat(this._negociacoes); //progamação defensiva, cria um array em branco e concatena com a negociação, assim caso alguem tente
                        //alterar por outro metodo que não seja o getter, não consegue zerar ou alterar o conteudo dele.
                    }
                }, {
                    key: "volumeTotal",
                    get: function get() {
                        return this._negociacoes.reduce(function (total, n) {
                            return total + n.volume;
                        }, 0.0);
                    }
                }]);

                return ListaNegociacoes;
            }());

            _export("ListaNegociacoes", ListaNegociacoes);
        }
    };
});
//# sourceMappingURL=ListaNegociacoes.js.map