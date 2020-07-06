let dataString = '17-05-2016';

dataString = dataString.split('-').reverse().join('/');

let data = new Date(dataString);

console.log(data);


//_________________________________________________________

let dataString = '17-05-2016';

let data = new Date(dataString.split('-').reverse().join('/'));
console.log(data);


//____________________________________________________________


let lista1 = ['banana', 'laranja', 'mamão'];
let lista2 = ['caju', 'tangerina', 'abacaxi'];

lista1.push(...lista2);

console.log(lista1);
//["banana", "laranja", "mamão", "caju", "tangerina", "abacaxi"]

//________________________________________________________


function somaDoisNumeros(numero1, numero2) {
    return numero1 + numero2;                                            
}

console.log(somaDoisNumeros(10,30)); // exibe 40!



// ES2015 trouxe uma novidade, o spread operator. Altere a passagem de parâmetros para 
//somaDoisNumeros e faça uso do spread operator para receber um array, com isso, evitando a necessidade de usar numeros[0] e numeros[1].

let numeros = [10, 30];
console.log(somaDoisNumeros(numeros[0], numeros[1]));


// ou

numeros = [10,30];
console.log(somaDoisNumeros(...numeros));

