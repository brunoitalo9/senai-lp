// crie uma referencia de form e elemento onde será exibida a resposta 
const frm = document.querySelector("form")
const resp = document.querySelector("h3")

//"ouvinte" de evento, acionado qunado o botão submite for clicado 
frm.addEventListener("submit", (e)=>{
    e.preventDefault()      //evita envio de form 
    // obtem e converte o conteudo do campo inHoraBrasil
    const horaBrasil = Number(frm.inHoraBrasil.value)
    let horaFranca =horaBrasil +5   //calcula o horario na França

    if (horaFranca> 24) {
        horaFranca = horaFranca -24 
    }

    //exibe resposta (altera o conteudo do elemento h3 da pagina)
    resp.innerText = `Hora na França ${horaFranca.toFixed(2)}`
})