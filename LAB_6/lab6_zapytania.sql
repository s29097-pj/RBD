-- Polecenie tworzące tabelę kierowca
CREATE TABLE kierowca (
    id INT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    kategoria VARCHAR(1),
    wiek INT,
    miasto VARCHAR(50)
);

-- Polecenia wstawiające rekordy do tabeli
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek, miasto) VALUES (1, 'jan', 'kowal', 'B', 28, 'Gdańsk');
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek, miasto) VALUES (2, 'damian', 'dowbor', 'B', 25, 'Przejazdowo');
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek, miasto) VALUES (3, 'justyna', 'lis', 'B', 30, 'Gdynia');
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek, miasto) VALUES (4, 'pawel', 'cis', 'C', 40, 'Gdańsk');
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek, miasto) VALUES (5, 'paulina', 'wilk', 'A', 50, 'Wejherowo');
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek, miasto) VALUES (6, 'pawel', 'lis', 'B', 20, 'Reda');

-- Polecenie tworzące tabelę pojazd
CREATE TABLE pojazd (
    id INT,
    marka VARCHAR(50),
    model VARCHAR(50),
    nr_rej VARCHAR(20),
    id_kierowcy INT
);

-- Polecenia wstawiające rekordy do tabeli
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (1, 'vw', 'polo', 'GD 1234s', 1);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (2, 'vw', 'golf', 'GD 1884s', 2);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (3, 'audi', 'q7', 'GDA 652mn', 1);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (4, 'mazda', 'cx-3', 'GA LOPEK', 3);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (5, 'renault', 'clio', 'GD 1234s', NULL);

-- Polecenie tworzące tabelę pasazer
CREATE TABLE pasazer (
    id INT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    id_pojazdu INT,
    miasto VARCHAR(50)
);

-- Polecenia wstawiające rekordy do tabeli
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu, miasto) VALUES (1, 'kaziu', 'kowal', 1, 'Gdańsk');
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu, miasto) VALUES (2, 'gawel', 'cis', 2, 'Warszawa');
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu, miasto) VALUES (3, 'ola', 'bodo', 3, 'Gdynia');
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu, miasto) VALUES (4, 'ala', 'kowalska', 1, 'Gdańsk');
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu, miasto) VALUES (5, 'pawel', 'lis', 2, 'Reda');

-- Ilu jest kierowców?
SELECT COUNT(*) AS 'Ilu jest kierowców?'
FROM kierowca;

-- Ilu kierowców ma kategorię B?
SELECT COUNT(*) AS 'Ilu kierowców ma kat. B?'
FROM kierowca
WHERE kategoria = 'B';

-- Średni wiek kierowców?
SELECT ROUND(AVG(wiek),0) AS 'Średni wiek kierowców'
FROM kierowca;

-- Średni wiek kierowców z kat. B?
SELECT ROUND(AVG(wiek),0) AS 'Średni wiek kierowców z kat. B'
FROM kierowca
WHERE kategoria = 'B';

-- Średni wiek kierowców per kategoria prawa jazdy
SELECT kategoria, ROUND(AVG(wiek),0) AS 'śr. wiek'
FROM kierowca
GROUP BY kategoria;

-- Średni wiek kierowców per marka pojazdu
SELECT marka, ROUND(AVG(wiek),0) AS 'śr. wiek'
FROM pojazd
JOIN kierowca
    ON pojazd.id_kierowcy = kierowca.id
GROUP BY marka;

-- Liczba pasazerów per marka pojazdu
SELECT marka, COUNT(pasazer.id) AS 'liczba pasazerow'
FROM pojazd
LEFT JOIN pasazer
    ON pasazer.id_pojazdu = pojazd.id
GROUP BY marka;

-- Liczba pasazerów per marka, kierowca
SELECT pojazd.marka, kierowca.imie AS 'imie kierowcy', kierowca.nazwisko AS 'nazwisko kierowcy', COUNT(pasazer.id) AS 'liczba pasazerow'
FROM pojazd
LEFT JOIN pasazer
    ON pasazer.id_pojazdu = pojazd.id
LEFT JOIN kierowca
    ON pojazd.id_kierowcy = kierowca.id
GROUP BY pojazd.marka, kierowca.imie, kierowca.nazwisko;

-- Ile lat mają kierowcy poszczególnych miast
SELECT miasto, SUM(wiek) AS 'Suma wieku kierowców'
FROM kierowca
GROUP BY miasto;

-- Najstarszy kierowca per miasto
SELECT imie, nazwisko, miasto, MAX(wiek)
FROM kierowca
GROUP BY miasto;

-- Najmłodszy kierowca
SELECT imie, nazwisko, MIN(wiek)
FROM kierowca;

-- Którzy kierowcy wiozą pasażerów z tego samego miasta co miasto kierowcy i ilu ich wiozą?
SELECT kierowca.imie, kierowca.nazwisko, kierowca.miasto, pasazer.miasto, COUNT(pasazer.id)
FROM kierowca
JOIN pojazd
    ON pojazd.id_kierowcy = kierowca.id
JOIN pasazer
    ON pasazer.id_pojazdu = pojazd.id
WHERE kierowca.miasto = pasazer.miasto
GROUP BY kierowca.imie, kierowca.nazwisko, kierowca.miasto;

-- Którymi markami pojazdów kierowcy wiozą więcej niz jednego pasazera?
SELECT marka, COUNT(pasazer.id) AS 'liczba pasazerow'
FROM pojazd
LEFT JOIN pasazer
    ON pasazer.id_pojazdu = pojazd.id
GROUP BY marka
HAVING COUNT(pasazer.id) > 1;

-- Pełna lista kierowcow i pasazerow (imie, nazwisko, miasto)
SELECT imie, nazwisko, miasto
FROM kierowca
UNION ALL
SELECT imie, nazwisko, miasto
FROM pasazer;

-- Unikalna lista kierowcow i pasazerow (imie, nazwisko, miasto)
SELECT imie, nazwisko, miasto FROM kierowca
UNION
SELECT imie, nazwisko, miasto FROM pasazer;
