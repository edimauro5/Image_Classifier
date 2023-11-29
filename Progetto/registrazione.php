<html>
    <head>
        <title>Registrazione</title>
        <link rel="stylesheet" type="text/css" href="homepage.css" >
        <link rel="stylesheet" type="text/css" href="registrazione.css" >
        <script type="text/javascript" src="registrazionejs.js">
        </script>
    </head>
    <body class="all">
        <?php include "Titolo.html"; ?>
        <div class="registrazione">
            <div>
            </div>
            <div class="cont-reg">
                <h1>Registrati al sito</h1>

                <?php
                if (isset($_POST['username']) & isset($_POST['password'])) {
                    $name = $_POST['nome'];
                    $surname = $_POST['cognome'];
                    $email = $_POST['email'];
                    $username = $_POST['username'];
                    $password = $_POST['password'];
                    $passwordcopy = $_POST['passwordcopy'];
                } else {
                    $name = "";
                    $surname = "";
                    $email = "";
                    $username = "";
                    $password = "";
                    $passwordcopy = "";
                }
                ?>

                <form onSubmit="return formcheck(this);" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST" name="reg" >
                    <p>
                        <label for="name">
                            Nome: <input type="text" name="nome" id="nome" onchange="controlla(this)" onkeydown="return nonumber(event)" value="<?php echo $name ?>"/>
                        </label>
                    </p>
                    <p>
                        <label for="surname">
                            Cognome: <input type="text" name="cognome" id="cognome" onchange="controlla(this)" onkeydown="return nonumber(event)" value="<?php echo $surname ?>"/>
                        </label>
                    </p>
                    <p>
                        <label for="email">
                            E-mail: <input type="text" name="email" id="email" value="<?php echo $email ?>"/>
                        </label>
                    </p>
                    <p>
                        <label for="username">
                            Username: <input type="text" name="username" id="username" value="<?php echo $username ?>"/>
                        </label>
                    </p>
                    <p>
                    <div class="info_pass">
                        La Password deve contenere almeno:
                        <ul>
                            <li>6 caratteri </li>
                            <li>una maiuscola</li>
                        </ul>
                    </div>
                    <label for="password">
                        Password: <input type="password" name="password" id="password" onkeyup="checkpass(this)" onchange="pass(this)" value="<?php echo $password ?>" />
                    </label>
                    </p>
                    <div id="ProgressBar">
                        <div id="bar">
                        </div>

                        <p id="alert">
                        </p>
                    </div> 
                    <p>
                        <label for="passwordcopy">
                            Conferma Password: <input type="password" name="passwordcopy" id="passwordcopy" value="<?php echo $passwordcopy ?>"/>
                        </label>
                    </p>
                    <p>
                        <input class="reg-b" type="submit" name="registrati" value="Registrati"/>
                        <input class="reg-b" type="reset" name="reset" value="Reset"/>
                    </p>
                </form>
                <form action="homepage.php"><input class="reg-b" type="submit" value="Torna alla home"/></form>
            </div>
        </div>
        <?php
        require_once "logindb.php";
        //connettiamoci al db
        $db = pg_connect($connection_string) or die('Impossibile connettersi al database:' . pg_last_error($db));
        if (isset($_POST['username']) && isset($_POST['password'])) {
            $name = $_POST['nome'];
            $surname = $_POST['cognome'];
            $email = $_POST['email'];
            $user = $_POST['username'];
            $pass = $_POST['password'];
            //controlliamo che l'utente non sia già presente nel db
            $isthereUser = checkUser($user, $db);
            $isthereEmail = checkEmail($email, $db);
            if ($isthereUser & $isthereEmail)
                echo "<script type='text/javascript'> alert('Utente $user e Email $email già presenti'); </script>";
            else if ($isthereUser)
                echo "<script type='text/javascript'> alert('Utente $user già presente'); </script>";

            else if ($isthereEmail)
                echo "<script type='text/javascript'> alert('Email $email già presente'); </script>";
            else {
                //possiamo procedere ad aggiungerlo nel db
                $pass_to_insert = password_hash($pass, PASSWORD_DEFAULT);
                $sql_insert = "INSERT INTO account(nome, cognome, email, username, password) VALUES ($1, $2, $3, $4, $5);";
                $prep_insert = pg_prepare($db, "sqlInsert", $sql_insert);
                $ret_insert = pg_execute($db, "sqlInsert", array($name, $surname, $email, $user, $pass_to_insert));

                if (!$ret_insert) {
                    echo "<script type='text/javascript'> alert('Non è stato possibile inserire l'utente nel db, riprovare'); </script>";
                } else {
                    echo "<script type='text/javascript'> correctReg(); </script>";
                }
            }
        }
        ?>

    </body>
</html>


<?php
//controlla se esiste già l'username

function checkUser($user, $db) {

    $sql = "SELECT username FROM account WHERE username=$1;";
    $prep = pg_prepare($db, "sqlUsername", $sql);
    $ret = pg_execute($db, "sqlUsername", array($user));

    if (!$ret) {
        echo "Errore durante la query";
        exit();
    } else {
        $row = pg_fetch_array($ret);
        if ($row) {
            return true;
        } else {
            return false;
        }
    }
}
?>

<?php
//controlla se esiste già la mail

function checkEmail($email, $db) {

    $sql = "SELECT email FROM account WHERE email=$1;";
    $prep = pg_prepare($db, "sqlEmail", $sql);
    $ret = pg_execute($db, "sqlEmail", array($email));

    if (!$ret) {
        echo "Errore durante la query";
        exit();
    } else {
        $row = pg_fetch_array($ret);
        if ($row) {
            return true;
        } else {
            return false;
        }
    }
}
?>