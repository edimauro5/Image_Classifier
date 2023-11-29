
function getObj(elementID){
if (typeof elementID == "string")
return document.getElementById(elementID);
else
return elementID;
}


function setVisibility(elementID,vis){
var elemento = getObj(elementID);
if (vis == true || vis=='visible')
elemento.style.visibility = "visible";
else
elemento.style.visibility = "hidden";
}


function showMenu(menuID){
setVisibility("opzioni"+menuID,"visible");
menuFocus(menuID,"over");
}

function showForm(){
	var elemento = getObj("opzioni7");
	if(elemento.style.visibility=='hidden')
		elemento.style.visibility = "visible";
	else
		elemento.style.visibility = "hidden";
	
}


function hideMenu(menuID){
setVisibility("opzioni"+menuID,"hidden");
menuFocus(menuID,"out");
}



function menuFocus(menuID,stato){
if (stato=='over'){
setCursor("pointer","titolo"+menuID);
setColor("titolo"+menuID,"white");
setBackground("titolo"+menuID ,'rgb(193,183,151)');
}
else{
setCursor("auto","titolo"+menuID);
elemento = getObj("titolo"+menuID)
elemento.style.removeProperty('color');
elemento.style.removeProperty('background');
}
}

//setta il colore di sfondo di un elemento
function setBackground(elementID, colore){
getObj(elementID).style.background = colore;
}


//setta il colore di primo piano di un elemento
function setColor(elementID, colore){
getObj(elementID).style.color = colore;
}

//cambia il tipo di cursore, il secondo argomento e' opzionale
function setCursor(cursortype,elementID){
if (elementID==null)
	document.body.style.cursor = cursortype;
else
	getObj(elementID).style.cursor = cursortype;
}