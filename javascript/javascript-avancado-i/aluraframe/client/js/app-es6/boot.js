import {currentInstance} from '../controllers/NegociacaoController';


let negociacaoController = new currentInstance();

document.querySelector('.form').onsubmit = negociacaoController.adiciona.bind(negociacaoController);
document.querySelector('#apagabt').onclick = negociacaoController.apaga.bind(negociacaoController);
