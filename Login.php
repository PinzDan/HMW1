<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="icon" type="image/x-icon" href="/assets/Logo/logo.png">

    <link rel="stylesheet" href="./assets/style.css">
    <script src="./assets/LogSing.js" defer></script>

</head>

<body id="form-body">
    <!-- GEstione fomr PHP -->
    <?php
    session_start();
    ?>


    <?php include "navbar.php"; ?>


    <div id="main-container-login">

        <div id="signup-container">

            <div class="button-form">
                <button id="login-btn" class="clicked" onclick="changeForm('login')"> Log In</button>
                <button id="signup-btn" onclick="changeForm('signup')">Sign Up</button>
            </div>

            <form method="POST" action="get_post.php" class="login-form">
                <label for="Username">Username: </label>
                <input name="username" id="Username" type="text" placeholder="Es. MarioRossi123" required>


                <label for="pwd">password: </label>
                <input class="pwd" name="pwd" type="password" required>


                <input type="submit" id="sign-submit" value="Log In">
            </form>


            <form method="POST" action="register.php" class="signup-form hidden">

                <label for="Username">Username: </label>
                <input id="Username" name="username" type="text" placeholder="Es. MarioRossi123" required>


                <label for="mail">E-mail: </label>
                <input id="mail" name="mail" type="email" placeholder="Es. MarioRossi123@hotmail.it" required>



                <label for="pwd">password: </label>
                <input class="pwd" name="pwd" type="password" required>

                <label for="pwd_confirm">Confirm password: </label>
                <input id="pwd_confirm" name="confirm_pwd" type="password" required>

                <input type="submit" id="sign-submit" value="Sign Up">

            </form>

            <a href="login_google.php" id="google">
                <svg width="48" height="48">
                    <image href="./assets/icon/icons8-google.svg"></image>
                </svg>
            </a>
            <svg width="24" height="24" class="eyes">
                <image id="visible" href="/assets/icon/visibility_24dp_FILL0_wght400_GRAD0_opsz24.png" width="24"
                    height="24">
                </image>
            </svg>



        </div>


        <div class="paragrafo-login">

            <img src="./assets/Logo/logo_noscritta_white.png">

            <p>2001: Odissea nello spazio è un film epico di fantascienza diretto da Stanley Kubrick,
                che esplora temi di evoluzione umana, intelligenza artificiale e viaggi spaziali.
                La storia inizia con un gruppo di scimmie nel deserto africano che scoprono un monolite nero,
                un misterioso artefatto che segna un salto evolutivo.<br>

                Ispirati da questa scena iconica, abbiamo progettato il nostro logo con una scimmia che indossa un casco
                spaziale,
                rappresentando l'inizio del film. Il casco e la navicella spaziale richiamano le sezioni successive del
                film,
                dove l'umanità si avventura nello spazio profondo, guidata dall'enigmatico monolite verso nuovi
                orizzonti di conoscenza e scoperta.
            </p>
        </div>
    </div>

    <?php include "footer.php" ?>


</body>

</html>