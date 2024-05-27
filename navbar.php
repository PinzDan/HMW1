<?php session_start() ?>

<section id="header">
    <div id="navbar">
        <div id="menu-button">
            <button id="image-button">
            </button>


        </div>
        <div id="logo">
        </div>
    </div>
    <div id="menu-items">
        <a href="home.php">
            <img src="assets/icon/home_24dp_FILL0_wght400_GRAD0_opsz24.png">
            <span>Home</home>
        </a>
        <?php
        if (isset($_SESSION["username"]) || isset($_SESSION['google_loggedin'])) {
            echo '<a href="Logout.php">
                <img src="assets/icon/logout.png">
                <span>Log out</span>
            </a>';
        } else {
            echo '<a href="Login.php">
            <img src="assets/icon/Profile.png">
            <span>Effettua il login</span>
        </a>';
        }

        ?>
        <a href="Info.php">
            <img src="assets/icon/info.png">
            <span>Info</span>
        </a>
        <a href="archives.php">
            <img src="assets/icon/inventory.png">
            <span>Archivio</span>
        </a>


    </div>
</section>