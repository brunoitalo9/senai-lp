const frm= document.querySelector("form")
const resp1= document. querySelector("h3")

frm.addEventListener("submit",(e)=>{
    const valor= frm.inValor.value
    const tempo= frm.inTempo.value

    const preco = valor*2
    const uso = Math.ceil(tempo)

    resp1.innerText=`Valor a pagar R$: ${preco.toFixed(2)}`

e.preventDefault()
})