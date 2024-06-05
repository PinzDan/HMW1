import fetchComments from './get_comments.js';


function fetchRegista() {
    // Ottieni l'URL della pagina corrente
    const urlParams = new URLSearchParams(window.location.search);
    console.log(urlParams)
    // Estrai il valore del parametro regista_id dall'URL
    const registaId = urlParams.get('regista_id');
    console.log(registaId)
    // Effettua la richiesta fetch utilizzando il registaId ottenuto
    fetch(`get_regista.php?regista_id=${registaId}`)
        .then(response => {

            if (!response.ok) {
                throw new Error("Errore " + response.statusText);
            }

            return response.json();
        })
        .then(data => {
            if (data.length > 0) {
                const regista = data[0];
                document.getElementById('regista-nome').textContent = regista.nome + " " + regista.cognome;
                document.getElementById('regista-biografia').textContent = regista.biografia;
                document.querySelector('.regista-photo').querySelector("img").src = regista.foto;

            }
        })
        .catch(error => console.error('Errore:', error));
}



window.onload = function () {
    fetchRegista()
    fetchComments()

} 