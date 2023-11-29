<html>
    <head>
        <title>Controllo risposte</title>
    </head>
    <body>
        <?php
        session_start();
        echo "<link rel='stylesheet' type='text/css' href='img_pos_s_v.css'>";
        //Se la variabile username è vuota, l'utente non ha effettuato l'accesso
        if (empty($_SESSION["username"])) {
            echo "<p>Pagina riservata agli utenti registrati. <br/> Effettua il <a href=\"homepage.php\">Login</a> oppure <a href=\"registrazione.php\">Registrati</a> per continuare</p>";
        } else {

            require_once "logindb.php";
            //CONNESSIONE AL DB
            $db = pg_connect($connection_string) or die('Impossibile connetersi al database: ' . pg_last_error());
            echo "<body class='body'>
					<div class='img-container'>";
            for ($i = 0; $i < $_SESSION['count']; $i++) {
                $img = 'immagine' . $i + 1;
                echo "<div class='ver'>
				      <img src=$_SESSION[$img] height='200' width='200'/></br>
				      <p id='risp'>Le tue risposte:</p>";
                include "verificasingolo.php";
                echo "</div>";
            }
            echo "</div>";
            echo "<a href='scelta.php' id='gioca_ancora'>Gioca ancora!</a>
				  <a href='logout.php' id='homepage'>Logout</a>
				</body>";
            ?>


    <?php
}
?>

    </body>
</html>
<?php

function checkvalue($l, $h, $db) {

    $tocheck = 'valorecorretto' . $h;
    $macro = $_SESSION['macro'];
    $sql = "SELECT $tocheck FROM $macro WHERE url='$l';";
    $ret = pg_query($db, $sql);

    //CONTROLLIAMO SE LA QUERY VA A BUON FINE
    if (!$ret) {
        echo "ERRORE QUERY: " . pg_last_error($db);
        //se c'è stato un errore nella query ritornerà false
        return false;
    }

    $row = pg_fetch_array($ret);
    $value = $row[$tocheck];
    return $value;
}
?>