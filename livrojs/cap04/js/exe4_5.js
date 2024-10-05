const frm= document.querySelector("form")
const resp= document.querySelector("h3")

frm.addEventListener("submit", (e)=>{
    e.preventDefault()   //evita envio de form
    const numero= Number(frm.inNumero.value)  //obtem número digitado no form 
    const raiz = Math.sqrt(numero)   //calcula raiz quadrada do numero 

    if(Number.isInteger(raiz)){  //se valor de raiz quadrada for um numero inteiro 
        resp.innerText = `Raiz : ${raiz}`  //mostra a raiz 
    } else {            //   ...senão 
        resp.innerText = `Não há raiz exata para ${numero}`   //... mostra mensagem
     }
})