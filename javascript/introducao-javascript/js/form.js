var botaoAdicionar = document.querySelector("#adicionar-paciente");

botaoAdicionar.addEventListener("click",function(){
  event.preventDefault();
  var form = document.querySelector("#form-adicionar")

  //Extraindo infomações do paciente do form
  var paciente = obtemPacienteDoFormulario(form);

  var erros = validaPaciente(paciente);

  if(erros.length > 0 ){
    exibeMensagensDeErro(erros);
    return;
  }

  adicionaPacienteNaTabela(paciente);



  form.reset();
  var mensagensErro = document.querySelector("#mensagens-erro");
  mensagensErro.innerHTML = "";



});

function adicionaPacienteNaTabela(paciente) {
  //cria a tr e a td do paciente
  var pacienteTr = montaTr(paciente);
  // adicionando o paciente na tabela
  var tabela = document.querySelector("#tabela-pacientes");
  tabela.appendChild(pacienteTr);
}

function obtemPacienteDoFormulario(form){
  var paciente = {
  nome : form.nome.value,
  peso : form.peso.value,
  altura : form.altura.value,
  gordura : form.gordura.value,
  imc : calculaImc(form.peso.value,form.altura.value)
}
return paciente;
}



function montaTr(paciente){
  var pacienteTr = document.createElement("tr");
  pacienteTr.classList.add("paciente");

  var nomeTd = montaTd(paciente.nome,"info-nome");
  var pesoTd = montaTd(paciente.peso, "info-peso");
  var alturaTd = montaTd(paciente.altura, "info-altura");
  var gorduraTd = montaTd(paciente.gordura, "info-gordura");
  var imcTd = montaTd(paciente.imc, "info-imc");


  pesoTd.textContent = paciente.peso;
  alturaTd.textContent = paciente.altura;
  gorduraTd.textContent = paciente.gordura;
  imcTd.textContent = paciente.imc;

  pacienteTr.appendChild(nomeTd);
  pacienteTr.appendChild(pesoTd);
  pacienteTr.appendChild(alturaTd);
  pacienteTr.appendChild(gorduraTd);
  pacienteTr.appendChild(imcTd);


  return pacienteTr;
}


function montaTd(dado,classe){
  var td = document.createElement("td");
  td.textContent = dado;
  td.classList.add(classe);
  return td;
}


function validaPaciente(paciente){
  var erros = [];

  if (!validaPeso(paciente.peso)){
    erros.push("Peso é inválida!");
  }

  if (!validaAltura(paciente.altura)){
    erros.push("Altura é inválida!");
  }

if(paciente.nome.length == 0){
  erros.push("O nome não pode ser em branco!")
}

if(paciente.gordura.length == 0){
  erros.push("A gordura não pode ser em branco")
}

if(paciente.gordura <= 0 || paciente.gordura > 100){
  erros.push("A gordura deve ser um valor entre 1 e 100!")
}

if(paciente.peso.length == 0){
  erros.push("O peso não pode ser em branco")
}

if(paciente.altura.length == 0){
  erros.push("O altura não pode ser em branco")
}

  return erros;
}


function exibeMensagensDeErro(erros){
  var ul = document.querySelector("#mensagens-erro");
  ul.innerHTML = "";
  //for (var i = 0; i < erros.length; i++) {
  //  var erro = erros[i];
  //}
  //ou
 erros.forEach(function(erro){
   var li = document.createElement("li");
   li.textContent = erro;
   ul.appendChild(li);
 });

};
