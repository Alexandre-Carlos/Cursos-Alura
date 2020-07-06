import {HttpService} from './HttpService';
import {ConnectionFactory} from './ConnectionFactory';
import {NegociacaoDao} from '../dao/NegociacaoDao';
import {Negociacao} from '../models/Negociacao';


export class NegociacaoService{

    constructor(){
        this._http = new HttpService();
    }


    //função callback (cb)
    obterNegociacoesDaSemana() {

        return new Promise((resolve, reject) => {

            this._http
            .get('negociacoes/semana')
            .then(negociacoes => {
                resolve(negociacoes.map(objeto => new Negociacao( new Date(objeto.data), objeto.quantidade, objeto.valor)))   
            })
            .catch(erro => {
                console.log(erro);
                reject('Não foi possível obter as negociações da semana!');
                
            });
            
           /* let xhr = new XMLHttpRequest();
            xhr.open('GET', '/negociacoes/semana');
            
                    Estados possíveis de um requisição AJAX? Listaremos abaixo os estados:
    
                    0: requisição ainda não iniciada
                    1: conexão com o servidor estabelecida
                    2: requisição recebida
                    3: processando requisição
                    4: requisição está concluída e a resposta está pronta
    
                  //status 200 operação realizada com sucesso
            
            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4) {
                    if(xhr.status == 200){ 
                        console.log('Obtendo as negociações do servidor!');
                        
                        //JSON.parse pega o xhr que é um texto e retorna em objetos javascript
                        //map - para cada objeto dentro desta lista é convertida em uma instancia de negociaçao, gerando um novo array
                        //forEach - percorre o array e adiciona cada utem de negociaçao na listaNegociacoes
                        //cb(null, JSON.parse(xhr.responseText)
                        resolve(JSON.parse(xhr.responseText)
                        .map(objeto => new Negociacao( new Date(objeto.data), objeto.quantidade, objeto.valor)));
                        //.forEach(negociacao => this._listaNegociacoes.adiciona(negociacao));
                        //this._mensagem.texto='Negociações importadas com sucesso!';
    
                    } else {
                        console.log(xhr.responseText);
                        reject('Não foi possível obter as negociações da semana!');
                         //this._mensagem.texto='Não foi possível obter as negociações!';
                    }
                }
            }
            xhr.send();
            */
        });
    }

    obterNegociacoesDaSemanaAnterior() {

        return new Promise((resolve, reject) => {

            this._http
            .get('negociacoes/anterior')
            .then(negociacoes => {
                resolve(negociacoes.map(objeto => new Negociacao( new Date(objeto.data), objeto.quantidade, objeto.valor)))   
            })
            .catch(erro => {
                console.log(erro);
                reject('Não foi possível obter as negociações da semana anterior!');
                
            });
        });
    }

    obterNegociacoesDaSemanaRetrasada() {

        return new Promise((resolve, reject) => {

            this._http
            .get('negociacoes/retrasada')
            .then(negociacoes => {
                resolve(negociacoes.map(objeto => new Negociacao( new Date(objeto.data), objeto.quantidade, objeto.valor)))   
            })
            .catch(erro => {
                console.log(erro);
                reject('Não foi possível obter as negociações da semana retrasada!');
                
            });
        });
    }
 
    obterNegociacoes() {

        return Promise.all([
            this.obterNegociacoesDaSemana(),
            this.obterNegociacoesDaSemanaAnterior(),
            this.obterNegociacoesDaSemanaRetrasada()
        ]).then(periodos => {

            let negociacoes = periodos
                .reduce((dados, periodo) => dados.concat(periodo), []);

            return negociacoes;

        }).catch(erro => {
            throw new Error(erro);
        });

    } 

    cadastra(negociacao) {

        return ConnectionFactory
            .getConnection()
            .then(connection => new NegociacaoDao(connection))
            .then(dao => dao.adiciona(negociacao))
            .then(() => 'Negociacao adicionada com sucesso')
            .catch (erro => {
                console.log(erro);
                throw new Error('Não foi possível adicionar a negociação');
            });
    }

    lista(){
        
        return ConnectionFactory
            .getConnection()
            .then(connection => new NegociacaoDao(connection))
            .then(dao => dao.listatodos())
            .catch(erro => {
                console.log(erro);
                throw new Error('Não foi possível obter as negociações');
            })
    }

    apaga() {

        return ConnectionFactory
            .getConnection()
            .then(connection => new NegociacaoDao(connection))
            .then(dao => dao.apagaTodos())
            .then(() => 'Negociações apagadas com sucesso')
            .catch(erro => {
                console.log(erro);
                throw new Error('Não foi possível apagar as negociações');
            })
         


    }

    importa(listaAtual) {

        return this.obterNegociacoes()
        .then(negociacoes => 
            negociacoes.filter(negociacao =>
                !listaAtual.some(negociacaoExistente =>
                    JSON.stringify(negociacao) == JSON.stringify(negociacaoExistente)))
        )
        .catch(erro => {
            console.log(erro);
            throw new Error('Não foi possível buscar negociações para importa');
        });
        

    }
}






