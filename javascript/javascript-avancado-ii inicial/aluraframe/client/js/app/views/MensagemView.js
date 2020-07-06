class MensagemView extends View {
    /*
    constructor(elemento){
        super(elemento);
    }
    */
    template(model) {
        return model.texto ? `<p class="alert alert-info">${model.texto}</p>` : '<p></p>';  
        // IF TERNARIO - verifica se o texto é "em branco, null ou 0" se sim retorna o paragrafo em branco senão retorna a mensagem formatada por bootstrap                        
        //"alert alert-info" ---> bootstrap
    }
  
}