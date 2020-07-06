class Negociacao {

    //propriedades da class negociação - atributos
    constructor(data, quantidade, valor){
        this._data = new Date(data.getTime()); //cria uma data sobre a data que foi enviada, assim caso haja uma tentativa 
                                              //de alteração pelo objeto passado como paramentro na mesma hora, não será possivel.
        this._quantidade = quantidade;
        this._valor = valor;
       Object.freeze(this);
    }
    

    //metodos getter --> propriedades 
    get volume() {

        return this._quantidade * this._valor;
        
    }

    get data(){
        return new Date(this._data.getTime());  
        //progamação defensiva - fazendo deste modo ao acessar o metodo data tentando alterar por data.setDate() não é possivel
    }

    get quantidade(){
        return this._quantidade;
    }

    get valor(){
        return this._valor;
    }

}