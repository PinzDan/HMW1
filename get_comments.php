<?php
session_start();

if (isset($_GET["film_id"])) {
    $connect = mysqli_connect("localhost", "root", "", "ODISSEY_DB");


    if (mysqli_connect_errno()) {
        die("Errore connessione db: " . mysqli_connect_error());
    }

    $filmID = mysqli_real_escape_string($connect, $_GET["film_id"]);
    $query = "SELECT * FROM Commento JOIN utente ON Commento.utente_id = utente.id WHERE Commento.film_id = '$filmID'";

    $result = mysqli_query($connect, $query);

    $data = array();

    if ($result) {

        while ($row = mysqli_fetch_array($result)) {
            $data[] = $row;
        }
        mysqli_free_result($result);
    }

    mysqli_close($connect);
    header("Content-Type: application/json");
    echo json_encode($data);
}
?>