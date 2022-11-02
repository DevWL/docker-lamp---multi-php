-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Czas generowania: 02 Lis 2022, 04:38
-- Wersja serwera: 8.0.31
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lamp_docker`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `title`, `body`) VALUES
(1, 'Nożownik w Pułtusku 52-latek ...', 'Nożownik w Pułtusku 52-latek zaatakował 40 latka spotkanego przypadkowo na drodze, po tym, jak dwoje chuliganów rzucających petardami i kamieniami w jego gołębnik zbiegło z miejsca zdarzenia. '),
(2, 'Uwaga kierowco! Rząd szykuje nową pułapkę. ', 'Nowe przepisy. Za mandaty zapłacimy teraz więcej. Teraz zapłacimy za dwa razy tyle, kiedy popełnimy wykroczenie po raz drugi. '),
(3, 'Ukraina odbija kolejne okupowane tereny', 'Ukraina odbija kolejne okupowane tereny. Rosja wycofuje się w popłochu. Coraz więcej Rosjan ginie na froncie. Wojsko rosyjskie zaczyna się wykrwawiać. Putin może nie doczekać kolejnego roku jako car. Nastroje społeczne w Rosji coraz gorsze. ');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
