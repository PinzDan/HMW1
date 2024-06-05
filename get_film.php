<?php
session_start();

$connect = mysqli_connect("localhost", "root", "", "ODISSEY_DB");


if (mysqli_connect_errno()) {
    die("Errore connessione db: " . mysqli_connect_error());
}


$query = "SELECT * FROM Film ORDER BY title ASC";

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

?>