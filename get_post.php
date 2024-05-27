<?php
session_start();


if (isset($_SESSION["username"])) {
    header("Location: home.php");
    exit;
}
if (isset($_POST["username"]) && isset($_POST["pwd"])) {
    //connessione al db
    $connect = mysqli_connect("localhost", "root", "", "ODISSEY_DB");

    if (mysqli_connect_errno()) {
        die("errore connnessione db" . mysqli_connect_error());

    } else {
        echo "connessione riuscita";
    }

    $username = mysqli_real_escape_string($connect, $_POST["username"]);
    $password = mysqli_real_escape_string($connect, $_POST["pwd"]);


    $research_user_query = "SELECT * FROM utente WHERE username = '$username'";

    $myquery = mysqli_query($connect, $research_user_query);

    if (mysqli_num_rows($myquery) == 1) {

        $row = mysqli_fetch_assoc($myquery);
        $pwd = $row["password"];
        if (password_verify($password, $pwd)) {
            echo "reindirizzamento";
            $_SESSION["username"] = $username;
            mysqli_free_result($myquery);
            mysqli_close($connect);
            header("Location: home.php");
            exit;
        } else
            $error = true;
    }
    mysqli_free_result($myquery);
    mysqli_close($connect);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    // Verifica la presenza di errori
    if (isset($errore)) {
        echo "<p class='errore'>";
        echo "Credenziali non valide.";
        echo "</p>";
    }
    ?>
</body>

</html>