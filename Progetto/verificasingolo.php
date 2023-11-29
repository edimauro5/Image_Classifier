
<html>
    <head>
        <title>Verifica domanda singola</title>
    <head>
    <body>
        <?php
        echo"<p>";

        for ($j = 1; $j < 3; $j++) {
            $tmp = 'categoria' . $j;
            $tmp1 = $tmp . $i;
            $correct_value = checkvalue($_SESSION[$img], $j + 1, $db);
            if ($_SESSION[$tmp1] != $correct_value)
                echo "$_SESSION[$tmp1]: FALSE!";
            else
                echo "$_SESSION[$tmp1]: TRUE!";
            echo "</br>";
        }
        echo"</p>";
        ?>
    </body>
</html>

