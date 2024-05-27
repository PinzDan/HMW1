function fetchFilm() {
    fetch('get_film.php')
        .then(response => {
            if (!response.ok) {
                throw new Error("Errore " + response.statusText);
            }

            return response.json();
        })
        .then(data => {
            const current_page = window.location.pathname;

            if (current_page.includes('home.php')) {
                updateHomePage(data);
            } else if (current_page.includes('archives.php')) {
                updateTopOfWeek(data)
            }
        })
        .catch(error => {
            console.error('Errore fetch', error)

        })
}


function updateHomePage(films) {
    let i = 0;
    const left_container = document.querySelector('.left-container');

    const right_container = document.querySelector('.right-container')
    if (films.length > 0) {
        /* gestione left e rigth container*/
        let film = films[i];
        /* left */
        left_container.querySelector(".left-poster").style.backgroundImage = "url(" + film.locandina + ")";

        let description = left_container.querySelector('.description');
        let h1 = description.querySelector('h1').textContent = film.title;
        let p = description.querySelector('p').textContent = film.trama;

        i++;
        film = films[i];
        right_container.querySelector(".right-poster").style.backgroundImage = "url(" + film.locandina + ")";

        let description2 = right_container.querySelector('.description');
        let h1_rigth = description2.querySelector('h1').textContent = film.title;
        let p_rigth = description2.querySelector('p').textContent = film.trama;

    }
    else {
        console.error("nessun film trovato nel database");
    }
}

/* archives */
function updateTopOfWeek(films) {

    const film_card = document.querySelectorAll('.film-card');
    film_card.forEach(element => {

        let rand = Math.floor(Math.random() * films.length)



        element.querySelector("img").src = films[rand].locandina;
        const info_card = element.querySelector(".info-card");

        info_card.querySelector("h3").textContent = films[rand].title;
        info_card.querySelector("span").textContent = films[rand].rating;
        trama = films[rand].trama.slice(0, 32) + "...";
        info_card.querySelector("p").textContent = trama;
    })



}


window.onload = fetchFilm;


