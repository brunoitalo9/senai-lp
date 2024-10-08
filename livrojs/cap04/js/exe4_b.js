const frm = document.querySelector("form")
const resp = document.querySelector("h3")

addEventListener("submit",(e)=>{
    e.preventDefault()
    const condutor  =Number(frm.inCondutor.value)
    const permitida =Number (frm.inPermitida.value)

    if(condutor <= permitida){
        resp.innerText=`Situação :Sem Multas `
    }else if(condutor<=(permitida*1.2)){
        resp.innerText=`Situação : Multa Leve`
    }else {
        resp.innerText=`Situação : Multa Grave `
    }
    
})