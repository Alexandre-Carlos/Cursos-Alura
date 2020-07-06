let numeros = [3,2,11,20,8,7];
let novosNumeros = [];

numeros.forEach(item => {

    if(item % 2  != 0) {
        novosNumeros.push(item * 2);
    } else {
        novosNumeros.push(item);
    }
});
console.log(novosNumeros);


//_______________________________________________________

let numeros = [3,2,11,20,8,7];
let novosNumeros = [];

numeros.forEach(item => {

    if(item % 2) { // só entra no IF se o resultado for diferente de zero
        novosNumeros.push(item * 2);
    } else {
        novosNumeros.push(item);
    }
});
console.log(novosNumeros);


//__________________________________________________________________

let numeros = [3,2,11,20,8,7];
let novosNumeros = numeros.map(item =>  item % 2 ? item * 2 : item);
console.log(novosNumeros);

//____________________________________________________

let numeros = [3,2,11,20,8,7];
let novosNumeros = numeros.map((item)=> (item%2 +1 ) * item);
console.log(novosNumeros);