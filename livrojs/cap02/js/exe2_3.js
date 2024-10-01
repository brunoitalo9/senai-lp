const frm = document.querySelector("form")
const resp1= document.querySelector("#outResp1")
const resp2= document.querySelector("#outResp2")
const resp3= document.querySelector("#outResp3")

frm.addEventListener("submit",(e)=>{
    //alert()
    const veiculo = frm.inVeiculo.value 
    //alert()
    const preco = Number(frm.inPreco.value)
    //alert()
    const entrada = preco * 0.50  //calcula o valor da entrada 
    //alert()
    const parcela = (preco *0.50)/12 //.. e das parcelas
    //alert()
    resp1.innerText = `Promoção : ${veiculo}` //exibe as respostas 
    //alert()
    resp2.innerText = `Entrada de R$: ${entrada.toFixed(2)}`
    //alert()
    resp3.innerText = `+12x de R$:${parcela.toFixed(2)}`
    //alert()
    e.preventDefault () //evita envio de form
})