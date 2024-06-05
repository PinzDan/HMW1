-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Giu 05, 2024 alle 14:50
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ODISSEY_DB`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Commento`
--

CREATE TABLE `Commento` (
  `id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `testo` varchar(500) NOT NULL,
  `data_commento` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Commento`
--

INSERT INTO `Commento` (`id`, `film_id`, `utente_id`, `testo`, `data_commento`) VALUES
(1, 25, 4, 'bello', '2024-06-01 13:32:06'),
(2, 4, 4, 'bello bello', '2024-06-03 12:13:47'),
(3, 15, 4, 'bellissimo', '2024-06-03 13:07:17'),
(4, 2, 4, 'iconico', '2024-06-03 13:32:24'),
(5, 2, 4, 'incredibile', '2024-06-03 14:13:47');

-- --------------------------------------------------------

--
-- Struttura della tabella `Film`
--

CREATE TABLE `Film` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `anno_di_rilascio` year(4) NOT NULL,
  `trama` text DEFAULT 'Trama non disponibile',
  `genere` varchar(32) NOT NULL,
  `durata` int(11) DEFAULT NULL,
  `cast` text DEFAULT NULL,
  `trailer` text DEFAULT NULL,
  `locandina` varchar(255) DEFAULT NULL,
  `regista_id` int(11) DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Film`
--

INSERT INTO `Film` (`id`, `title`, `anno_di_rilascio`, `trama`, `genere`, `durata`, `cast`, `trailer`, `locandina`, `regista_id`, `rating`) VALUES
(1, 'Le ali della libertà', '1994', 'Due uomini incarcerati stringono un forte legame nel corso degli anni, trovando conforto e redenzione attraverso atti di decenza comune.', 'Drammatico', 142, 'Tim Robbins, Morgan Freeman', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/W71mtorCZDw?si=8jnBLpPfv2Ubw0bV\" title=\"YouTube video player\"></iframe>', 'assets/Images/locandine/le-ali-della-liberta.jpg', 1, 0.0),
(2, 'Il padrino', '1972', 'Il patriarca anziano di una dinastia criminale trasferisce il controllo del suo impero clandestino al figlio riluttante.', 'Crimine', 175, 'Marlon Brando, Al Pacino', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UaVTIH8mujA?si=523JZZSmndc6FeI8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/the_godfather.jpeg', 2, 0.0),
(3, 'Il cavaliere oscuro', '2008', 'Quando la minaccia conosciuta come Joker emerge dal suo misterioso passato, porta caos e distruzione sulle persone di Gotham.', 'Azione', 152, 'Christian Bale, Heath Ledger', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EXeTwQWrcwY?si=jmPoahsxnv-TP3o1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/cavaliereoscuro.jpg', 3, 0.0),
(4, 'Pulp Fiction', '1994', 'Le vite di due sicari, un pugile, un gangster e sua moglie e una coppia di banditi di una tavola calda si intrecciano in quattro racconti di violenza e redenzione.', 'Crimine', 154, 'John Travolta, Uma Thurman, Samuel L. Jackson', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EXeTwQWrcwY?si=jmPoahsxnv-TP3o1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/pulpfiction.jpg', 4, 0.0),
(5, 'Il Signore degli Anelli: Il ritorno del re', '2003', 'Gandalf e Aragorn guidano il mondo degli uomini contro l\'esercito di Sauron per distogliere la sua attenzione da Frodo e Sam che si avvicinano a Monte Fato con l\'Unico Anello.', 'Avventura', 201, 'Elijah Wood, Viggo Mortensen', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EXeTwQWrcwY?si=jmPoahsxnv-TP3o1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/resignore.jpg', 5, 0.0),
(6, 'Forrest Gump', '1994', 'Le presidenze di Kennedy e Johnson, la guerra del Vietnam, lo scandalo Watergate e altri eventi storici si svolgono dal punto di vista di un uomo dell\'Alabama con un QI di 75.', 'Drammatico', 142, 'Tom Hanks, Robin Wright', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EXeTwQWrcwY?si=jmPoahsxnv-TP3o1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/forrestgump.jpg', 6, 0.0),
(7, 'Inception', '2010', 'Un ladro che ruba segreti aziendali attraverso l\'uso della tecnologia di condivisione dei sogni viene incaricato del compito inverso di piantare un\'idea nella mente di un CEO.', 'Fantascienza', 148, 'Leonardo DiCaprio, Joseph Gordon-Levitt', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EXeTwQWrcwY?si=jmPoahsxnv-TP3o1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/inception.jpg', 3, 0.0),
(8, 'Fight Club', '1999', 'Un lavoratore d\'ufficio insonne e un fabbricante di sapone senza scrupoli formano un club di lotta sotterraneo che evolve in qualcosa di molto di più.', 'Drammatico', 139, 'Brad Pitt, Edward Norton', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BdJKm16Co6M?si=2RHiempn4_arCxvm\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/figthclub.jpg', 7, 0.0),
(9, 'Matrix', '1999', 'Un hacker informatico apprende dai ribelli misteriosi la vera natura della sua realtà e il suo ruolo nella guerra contro i suoi controllori.', 'Fantascienza', 136, 'Keanu Reeves, Laurence Fishburne', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VdZwkM_HWzw?si=F2Zc7CaFxowmoUbt\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/matrix.jpg', 8, 0.0),
(10, 'Quei bravi ragazzi', '1990', 'La storia di Henry Hill e della sua vita nella mafia, coprendo il suo rapporto con sua moglie Karen Hill e i suoi partner mafiosi Jimmy Conway e Tommy DeVito.', 'Crimine', 146, 'Robert De Niro, Ray Liotta', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2ilzidi_J8Q?si=e5z1iPdQExCfqO9u\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/QueiBraviRagazzi.jpeg', 9, 0.0),
(11, 'Il silenzio degli innocenti', '1991', 'Una giovane cadetta dell\'FBI deve ricevere l\'aiuto di un assassino cannibale incarcerato e manipolativo per catturare un altro serial killer, un folle che scuoia le sue vittime.', '', 118, 'Jodie Foster, Anthony Hopkins', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6iB21hsprAQ?si=iCoNEalw-mwMtrhD\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'https://image.url/silence.jpg', 10, 0.0),
(12, 'Salvate il soldato Ryan', '1998', 'Dopo lo sbarco in Normandia, un gruppo di soldati americani va oltre le linee nemiche per recuperare un paracadutista i cui fratelli sono stati uccisi in azione.', 'Guerra', 169, 'Tom Hanks, Matt Damon', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9CiW_DgxCnQ?si=f9ZQBK9RJALcZNSB\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/ryan.jpg', 11, 0.0),
(13, 'Schindler\'s List', '1993', 'In Polonia occupata dai tedeschi durante la Seconda Guerra Mondiale, l\'industriale Oskar Schindler diventa gradualmente preoccupato per i suoi lavoratori ebrei dopo aver assistito alla loro persecuzione da parte dei nazisti.', 'Biografico', 195, 'Liam Neeson, Ralph Fiennes', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9CiW_DgxCnQ?si=f9ZQBK9RJALcZNSB\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/schinder.jpg', 11, 0.0),
(14, 'Interstellar', '2014', 'Un gruppo di esploratori viaggia attraverso un wormhole nello spazio nel tentativo di garantire la sopravvivenza dell\'umanità.', 'Fantascienza', 169, 'Matthew McConaughey, Anne Hathaway', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zSWdZVtXT7E?si=0tkPd9bfs3R2znCS\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/interstellar.jpg', 3, 0.0),
(15, 'Odissea nello spazio', '1968', 'Un viaggio nello spazio verso Giove con l\'intelligenza artificiale HAL 9000 che controlla l\'astronave, mentre il mistero del monolite nero si intensifica.', 'Fantascienza', 149, 'Keir Dullea, Gary Lockwood', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oR_e9y-bka0?si=mKseT1ee4P6i4ysh\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/OdisseaNello spazio.jpg', 12, 0.0),
(16, 'La storia della principessa splendente', '2013', 'Un taglialegna trova una bambina in un bambù luminoso e la cresce come sua figlia. Man mano che cresce, si rivela essere una principessa dalla bellezza straordinaria.', 'Animazione', 137, 'Aki Asakura, Kengo Kora', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/W71mtorCZDw?si=8jnBLpPfv2Ubw0bV\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/princesskaguya.jpg', 13, 0.0),
(17, 'Nosferatu', '1979', 'Il conte Dracula si trasferisce dalla Transilvania in Germania, portando con sé morte e pestilenza.', 'Horror', 107, 'Klaus Kinski, Isabelle Adjani', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/S1Rachk7ipI?si=0DEpIMoZWAKr0U3G\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/nosferatu.jpg', 14, 0.0),
(18, 'Il ragazzo e l\'airone', '2023', 'Un giovane ragazzo scopre un mondo misterioso attraverso un airone che lo guida in una serie di avventure.', 'Animazione', 124, 'Masaki Suda, Takuya Kimura', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t5khm-VjEu4?si=4C_GRWR3M9bEgFLN\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/ragazzoairone.jpg', 15, 0.0),
(19, 'Fantasia 2000', '1999', 'Una serie di segmenti animati ambientati su brani musicali classici, con animazioni moderne e storie fantastiche.', 'Animazione', 74, 'Steve Martin, Itzhak Perlman', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pPArGEkU4rM?si=JYCguECtsaxYX-2L\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/fantasia.jpg', 16, 0.0),
(20, 'Steamboat Willie', '1928', 'Mickey Mouse fa il suo debutto come capitano di un battello a vapore, affrontando avventure comiche.', 'Animazione', 8, 'Walt Disney', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hmzO--ox7X0?si=Z2fOOfR1trHuDuYd\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/steamboat.jpeg', 17, 0.0),
(21, 'Il gladiatore', '2000', 'Un ex generale romano cerca vendetta contro l\'imperatore corrotto che ha ucciso la sua famiglia e lo ha reso schiavo.', 'Storico', 155, 'Russell Crowe, Joaquin Phoenix', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/P5ieIbInFpg?si=SbpADiL2ic4mldJt\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/gladiatore.jpg', 18, 0.0),
(22, 'Il Re Leone', '1994', 'Un giovane leone deve superare la tragedia della perdita del padre e affrontare il suo destino come re della savana.', 'Animazione', 88, 'Matthew Broderick, Jeremy Irons', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lFzVJEksoDY?si=bI4J7iKstyfJ1vfV\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/IlReleone.jpg', 19, 0.0),
(23, 'Titanic', '1997', 'Una storia d\'amore tragica tra una giovane donna dell\'alta società e un artista povero a bordo del Titanic.', 'Romantico', 195, 'Leonardo DiCaprio, Kate Winslet', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CHekzSiZjrY?si=dbg6pVdXcbzWsOC8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/titanic.jpg', 20, 0.0),
(24, 'La vita è bella', '1997', 'Un uomo usa il suo umorismo e la sua immaginazione per proteggere suo figlio dalle orrori della Seconda Guerra Mondiale.', 'Commedia', 116, 'Roberto Benigni, Nicoletta Braschi', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pAYEQP8gx3w?si=k8QE_t27s5gN51a_\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/vitabella.jpg', 20, 0.0),
(25, 'Avatar', '2009', 'Un marine paraplegico viene inviato sul pianeta Pandora per una missione unica ma si trova a lottare per proteggere il nuovo mondo che ha imparato ad amare.', 'Fantascienza', 162, 'Sam Worthington, Zoe Saldana', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5PSNL1qE6VY?si=t_DUcz7fnMGriDz3\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/avatar.jpg', 16, 0.0),
(26, 'Ritorno al futuro', '1985', 'Un adolescente viene accidentalmente mandato indietro nel tempo da uno scienziato eccentrico e deve assicurarsi che i suoi genitori si incontrino per salvare la sua stessa esistenza.', 'Fantascienza', 116, 'Michael J. Fox, Christopher Lloyd', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qvsgGtivCgs?si=HvDd5dkauswtZepm\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/ritornoalfuturo.jpg', 23, 0.0),
(27, 'Il buono, il brutto, il cattivo', '1966', 'Un cacciatore di taglie deve unire le forze con un bandito e un assassino per trovare un tesoro sepolto in un cimitero.', 'Western', 178, 'Clint Eastwood, Eli Wallach', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WCN5JJY_wiA?si=WoayXv94N7diAjaR\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/buonobruttocattivo.jpg', 24, 0.0),
(28, 'Shining', '1980', 'Un custode di un hotel invernale diventa pazzo e mette in pericolo la sua famiglia, mentre fenomeni soprannaturali influenzano la loro permanenza.', 'Horror', 146, 'Jack Nicholson, Shelley Duvall', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XGqfei5GGDo?si=Xk43tWVa8Oo_QPEY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'https://image.url/shining.jpg', 12, 0.0),
(29, 'Alien', '1979', 'L\'equipaggio di una nave spaziale commerciale scopre un\'entità aliena che inizia a cacciarli uno a uno.', 'Horror', 117, 'Sigourney Weaver, Tom Skerritt', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jQ5lPt9edzQ?si=xpSXs8s0OY9cpzgP\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/alien.jpg', 18, 0.0),
(30, 'I predatori dell\'arca perduta', '1981', 'L\'archeologo e avventuriero Indiana Jones deve recuperare l\'Arca dell\'Alleanza prima che i nazisti possano utilizzarla per i loro scopi malvagi.', 'Avventura', 115, 'Harrison Ford, Karen Allen', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LgqTrI57y6k?si=a2MY6cXZyaQNX1N2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'assets/Images/locandine/indiana.jpg', 27, 0.0);

-- --------------------------------------------------------

--
-- Struttura della tabella `Premio`
--

CREATE TABLE `Premio` (
  `PremioID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `anno` year(4) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `PremioFilm`
--

CREATE TABLE `PremioFilm` (
  `premioID` int(11) NOT NULL,
  `filmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `Regista`
--

CREATE TABLE `Regista` (
  `id` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `cognome` varchar(64) NOT NULL,
  `data_di_nascita` date DEFAULT NULL,
  `luogo_di_nascita` varchar(64) DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Regista`
--

INSERT INTO `Regista` (`id`, `nome`, `cognome`, `data_di_nascita`, `luogo_di_nascita`, `biografia`, `foto`) VALUES
(1, 'Frank', 'Darabont', '1959-01-28', 'Montbéliard, Francia', 'Frank Darabont è un regista, sceneggiatore e produttore cinematografico francese naturalizzato statunitense. È noto per la regia di \"Le ali della libertà\".', 'assets/Images/registi/darabont.jpeg'),
(2, 'Francis Ford', 'Coppola', '1939-04-07', 'Detroit, Michigan, USA', 'Francis Ford Coppola è un regista, sceneggiatore e produttore cinematografico statunitense. È noto per la regia de \"Il padrino\".', 'assets/Images/registi/fordCoppola.jpg'),
(3, 'Christopher', 'Nolan', '1970-07-30', 'Londra, Regno Unito', 'Christopher Nolan è un regista, sceneggiatore e produttore cinematografico britannico. È noto per la regia di \"Il cavaliere oscuro\" e \"Inception\".', 'assets/Images/registi/noland.jpeg\r\n'),
(4, 'Quentin', 'Tarantino', '1963-03-27', 'Knoxville, Tennessee, USA', 'Quentin Tarantino è un regista, sceneggiatore, produttore cinematografico e attore statunitense. È noto per la regia di \"Pulp Fiction\".', 'assets/Images/registi/QuentinTarantino.jpg'),
(5, 'Peter', 'Jackson', '1961-10-31', 'Wellington, Nuova Zelanda', 'Peter Jackson è un regista, sceneggiatore e produttore cinematografico neozelandese. È noto per la regia de \"Il Signore degli Anelli: Il ritorno del re\".', 'assets/Images/registi/jackson.jpg'),
(6, 'Robert', 'Zemeckis', '1951-05-14', 'Chicago, Illinois, USA', 'Robert Zemeckis è un regista, produttore cinematografico e sceneggiatore statunitense. È noto per la regia di \"Forrest Gump\".', 'https://image.url/robertzemeckis.jpg'),
(7, 'David', 'Fincher', '1962-08-28', 'Denver, Colorado, USA', 'David Fincher è un regista e produttore cinematografico statunitense. È noto per la regia di \"Fight Club\".', 'assets/Images/registi/DavidFincher.jpg'),
(8, 'Lana', 'Wachowski', '1965-06-21', 'Chicago, Illinois, USA', 'Lana Wachowski è una regista, sceneggiatrice e produttrice cinematografica statunitense. È nota per la regia di \"Matrix\".', 'assets/Images/registi/lanawachowski.jpg'),
(9, 'Martin', 'Scorsese', '1942-11-17', 'New York City, New York, USA', 'Martin Scorsese è un regista, sceneggiatore e produttore cinematografico statunitense. È noto per la regia di \"Quei bravi ragazzi\".', 'assets/Images/registi/MartinScorsese.jpg'),
(10, 'Jonathan', 'Demme', '1944-02-22', 'Baldwin, New York, USA', 'Jonathan Demme è stato un regista, produttore cinematografico e sceneggiatore statunitense. È noto per la regia de \"Il silenzio degli innocenti\".', 'assets/Images/registi/JonathanDemme.jpg'),
(11, 'Steven', 'Spielberg', '1946-12-18', 'Cincinnati, Ohio, USA', 'Steven Spielberg è un regista, sceneggiatore e produttore cinematografico statunitense. È noto per la regia di \"Salvate il soldato Ryan\" e \"Schindler\'s List\".', 'assets/Images/registi/spielgberg.jpg\r\n'),
(12, 'Stanley', 'Kubrick', '1928-07-26', 'New York City, New York, USA', 'Stanley Kubrick è stato un regista, sceneggiatore e produttore cinematografico statunitense. È noto per la regia di \"Odissea nello spazio\".', 'assets/Images/registi/StanleyKubrick.jpg'),
(13, 'Isao', 'Takahata', '1935-10-29', 'Ujiyamada, Giappone', 'Isao Takahata è stato un regista e sceneggiatore giapponese. È noto per la regia de \"La storia della principessa splendente\".', 'assets/Images/registi/Takahata.jpg'),
(14, 'Werner', 'Herzog', '1942-09-05', 'Monaco di Baviera, Germania', 'Werner Herzog è un regista, sceneggiatore e produttore cinematografico tedesco. È noto per la regia di \"Nosferatu\".', 'assets/Images/registi/wernerherzog.jpg'),
(15, 'Hayao', 'Miyazaki', '1941-01-05', 'Tokyo, Giappone', 'Hayao Miyazaki è un regista, sceneggiatore e produttore cinematografico giapponese. È noto per la regia de \"Il ragazzo e l\'airone\".', 'assets/Images/registi/hayao.jpg'),
(16, 'James', 'Cameron', '1954-08-16', 'Kapuskasing, Canada', 'James Cameron è un regista, sceneggiatore e produttore cinematografico canadese. È noto per la regia di \"Avatar\".', 'assets/Images/registi/James.jpg'),
(17, 'Robert', 'Stanton', '1901-11-03', 'Atlanta, Georgia, USA', 'Robert Stanton è stato un regista e produttore cinematografico statunitense. È noto per la regia di \"Steamboat Willie\".', 'https://image.url/robertstanton.jpg'),
(18, 'Ridley', 'Scott', '1937-11-30', 'South Shields, Regno Unito', 'Ridley Scott è un regista e produttore cinematografico britannico. È noto per la regia di \"Il gladiatore\".', 'assets/Images/registi/scott.jpg'),
(19, 'Roger', 'Allers', '1949-06-29', 'New York City, New York, USA', 'Roger Allers è un regista, sceneggiatore e animatore statunitense. È noto per la regia de \"Il Re Leone\".', 'assets/Images/registi/allers.jpeg'),
(20, 'Roberto', 'Benigni', '1952-10-27', 'Castiglion Fiorentino, Italia', 'Roberto Benigni è un attore, regista e sceneggiatore italiano. È noto per la regia de \"La vita è bella\".', 'assets/Images/registi/Benigni.jpg'),
(23, 'Robert', 'Zemeckis', '1951-05-14', 'Chicago, Illinois, USA', 'Robert Zemeckis è un regista, produttore cinematografico e sceneggiatore statunitense. È noto per la regia di \"Ritorno al futuro\".', 'assets/Images/registi/ROBERTZEMECKIS.jpg'),
(24, 'Sergio', 'Leone', '1929-01-03', 'Roma, Italia', 'Sergio Leone è stato un regista, sceneggiatore e produttore cinematografico italiano. È noto per la regia de \"Il buono, il brutto, il cattivo\".', 'assets/Images/registi/leone.jpeg'),
(27, 'Steven', 'Spielberg', '1946-12-18', 'Cincinnati, Ohio, USA', 'Steven Spielberg è un regista, sceneggiatore e produttore cinematografico statunitense. È noto per la regia di \"I predatori dell\'arca perduta\".', 'https://image.url/stevenspielberg.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirmation_code` text DEFAULT NULL,
  `confirmation_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id`, `username`, `email`, `password`, `confirmation_code`, `confirmation_time`, `created_at`) VALUES
(1, 'admin', NULL, 'Admin123', NULL, '2024-05-24 21:12:56', '0000-00-00 00:00:00'),
(2, 'admin2', NULL, 'admin234', NULL, '2024-05-25 13:59:00', '0000-00-00 00:00:00'),
(4, 'Marior123', 'danilo.pinza@gmail.com', '$2y$10$p4YO3R/Am3FywTGhe0dN1.48rJveOBJ8gsKyl9G8xqMT5BLNz6kjG', '47aafa9af4', '2024-05-25 14:08:44', '2024-05-25 14:08:44');

-- --------------------------------------------------------

--
-- Struttura della tabella `Vote`
--

CREATE TABLE `Vote` (
  `utenteID` int(11) NOT NULL,
  `filmID` int(11) NOT NULL,
  `rating` decimal(2,1) DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Commento`
--
ALTER TABLE `Commento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regista_id` (`regista_id`);

--
-- Indici per le tabelle `Premio`
--
ALTER TABLE `Premio`
  ADD PRIMARY KEY (`PremioID`);

--
-- Indici per le tabelle `PremioFilm`
--
ALTER TABLE `PremioFilm`
  ADD PRIMARY KEY (`premioID`,`filmID`),
  ADD KEY `filmID` (`filmID`);

--
-- Indici per le tabelle `Regista`
--
ALTER TABLE `Regista`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Vote`
--
ALTER TABLE `Vote`
  ADD PRIMARY KEY (`utenteID`,`filmID`),
  ADD KEY `filmID` (`filmID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Commento`
--
ALTER TABLE `Commento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `Film`
--
ALTER TABLE `Film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `Premio`
--
ALTER TABLE `Premio`
  MODIFY `PremioID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Regista`
--
ALTER TABLE `Regista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Commento`
--
ALTER TABLE `Commento`
  ADD CONSTRAINT `Commento_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `Film` (`id`),
  ADD CONSTRAINT `Commento_ibfk_2` FOREIGN KEY (`utente_id`) REFERENCES `utente` (`id`);

--
-- Limiti per la tabella `Film`
--
ALTER TABLE `Film`
  ADD CONSTRAINT `Film_ibfk_1` FOREIGN KEY (`regista_id`) REFERENCES `Regista` (`id`);

--
-- Limiti per la tabella `PremioFilm`
--
ALTER TABLE `PremioFilm`
  ADD CONSTRAINT `PremioFilm_ibfk_1` FOREIGN KEY (`premioID`) REFERENCES `Premio` (`PremioID`),
  ADD CONSTRAINT `PremioFilm_ibfk_2` FOREIGN KEY (`filmID`) REFERENCES `Film` (`id`);

--
-- Limiti per la tabella `Vote`
--
ALTER TABLE `Vote`
  ADD CONSTRAINT `Vote_ibfk_1` FOREIGN KEY (`utenteID`) REFERENCES `utente` (`id`),
  ADD CONSTRAINT `Vote_ibfk_2` FOREIGN KEY (`filmID`) REFERENCES `Film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
