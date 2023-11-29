<?php
session_start();
echo "<link rel='stylesheet' type='text/css' href='img_pos_s_v.css'>";
//Se la variabile username è vuota, l'utente non ha effettuato l'accesso
if (empty($_SESSION["username"])) {
    echo "<body class='body'>
		
		<h1>Ecco un'anteprima delle immagini:</h1>
		<div class='img-container'>
			<div class='scr1'>Persone</br>
			<img class='img_sc' src='Immagini\persone\persona19.jpg' height='200' width='200'/></div>
			<div class='scr1'>Personaggi</br>
			<img class='img_sc' src='Immagini\Personaggi_Animati\Winnie_Pooh_Winnie_Pooh.jpg' height='200' width='200'/></div>
			<div class='scr1'>Oggetti
			<img class='img_sc' src='Immagini\Oggetti\oggetto13.jpg' height='200' width='200'/></div>
			<div class='scr1'>Dipinti</br>
			<img class='img_sc' src='Immagini\Dipinti\dipinto19.jpg' height='200' width='200'/></div>
			<div class='scr1'>Paesaggi</br>
			<img class='img_sc' src='Immagini\Paesaggi\paesaggio11.jpg' height='200' width='200'/></div>
			<div class='scr1'>Paesaggi</br>
			<img class='img_sc' src='Immagini\Paesaggi\paesaggio20.jpg' height='200' width='200'/></div>
			<div class='scr1'>Dipinti</br>
			<img class='img_sc' src='Immagini\Dipinti\dipinto1.jpg' height='200' width='200'/></div>
			<div class='scr1'>Oggetti</br>
			<img class='img_sc' src='Immagini\Oggetti\oggetto4.jpg' height='200' width='200'/></div>
			<div class='scr1'>Personaggi</br>
			<img class='img_sc' src='Immagini\Personaggi_Animati\Kakashi_naruto_.jpg' height='200' width='200'/></div>
			<div class='scr1'>Persone</br>
			<img class='img_sc' src='Immagini\persone\persona16.jpg' height='200' width='200'/></div>
		</div>
		<div class='a-r'>
			<h4>Sei pronto a giocare? </h4>
			<form action='homepage.php'></br></br><input class='ac-re' type='submit' value='Accedi'></input></form> 
			<form action='registrazione.php'></br></br><input class='ac-re' type='submit' value='Registrati'></input></form></br>
		</div>
	</body>";
} else {
    $user = $_SESSION["username"];
    echo "<div class='header_scelta'><div class='cont-text'><h3>Benvenuto $user!</h3><h1>Scegli una categoria</h1></div><a id='logout' href='logout.php'>esegui il logout</a></div>";
    $_SESSION = array();
    $_SESSION['count'] = 0;
    $_SESSION["username"] = $user;
    ?>

    <html>
        <head>
        </head>
        <body class="body"> 
            <div class="sceltapos">
                <div class="div_for_forms">
                    <form action="gioco.php" method="POST" class="form_s"> <input type="submit" name="bot" class="botsclelta" id="img_scelta_pers" value="Persone"> </input></form>
                </div>
                <div class="div_for_forms">
                    <form action="gioco.php" method="POST" class="form_s"><input type="submit" name="bot" class="botsclelta" id="img_scelta_pae" value="Paesaggi"> </input></form>
                </div>
                <div class="div_for_forms">
                    <form action="gioco.php" method="POST" class="form_s"><input type="submit" name="bot" class="botsclelta" id="img_scelta_ogg" value="Oggetti"> </input></form>
                </div>
                <div class="div_for_forms">
                    <form action="gioco.php" method="POST" class="form_s"><input type="submit" name="bot" class="botsclelta" id="img_scelta_dip" value="Dipinti"> </input></form>
                </div>
                <div class="div_for_forms">
                    <form action="gioco.php" method="POST" class="form_s"><input type="submit" name="bot" class="botsclelta" id="img_scelta_pa" value="Personaggi"></input></form>
                </div>

            </div>

        </body>
    </html>

    <?php
}
?>