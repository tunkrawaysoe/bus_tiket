
function submitForm(){
    const name=document.getElementById("name").value;
    const gender=document.getElementById("gender").value;
    const email=document.getElementById("email").value;
    const address=document.getElementById("address").value;
    const phone=document.getElementById("phone").value;
    const nrc=document.getElementById("nrc").value;
    const resultDiv=document.getElementById("result");
    const cancelbtn=document.getElementsByClassName(".cancel");
    resultDiv.innerHTML=`<p>Name:${name}<\p><p>Gender:${gender}<\p><p>Email:${email}<\p><p>Address:${address}<\p><p>Phone:${phone}</p><p>NRC:${nrc}</p>`;
    
    const userData = { name, gender, email, address};



    if (!name || !gender || !email || !address || !phone || !nrc){
        event.preventDefault();
        alert('Please fill in all fields')
        resultDiv.innerHTML=document.getElementById("userForm").reset();
        
    }
}
    cancelbtn.addEventListener("click", ()=>{
        document.getElementById("userForm").reset();
    
}
);