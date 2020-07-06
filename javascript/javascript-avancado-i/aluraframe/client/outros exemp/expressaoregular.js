class Codigo {

    constructor(texto) {

        if(!this._valida(texto)) throw new Error(`O texto ${texto} não é um código válido`);
        this._texto = texto;        
    }

    _valida(texto) {

        return /\D{3}-\D{2}-\d{2}/.test(texto); //D - apenas letras - d-apenas numeros
    }

    get texto() {

        return this._texto;
    }
}

let codigo1 = new Codigo('GWZ-JJ-12'); // válido
console.log(codigo1.texto);
let codigo2 = new Codigo('1X1-JJ-12'); // inválido
console.log(codigo2.texto);



//acima foi feito o metodo OOB
//metodo procedural

let codigo = 'GWZ-JJ-12';

function validaCodigo(codigo) {

    if(/\D{3}-\D{2}-\d{2}/.test(codigo)) {
          alert('Código válido!');
      } else {
          alert('Código inválido');
      }

}

validaCodigo('GWZ-JJ-12'); // válido
validaCodigo('1X1-JJ-12'); // inválido


//______________________________________

function validaCodigo(codigo) {

    // cria a expressão regular. Poderíamos ter usado 
    // a sintaxe new RegExp(/\D{3}-\D{2}-\d{2}/)
    // \D é qualquer coisa não dígito
    // \D{3} é qualquer coisa não dígito que forme um grupo de 3 caracteres
    // \d é qualquer dígito.
    let expressao = /\D{3}-\D{2}-\d{2}/; 

    // toda expressão regular possui o método test 
    // que recebe o alvo do teste, retornando true
    // se passou, e false se falhou
    if(expressao.test(codigo)) {
          alert('Código válido!');
      } else {
          alert('Código inválido');
      }

}

validaCodigo('GWZ-JJ-12'); // válido
validaCodigo('1X1-JJ-12'); // inválido

//______________________________________________


