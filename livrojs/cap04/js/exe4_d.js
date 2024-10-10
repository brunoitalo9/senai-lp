const frm = document.querySelector("form")
const resp1  = document.querySelector("#out01")
const resp2= document.querySelector("#out02")

addEventListener("submit",(e)=>{
    e.preventDefault()
    const ladoa = Number(frm.inLadoA.value)
    const ladob = Number(frm.inLadoB.value)  
    const ladoc = Number(frm.inLadoC.value) 
    
    if (ladoa > (ladob + ladoc)|| ladob > (ladoa + ladoc )|| ladoc>(ladoa+ladob)){
        resp1.innerText =`Não pode formar um triangulo`
    } else{
        resp1.innerText=` Pode formar um triangulo`
    }
    if (ladoa == ladob && ladoa == ladoc){
        resp2.innerText=`Triangulo Equilátero`
    }else if (ladoa != ladob &&  ladoc && ladob != ladoc){
        resp2.innerText=`Triangulo Escaleno`
    } else {
        resp2.innerText=`Triangulo Isósceles`
    }

    }
)