function formcheck(modulo){
	var p=modulo.nome.value;
	if(modulo.nome.value==""){
		alert("Inserire un nome");
		modulo.nome.focus();
		return false;
	}
	if(modulo.cognome.value==""){
		alert("Inserire un cognome");
		modulo.cognome.focus();
		return false;
	}
	if(modulo.email.value==""){
		alert("Inserire una e-mail");
		modulo.email.focus();
		return false;
	}
	if(modulo.username.value==""){
		alert("Inserire un username");
		modulo.username.focus();
		return false;
	}
	if(modulo.password.value==""){
		alert("Inserire una password");
		modulo.password.focus();
		return false;
	}
	if(modulo.passwordcopy.value==""){
		alert("Confermare la password");
		modulo.passwordcopy.focus();
		return false;
	}  
	if(modulo.password.value!=modulo.passwordcopy.value){
		alert("La conferma della password è fallita");
		modulo.passwordcopy.focus();
		modulo.passwordcopy.select();
		return false;
	}

	return true;

}

function controlla(input){
	content = input.value;
	pos = content.indexOf("@",0);
	if(pos>-1){
		alert("Il "+input.name+" non può contenere @");
		var splitted=new Array();
		splitted=content.split("@");
		content=splitted[0];
		input.value=content;
	}
	

}
function nonumber(event){
	var tasto;
	tasto = event.key;
	if(("0123456789").indexOf(tasto) > -1){
		alert("Il "+event.target.name+" non può contenere numeri");
		return false;
	}
	if(("!?=()%&£$+*#-_^.;,:[]{}/|\\'§<>°ç").indexOf(tasto) > -1){
		alert("Il "+event.target.name+" non può contenere caratteri speciali");
		return false;
	}
	return true;
}

function checkpass(input){
	
	var x = 0;
	var password = input.value;
	var bar = document.getElementById("bar") ;
	var al = document.getElementById("alert"); 


	var check3=/[A-Z]/;
	var check=/[0-9]/;
	var check4=/[$-/:-?{-~!"^_`\[\]]/;
	var check5=/\s/;
	if(password.length == 0){
		x == 0;
		al.innerHTML = "";
		bar.style.width = 0 + "%";
	}
	else if(check5.test(password)){
		al.innerHTML = "Password must not contain white spaces";
		bar.style.backgroundColor = "red";
	}
	else if(check3.test(password) & password.length >=6){
	    bar.style.backgroundColor = "yellow";
		al.innerHTML = "Good";	
		bar.style.width = 50 + "%";
			if(check.test(password) || check4.test(password)){
				bar.style.backgroundColor = "greenyellow";
				al.innerHTML = "Strong";
				bar.style.width = 75 + "%";
			}
			if(check.test(password) & check4.test(password)){
				bar.style.backgroundColor = "green";
				al.innerHTML = "Very strong";
				bar.style.width = 100 + "%";
			}
	}
	else{
	 	bar.style.backgroundColor = "red";
		al.innerHTML = "Weak"; 	
		bar.style.width = 25 + "%";
	}
	if(check5.test(password)){
		al.innerHTML = "Password must not contain white spaces";
		bar.style.backgroundColor = "red";
	}

}

function pass(password){
	var al = document.getElementById("alert"); 
	var result = al.innerHTML;
	if(al.innerHTML == "Weak"){
		alert("La "+password.name+" non soddisfa i prerequisiti richiesti");
		return false;
	}
	return true;
		
}

function correctReg(){
	alert("registrazione avvenuta con successo");
	document.reg.nome.value="";
	document.reg.cognome.value="";
	document.reg.email.value="";
	document.reg.username.value="";
    document.reg.password.value="";
	document.reg.passwordcopy.value="";
}