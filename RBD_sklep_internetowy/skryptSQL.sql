-- Zmiana bazy danych na s29097
USE s29097;

-- Zapytania agregujące
-- 1. Ile jest produktów w każdej kategorii?
SELECT kategoria.nazwa, COUNT(produkt.id_produkt) AS liczba_produktow
FROM kategoria
LEFT JOIN produkt ON kategoria.id_kategoria = produkt.kategoria_id
GROUP BY kategoria.nazwa;

-- 2. Średnia cena brutto produktów w danej kategorii
SELECT kategoria.nazwa, AVG(produkt.cena_brutto) AS srednia_cena_brutto
FROM kategoria
LEFT JOIN produkt ON kategoria.id_kategoria = produkt.kategoria_id
GROUP BY kategoria.nazwa;

-- 3. Suma wartości brutto zamówień dla każdego klienta
SELECT klient.id_klient, klient.nazwa_firmy, SUM(faktura.wartosc_brutto) AS suma_wartosci_brutto
FROM klient
LEFT JOIN zamowienie ON klient.id_klient = zamowienie.klient_id
LEFT JOIN faktura ON zamowienie.id_zamowienia = faktura.id_faktura
GROUP BY klient.id_klient;

-- 4. Ilość zamówień zrealizowanych w danym roku
SELECT YEAR(zamowienie.data_przyjecia) AS rok, COUNT(zamowienie.id_zamowienia) AS ilosc_zamowien
FROM zamowienie
WHERE zamowienie.czy_zrealizowano = true
GROUP BY rok;

-- 5. Maksymalna ilość sztuk w jednym zamówieniu
SELECT MAX(pozycja_faktura.liczba_szt) AS max_ilosc_sztuk
FROM pozycja_faktura;

-- Update
-- Aktualizacja ceny brutto produktu o id 1
UPDATE produkt
SET cena_brutto = cena_brutto * 1.1
WHERE id_produkt = 1;

-- Delete
-- Usunięcie zamówienia o id 3
DELETE FROM zamowienie
WHERE id_zamowienia = 3;

-- Insert
-- Dodanie nowego produktu
INSERT INTO produkt (nazwa, kategoria_id, cena_netto, cena_brutto, gwarancja, ilosc, opis)
VALUES ('Nowy Produkt', 1, 100.00, 120.00, '24 miesiące', 50, 'Opis produktu.');

-- Sprawdzenie spójności danych
-- Sprawdzenie, czy istnieje produkt o id 5
SELECT * FROM produkt WHERE id_produkt = 5;

-- Dodatkowe zapytania
-- 1. Wybierz produkty z kategorii "Elektronika" i wyświetl nazwę produktu oraz nazwę kategorii
SELECT produkt.nazwa, kategoria.nazwa AS kategoria
FROM produkt
JOIN kategoria ON produkt.kategoria_id = kategoria.id_kategoria
WHERE kategoria.nazwa = 'Elektronika';

-- 2. Policz ilość produktów w magazynie
SELECT SUM(produkt.ilosc) AS ilosc_w_magazynie
FROM produkt;

-- 3. Usuń produkt o id 8
DELETE FROM produkt
WHERE id_produkt = 8;
