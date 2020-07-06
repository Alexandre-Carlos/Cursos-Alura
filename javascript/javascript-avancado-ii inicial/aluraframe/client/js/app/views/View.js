class View{
    constructor(elemento) {
        this._elemento = elemento;
    }

    template(model){

        throw new Error('O método template deve ser implementado, nas classes que extend View!')
     } // como não existe a definição de classe abstrata no javascript, não é possível obrigar as classes filhotes a implementar esses metodos.

    update(model){
        this._elemento.innerHTML = this.template(model);
    }
}