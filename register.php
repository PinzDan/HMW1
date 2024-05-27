<?php
session_start();




$connect = mysqli_connect("localhost", "root", "", "ODISSEY_DB");

if (mysqli_connect_errno()) {
    echo "errore connessione DB";
    exit;
}

$username = mysqli_real_escape_string($connect, $_POST["username"]);
$email = mysqli_real_escape_string($connect, $_POST["mail"]);
$password = mysqli_real_escape_string($connect, $_POST["pwd"]);
$confirm = mysqli_real_escape_string($connect, $_POST["confirm_pwd"]);


if ($password != $confirm) {
    echo "password non corrispondenti";
    header("Location : Login.php");
    exit;
}


$alredy_exist = mysqli_query($connect, "SELECT * FROM utente WHERE email = '$email' OR username = '$username' ");

if (mysqli_num_rows($alredy_exist) > 0) {
    echo "email già o username esistente";
    header("Location: Login.php");
    exit;
} else {

    /* crittografia sulla password */
    $password = password_hash($password, PASSWORD_DEFAULT);

    /* generazione codice conferma */
    $confirmation_code = bin2hex((random_bytes(5)));

    $date = date("Y-m-d H:i:s");
    /* Sezione mail */
    $to = $email;
    $subject = "[ Confirmation code ]";
    $message = "Inserisci il codice nella relativa sezione. <b>$confirmation_code</b>.";
    $from = "Odissey200163@gmail.com" . "\r\n";
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= "From: $from\r\n";

    echo "cutto";
    //if (mail($to, $subject, $message, $headers))  Se l'email funzionasse {
    $insert_query = "INSERT INTO utente (username, email, password, confirmation_code, created_at) VALUES ('$username', '$email', '$password', '$confirmation_code', '$date')";
    if (mysqli_query($connect, $insert_query)) {
        $_SESSION["code"] = true;
        header("Location: home.php");
        exit;
    } else {
        echo "errore query";
    }

}

?>