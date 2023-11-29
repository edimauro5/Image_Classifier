function correctAcc(){
	var a = document.getElementById("titolo7");
	a.innerHTML="Logout";
	a.onclick = function() {
		window.location.replace("logout.php");
	}
	var r = document.getElementById("barramenuu").children[8];
	r.onmouseover = function() {};
	var elmnt = document.createElement("div");
    var textnode = document.createTextNode("Benvenuto");
    elmnt.appendChild(textnode);
	r.children[0].replaceChild(textnode, r.children[0].children[0]);
	r.children[0].style.textIndent = "100%";  
	r.children[0].style.overflow = "hidden"; 
}

