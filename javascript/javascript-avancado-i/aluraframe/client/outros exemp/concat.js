//Um programador amigo do coração criou uma função genérica para imprimir todos os itens de qualquer lista no console:

function exibeNoConsole(lista) {
    lista.forEach(item => console.log(item));
}
//Excelente, mas em nossa aplicação dentro de um contexto específico temos duas listas distintas que queremos imprimir no console. Sendo assim, precisamos chamar a função duas vezes.

let listaDeNomes1 = ['Flávio', 'Rogers', 'Júlia'];
exibeNoConsole(listaDeNomes1);
let listaDeNomes2 = ['Vieira', 'Fernanda', 'Gerson'];
exibeNoConsole(listaDeNomes2);
//Para evitar de chamarmos a função duas vezes, uma vez para cada lista, podemos juntar uma lista na outra. Implemente o código que cria uma nova lista que é a junção dos elementos de listaDeNomes1 e listaDeNomes2.


//Em uma abordagem procedural faríamos:

function exibeNoConsole(lista) {
    lista.forEach(item => console.log(item));
}
//Excelente, mas em nossa aplicação dentro de um contexto específico temos duas listas distintas que queremos imprimir no console. Sendo assim, precisamos chamar a função duas vezes.

let listaDeNomes1 = ['Flávio', 'Rogers', 'Júlia'];
let listaDeNomes2 = ['Vieira', 'Fernanda', 'Gerson'];
let lista = [];

listaDeNomes1.forEach(item => lista.push(item));
listaDeNomes2.forEach(item => lista.push(item));

exibeNoConsole(lista);
//Contudo, todo array em JavaScript possui o método concat. Alterando nosso código:

let listaDeNomes1 = ['Flávio', 'Rogers', 'Júlia'];
let listaDeNomes2 = ['Vieira', 'Fernanda', 'Gerson'];
let lista = listaDeNomes1.concat(listaDeNomes2);

exibeNoConsole(lista);
//O resultado de concat é um novo array com todos os elementos de quem realizou o concat e quem foi passado para a função.

//Se quisermos, podemos enxugar ainda mais nosso código:

let listaDeNomes1 = ['Flávio', 'Rogers', 'Júlia'];
let listaDeNomes2 = ['Vieira', 'Fernanda', 'Gerson'];
exibeNoConsole([].concat(listaDeNomes1, listaDeNomes2));
//Veja que não criamos mais a variável temporária lista. Estamos passando o resultado da concatenação de um array vazio [] com outras duas listas. Aliás, a função concat aceita receber um número infinito de parâmetros, inclusive aqueles que não são um array. Vejamos um exemplo:

let listaDeNomes1 = ['Flávio', 'Rogers', 'Júlia'];
let listaDeNomes2 = ['Vieira', 'Fernanda', 'Gerson'];
exibeNoConsole([].concat(listaDeNomes1, listaDeNomes2, 'Rômulo'));
//Com isso, a lista criada terá também um item de valor Rômulo.