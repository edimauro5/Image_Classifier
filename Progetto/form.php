<?php
//controllo se l'utente è nel database
if (!empty($_POST['username']) || !empty($_POST['password'])) {
    if ($_POST['username'] || $_POST['password']) {
        $user = $_POST['username'];
        $pass = $_POST['password'];
        $hash = get_pass($user);
        if (!$hash) {
            echo "<script type='text/javascript'> alert('utente $user non presente'); </script>";
        } else {
            if (password_verify($pass, $hash)) {
                session_start();
                $_SESSION["username"] = $user;
            } else {
                echo"<script type='text/javascript'> alert('Errore: username o password non corretti'); </script>";
            }
        }
    } else {
        echo"<script type='text/javascript'> alert('Errore: username o password non inseriti'); </script>";
        exit();
    }
}
?>




<?php
if (empty($_SESSION["username"])) {
    ?>


    <?php
    if (isset($_POST['username']) & isset($_POST['password'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
    } else {
        $username = "";
        $password = "";
    }
    ?>


    <link rel="stylesheet" href="form.css" type="text/css"/> 
    <form class="form" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
        <p>
            <label for="username">
                Username:</br> <input class="casella" type="text" id="username" name="username" value="<?php echo $username ?>"/>
            </label>
        </p>
        <p>
            <label for="password">
                Password: </br><input class="casella" type="password" id="password" name="password" value="<?php echo $password ?>"/>
            </label>
        </p>
        <p>
            <input class="accedi-b" type="submit" id="accedi" name="accedi" value="Accedi"/>
        </p>
    </form>


    <?php
} else {
    ?>
    <script type='text/javascript' src='acceduto.js'>
    </script>
    <script type='text/javascript'> correctAcc();</script>
    <?php
}

function get_pass($user) {
    require "logindb.php";
    //CONNESSIONE AL DB
    $db = pg_connect($connection_string) or die('Impossibile connetersi al database: ' . pg_last_error());
    $sql = "SELECT password FROM account WHERE username=$1;";
    $prep = pg_prepare($db, "sqlPassword", $sql);
    $ret = pg_execute($db, "sqlPassword", array($user));
    if (!$ret) {
        echo "ERRORE QUERY: " . pg_last_error($db);
        return false;
    } else {
        if ($row = pg_fetch_assoc($ret)) {
            $pass = $row['password'];
            return $pass;
        } else {
            return false;
        }
    }
}
?>