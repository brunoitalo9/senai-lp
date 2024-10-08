const frm= document.querySelector("form")
const resp= document.querySelector("h3")

addEventListener("submit", (e)=>{
    e.preventDefault()
    const numero = Number(frm.inNumero.value)
   
if(numero% 2 == 0 ){
resp.innerText=`${numero.toFixed(0)} é Par `
}else{
resp.innerText =`${numero.toFixed(0)} é Impar`
}

})