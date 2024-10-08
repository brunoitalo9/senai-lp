const frm= document.querySelector("form")
const resp1= document.querySelector("#outResp1")
const resp2= document.querySelector("#outResp2")

addEventListener("submit",(e)=>{
    e.preventDefault()
    const valor = Number(frm.inValor.value)
    let troco;
    if(valor < 1.00 ){
        alert("Valor Insuficiente")
        frm.inValor.focus()
        return
    }else if(valor < 1.75){
        resp1.innerText=`Tempo:30 min`
        troco = valor-1
    }else if(valor< 3.00){
        resp1.innerText=`Tempo:60 min`
        troco = valor-1.75
    }else{
        resp1.innerText =`Tempo:120 min`
        troco = valor-3
    }

    resp2.innerText=`Troco R$:${troco}`

})