// criar uma referencia ao form e ao h3(onde vai ser exibido a resposta)
const frm = document.querySelector("form")
const resp= document.querySelector("h3")

// criar um 'ouvinte' de evento, acionando qunado o botão submit for clicado
frm.addEventListener("submit",(e)=>{
    const nome= frm.inNome.value //obtem o nome digitado no form
    resp .innerText =`Olá ${nome}`//exibe a resposta do programa 
    e.preventDefault(); //vai enviar que o form envio os dados pro destino.php
})

