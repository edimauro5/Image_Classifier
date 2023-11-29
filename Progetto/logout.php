<html>
    <head>
        <title>Logout</title>
    </head>
    <body>
        <?php
        //attiviamo la sessione, nel caso in cui sia già attiva, 
        //il server recupera le variabili associate a questa sessione 
        //e le rende disponibili nella variabile super globale $_SESSION[].

        session_start();
        $sname = session_name(); //recuperiamo il nome della sessione
        session_destroy(); //distruggiamo la sessione
        //eliminiamo ora il cookie corrispondente
        if (isset($_COOKIE['$sname'])) {
            setcookie($sname, '', time() - 3600, '/');
        }
        ?>
        <?php
        /* <p>Logout avvenuto con successo</p>
          <p><a href="homepage.php">Torna alla home</a></p> */
        header("location: homepage.php");
        ?>
    </body>
</html>