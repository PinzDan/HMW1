<?php
session_start();

if (isset($_POST["commento"]) && isset($_POST["film_id"]) && (isset($_SESSION["user_id"]))) {
    $_SESSION['previous_page'] = $_SERVER['HTTP_REFERER'];
    $connect = mysqli_connect("localhost", "root", "", "ODISSEY_DB");


    if (mysqli_connect_errno()) {

        die("Errore connessione db: " . mysqli_connect_error());
    }
    $filmID = mysqli_real_escape_string($connect, $_POST["film_id"]);
    $commento = mysqli_real_escape_string($connect, $_POST["commento"]);
    $user_id = mysqli_real_escape_string($connect, $_SESSION["user_id"]);

    $query = "INSERT INTO Commento (`film_id`, `utente_id`, `testo`) VALUES ('$filmID','$user_id', '$commento');";


    if (mysqli_query($connect, $query)) {
        header("Location: " . $_SESSION['previous_page']);
        echo "ok";
    } else
        echo "non riuscito" . mysqli_errno($connect);


    mysqli_close($connect);
} else
    echo "errore";
?>