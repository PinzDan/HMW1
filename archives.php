<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=4, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/archivio.css">
    <link rel="stylesheet" href="./assets/style.css">
    <script src="././assets/main.js" defer></script>
    <script src="get_film.js"></script>
</head>

<body>

    <?php include ("navbar.php") ?>



    <div id="archive-title">
        <img src="./assets/Logo/logo_noscritta_white.png"></image>
        <h1>Archives</h1>
    </div>

    <section id="research">
        <div id="input-research">
            <svg width="24" height="24">
                <image href="./assets/icon/search_24dp_FILL0_wght400_GRAD0_opsz24.svg"></image>
            </svg>
            <input type="text" id="research-film" class="archives-button" placeholder="Cerca un film...">
        </div>
        <button value="genere" id="select-genre" class="archives-button">Genere

            <svg width="24" height="24">
                <image href="./assets/icon/movie_24dp_FILL0_wght400_GRAD0_opsz24.svg"></image>
            </svg>
        </button>


        <button id="filter" class="archives-button">Filtra
            <svg width="24" height="24">
                <image href="./assets/icon/filter_list_24dp_FILL0_wght400_GRAD0_opsz24.svg"></image>
            </svg>
        </button>
    </section>


    <h1 class="top-of">Top of the week: </h1>
    <div class="film-scroll">
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
        <div class="film-card">
            <div class="info-card">
                <h3></h3>
                <span>Rating: </span>
                <p></p>

            </div>
            <img src="">
        </div>
    </div>


    </div>

</body>

<div id="archivio-film">
    <div class="film-card-row">
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
    </div>
    <div class="film-card-row">
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
    </div>
    <div class="film-card-row">
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
    </div>
    <div class="film-card-row">
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
        <div class="film-card"></div>
    </div>

    <div class="next-page">
        <button id="next" class="archives-button">Next
            <svg width="24" height="24">
                <image href="././assets/icon/arrow_forward_24dp_FILL0_wght400_GRAD0_opsz24.svg"></image>
            </svg>
        </button>

    </div>
</div>

<?php include ("footer.php") ?>

</html>