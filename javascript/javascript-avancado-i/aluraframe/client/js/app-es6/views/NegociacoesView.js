import {View} from './View';
import {DateHelper} from '../helpers/DateHelper';
import {currentInstance} from '../controllers/NegociacaoController';


export class NegociacoesView extends View {
    
    constructor(elemento){  //esse modelo é usado apenas se a clase filhote tem mais algum atributo alem dos iguais a clase pai, senão não é preciso repetir o metodo
        super(elemento); //Como a classe é extendida de View, ela herda os metodos, mas tem que passar o paramentro elemento 
                        //para a classe super -> superior pai.

        elemento.addEventListener('click', function(event) {
            if(event.target.nodeName == 'TH')
                currentInstance().ordena(event.target.textContent.toLowerCase());
        });
    }

        //template rendering
    template(model) {

        return `
        <table class="table table-hover table-bordered">
            <thead>
                <tr>
                <th >DATA</th>
                <th >QUANTIDADE</th>
                <th >VALOR</th>
                <th >VOLUME</th>
            </tr>
            </thead>
            
            <tbody>
                ${model._negociacoes.map((n) => {
                    return `
                        <tr>
                            <td>${DateHelper.dataParaTexto(n.data)}    </td>
                            <td>${n.quantidade}</td>
                            <td>${n.valor}</td>
                            <td>${n.volume}</td>
                        </tr>
                    
                    `
                }).join('')}
            </tbody>
            
            <tfoot>
                <td colspan='3'></td>
                <td>
                    ${model.volumeTotal}
                    <!-- ${model._negociacoes.reduce((total, n) => total + n.volume ,0.0)} -->

                </td>
            </tfoot>
        </table>
        `;
    } // a função map tranforma as negociacoes em um array e percorre através da função => arrow, gerando para cada item o codigo do return, apos isso
    //foi usado o join para transformar o array em string e se unir ao tbody

    //foi retirada do tfoot para ser colocado um codigo funcional
    /*(function(){
        let total = 0;
        model.negociacoes.forEach(n => total+= n.volume);
        return total;
    })()*/

    /*
    utilizando o reduce
     model.negociacoes.reduce(function(total, n){
                            return total + n.volume;
                        },0.0)
    */

 
}