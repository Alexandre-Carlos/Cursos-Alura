export class DateHelper{

    constructor() {
        throw new Error('Esta classe não pode ser instanciada!')
    }

    // definiu metodos staticos que podem ser acessados diretamente das outras classe, asim não é necessáio instanciar a classe DateHelper toda vez.

   static dataParaTexto(data){
        return `${data.getDate()}/${data.getMonth()+1}/${data.getFullYear()}`;
        
        //data.getDate() +'/'+ (data.getMonth() +1)  + '/' + data.getFullYear();
    }

    static textoParaData(texto){

        //if(!/\d{4}-\d{2}-\d{2}/.test(texto)) throw new Error('Deve estar no formato aaaa-mm-dd');

        //return new Date(...texto.split('-').map((item, indice) => item - indice % 2));

        // mudamos a validação para aceitar o novo formato!
        if(!/\d{2}\/\d{2}\/\d{4}/.test(texto)) 
            throw new Error('Deve estar no formato dd/mm/aaaa');

        // veja que usamos no split '/' no lugar de '-'. Usamos `reverse` também para ficar ano/mes/dia.      
        return new Date(...texto.split('/').reverse().map((item, indice) => item - indice % 2));
    


    }

}