<?php
require_once "logindb.php";
//CONNESSIONE AL DB
$db = pg_connect($connection_string) or die('Impossibile connetersi al database: ' . pg_last_error());
?>


<?php
session_start();
//Se la variabile username è vuota, l'utente non ha effettuato l'accesso
if (empty($_SESSION["username"])) {
    echo "<p>Pagina riservata agli utenti registrati. <br/> Effettua il <a href=\"homepage.php\">Login</a> oppure <a href=\"registrazione.php\">Registrati</a> per continuare</p>";
} else {
    $user = $_SESSION["username"];
    ?>
    <html>
        <head>
            <title>Quiz</title>
            <link rel="stylesheet" href="gioco.css" type="text/css"/> 
            <script type="text/javascript" src="gioco.js">
            </script>
        </head>
        <body class="Contenitor">

    <?php
    if (isset($_POST['bot']))
        $_SESSION['macro'] = $_POST['bot'];

    if (isset($_POST['categoria1']) && isset($_POST['categoria2'])) {
        for ($i = 1; $i < 3; $i++) {
            $tmp = 'categoria' . $i;
            $tmp1 = $tmp . $_SESSION['count'];
            $_SESSION[$tmp1] = str_replace('_', ' ', $_POST[$tmp]);
        }
        ++$_SESSION['count'];

        $img = 'immagine' . $_SESSION['count'];
        $_SESSION[$img] = $_POST['immagine'];
        if ($_SESSION['count'] == 10)
            header("location: verificatotale.php");
    }
    ?>

            <?php
            if ($_SESSION['count'] < 10) {
                while (true) {
                    $v_img = rand(1, 20);
                    if (!isset($_SESSION['image' . $v_img])) {
                        $_SESSION['image' . $v_img] = $v_img;
                        break;
                    }
                }
            }
            $number = $v_img;
            $macro = $_SESSION['macro'];
            $sql = "SELECT * FROM $macro WHERE id=$number";
            $ret = pg_query($db, $sql);
            if (!$ret) {
                echo "ERRORE QUERY: " . pg_last_error($db);
                exit;
            }
            $row = pg_fetch_array($ret);
            $id = $row["id"];
            $url = $row["url"];
            $categoria1 = $row["categoria1"];

            $valoreerrato1 = array();
            $tmpuppu = 0;
            $stringforall = "valoreerrato1";
            while (count($valoreerrato1) != 4) {
                $v_img = rand(1, 4);
                $stringforall = "valoreerrato1";
                if (!isset($valoreerrato1[$v_img])) {
                    $stringforall = $stringforall . $tmpuppu;
                    $valoreerrato1[$v_img] = $row[$stringforall];
                    $tmpuppu++;
                }
            }
            $categoria2 = $row["categoria2"];
            $valoreerrato2 = array();
            $tmpuppu = 0;
            $stringforall = "valoreerrato2";
            while (count($valoreerrato2) != 4) {
                $v_img = rand(1, 4);
                $stringforall = "valoreerrato2";
                if (!isset($valoreerrato2[$v_img])) {
                    $stringforall = $stringforall . $tmpuppu;
                    $valoreerrato2[$v_img] = $row[$stringforall];
                    $tmpuppu++;
                }
            }
            ?>


            <form action="<?php echo $_SERVER['PHP_SELF'] ?>" class="Quiz" method="POST" onSubmit="return formcheck(this);">

                <p>
                    <img src=<?php echo $url ?> class="img_for_play">
                    <input type="hidden" value=<?php echo $url ?> name="immagine" id="immagine" />
                </p>
                <p>
                    <label for="categoria1">
    <?php echo "<h3>$categoria1</h3>" ?>
                        <?php echo "<h4>$valoreerrato1[1]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato1[1]); ?> name="categoria1" id="categoria1"/>
                        <?php echo "$valoreerrato1[2]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato1[2]); ?> name="categoria1" id="categoria1"/>
                        <?php echo "$valoreerrato1[3]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato1[3]); ?> name="categoria1" id="categoria1"/>
                        <?php echo "$valoreerrato1[4]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato1[4]); ?> name="categoria1" id="categoria1"/></h4>
                    </label>
                </p> 
                <p>
                    <label for="categoria2">
    <?php echo "<h3>$categoria2</h3>" ?>
                        <?php echo "<h4>$valoreerrato2[1]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato2[1]); ?> name="categoria2" id="categoria2"/>
                        <?php echo "$valoreerrato2[2]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato2[2]); ?> name="categoria2" id="categoria2"/>
                        <?php echo "$valoreerrato2[3]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato2[3]); ?> name="categoria2" id="categoria2"/>
                        <?php echo "$valoreerrato2[4]"; ?><input type="radio" value= <?php echo str_replace(' ', '_', $valoreerrato2[4]); ?> name="categoria2" id="categoria2"/></h4>
                    </label>
                </p>
                <input id="button-p" type="submit" name="successiva" value="successiva"/>
            </form>

    <?php
}
?>

    </body>
</html>



