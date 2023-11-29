<html>
    <head>
        <link rel="stylesheet" type="text/css" href="header.css" >
        <script type="text/javascript" src="header.js">
        </script>
    </head>
    <body>
        <div class="gridcontainer">

            <?php include "Titolo.html"; ?>
            <div id="barramenuu" class="barramenu">

                <div id="menu1" onmouseover="showMenu('1')" onmouseout="hideMenu('1')">

                    <div id="titolo1" class="titolo">Persone</div>
                    <div id="opzioni1" class="opzioni">
                        <a class="menu">Et&agrave;</a>
                        <a class="menu">Nazionalit&agrave;</a>
                    </div>

                </div>

                <div id="menu2" onmouseover="showMenu('2')" onmouseout="hideMenu('2')">

                    <div id="titolo2" class="titolo">Oggetti</div>
                    <div id="opzioni2" class="opzioni">
                        <a class="menu">Nome</a>
                        <a class="menu">Ambito di utilizzo</a>
                    </div>

                </div>


                <div id="menu3" onmouseover="showMenu('3')" onmouseout="hideMenu('3')">

                    <div id="titolo3" class="titolo">Paesaggi</div>
                    <div id="opzioni3" class="opzioni">
                        <a class="menu">Nome</a>
                        <a class="menu">Nazione di appartenenza</a>
                    </div>

                </div>

                <div id="menu4" onmouseover="showMenu('4')" onmouseout="hideMenu('4')">

                    <div id="titolo4" class="titolo">Dipinti</div>
                    <div id="opzioni4" class="opzioni">
                        <a class="menu">Autore</a>
                        <a class="menu">Stile</a>
                    </div>

                </div>

                <div id="menu5" onmouseover="showMenu('5')" onmouseout="hideMenu('5')">

                    <div id="titolo5" class="titolo">Personaggi</div>
                    <div id="opzioni5" class="opzioni">
                        <a class="menu">Nome</a>
                        <a class="menu">Cartone Animato</a>
                    </div>

                </div>
                <div id="menu6">
                    <div id="titolo6" class="titolo">ciao</div>
                </div>
                <div id="menu10">
                    <div id="titolo10" class="titolo">ciao</div>
                </div>
                <div id="menu9">
                    <div id="titolo9" class="titolo">ciao</div>
                </div>
                <div id="menu8" onmouseover="showMenu('8')" onmouseout="hideMenu('8')">
                    <div id="titolo8" class="titolo"><a id="Reg-link" href="registrazione.php" >Registrati</a></div>
                    <div id="opzioni8" class="opzioni"></div>
                </div>
                <div id="menu7"  onmouseover="menuFocus('7', 'over')" onmouseout="menuFocus('7', 'out')" >
                    <div id="titolo7" onclick="showForm()" class="titolo">Accedi</div>
                    <div id="opzioni7" class="opzioni"><?php include "form.php"; ?></div>

                </div>
            </div>
        </div>
    </body>
</html>