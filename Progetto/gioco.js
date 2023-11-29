function formcheck(modulo){
	
	if(modulo.categoria1.value==""){
		alert("devi mettere entrambe le categorie");
		return false;
	}
	if(modulo.categoria2.value==""){
		alert("devi mettere entrambe le categorie");
		return false;
	}
	return true;

}