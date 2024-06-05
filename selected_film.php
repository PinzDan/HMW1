<?php
session_start();

if (!isset($_SESSION["username"])) {

    $disabled = "disabled";
    $placeholder = "Effettua il login per poter commentare";
} else {
    $disabled = "";
    $placeholder = "scrivi un commento...";

}

extract($_GET);
if (isset($id, $title, $anno_di_rilascio, $trama, $genere, $durata, $cast, $trailer, $locandina, $regista_id, $rating)) {
    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="selected_film.css">
        <script type="module" src="selected_film.js" defer></script>
    </head>

    <body>

        <?php
        include ("navbar.php");
        ?>

        <section id="main">
            <div class="main-container">
                <div class="film">
                    <div class="first-row">
                        <?php
                        echo "<img src='$locandina'>";
                        ?>
                        <div class="details">
                            <?php
                            echo "<h1>$title</h1>";
                            echo "<p>$trama</p>";
                            echo $trailer;
                            ?>
                        </div>
                        </class>
                    </div>

                </div>
                <div class="regista">

                    <div class="regista-photo">
                        <img src="">
                    </div>

                    <div class="generalita">
                        <h1 id="regista-nome">nome cognome</h1>
                        <p id="regista-biografia">biografia</p>
                    </div>
                </div>
            </div>
        </section>

        <div class="commenti">
            <div class="container-commenti">

            </div>


            <form class="commenta" method="POST" action="send_comments.php">
                <input type="hidden" name="film_id" value="<?php echo $id; ?>">
                <textarea id="commento" name="commento" placeholder="<?php echo $placeholder; ?>" <?php echo $disabled; ?>></textarea>
                <input type="submit">
            </form>
        </div>


        <?php
}
include ("footer.php");
?>
</body>

</html>