
var pacientes = document.querySelectorAll(".paciente");
//pacientes1 = Array.from(pacientes);

var tabela = document.querySelector("table");
//deixei click porque não funcionou o dblclick
tabela.addEventListener("click", function(event){

    //console.log(event.target.parentNode);
    // var alvoEvento = event.target;
    // var paiDoAlvo = alvoEvento.parentNode; // tr = paciente = remover
    // paiDoAlvo.remove();



    //pode ser feito por este if para excluir apenas class = paciente
    if(event.target.parentNode.classList == "paciente"){
        event.target.parentNode.classList.add("fadeOut");
        //console.log(event.target.tagName);
        setTimeout(function(){
          //ou pode ser feito por esse if pelo tagName, que só exclui TD.
          if (event.target.tagName == 'TD'){
            event.target.parentNode.remove();
          }
        },500);
    }
});



//console.log(pacientes);
//console.log(paciente);




// pacientes.forEach(function(paciente){
//   paciente.addEventListener("click", function() {
//     //console.log("Fui clicado !");
//     this.remove();
//
//   });
// });
