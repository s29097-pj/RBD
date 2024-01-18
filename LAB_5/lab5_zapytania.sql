-- Polecenie tworzące tabelę kierowca
CREATE TABLE kierowca (
    id INT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    kategoria VARCHAR(1),
    wiek INT
);

-- Polecenia wstawiające rekordy do tabeli
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek) VALUES (1, 'jan', 'kowal', 'B', 28);
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek) VALUES (2, 'damian', 'dowbor', 'B', 25);
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek) VALUES (3, 'justyna', 'lis', 'B', 30);
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek) VALUES (4, 'pawel', 'cis', 'C', 40);
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek) VALUES (5, 'paulina', 'wilk', 'A', 50);
INSERT INTO kierowca (id, imie, nazwisko, kategoria, wiek) VALUES (6, 'pawel', 'lis', 'B', 20);

-- Polecenie tworzące tabelę pojazd
CREATE TABLE pojazd (
    id INT,
    marka VARCHAR(50),
    model VARCHAR(50),
    nr_rej VARCHAR(20),
    id_kierowcy INT
);

-- Polecenia wstawiające rekordy do tabeli
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (1, 'Vw', 'polo', 'GD 1234s', 1);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (2, 'Vw golf', 'GD 1884s', NULL, 2);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (3, 'audi', 'q7', 'GDA 652mn', 1);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (4, 'mazda', 'cx-3', 'GA LOPEK', 3);
INSERT INTO pojazd (id, marka, model, nr_rej, id_kierowcy) VALUES (5, 'renault', 'clio', 'GD 1234s', NULL);

-- Polecenie tworzące tabelę pasazer
CREATE TABLE pasazer (
    id INT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    id_pojazdu INT
);

-- Polecenia wstawiające rekordy do tabeli
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu) VALUES (1, 'kaziu', 'kowal', 1);
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu) VALUES (2, 'gawel', 'cis', 2);
INSERT INTO pasazer (id, imie, nazwisko, id_pojazdu) VALUES (3, 'Ola', 'bodo', 3);

-- Zapytanie o tabelki w bazie danych
SHOW TABLES;

-- k1 wszystkich kierowcow
SELECT * FROM kierowca;

-- k2 kierowcow z kategoria B
SELECT * FROM kierowca WHERE kategoria = 'B';

-- k3 kierowcow starszych niz 30
SELECT * FROM kierowca WHERE wiek > 30;

-- k4 kierowcow o nazwisku lis
SELECT * FROM kierowca WHERE nazwisko = 'lis';

-- k5 kierowcow o nazwisku 3literowym
SELECT * FROM kierowca WHERE LENGTH(nazwisko) = 3;

-- k6 sredni wiek kierowcy
SELECT AVG(wiek) FROM kierowca;

-- k7 liczba unikalnych imion kierowcow
SELECT COUNT(DISTINCT imie) FROM kierowca;

-- k8 nazwisko i wiek kierowcy
SELECT nazwisko, wiek FROM kierowca;

-- k9 nazwiska malymi literami
SELECT LOWER(nazwisko) FROM kierowca;

-- K10 dane o pojazdach i kierowcach dla kierowcy o id=1'
SELECT * FROM pojazd WHERE id_kierowcy = 1;

-- K11 dane o pojazdach, pasażerach i kierowcach dla pojazdu o id='2'
SELECT * FROM pojazd
LEFT JOIN pasazer ON pojazd.id = pasazer.id_pojazdu
LEFT JOIN kierowca ON pojazd.id_kierowcy = kierowca.id
WHERE pojazd.id = 2;

-- K13 średni wiek kierowców z kategorią 'B' kierujących pojazdami marki 'vw'
SELECT AVG(kierowca.wiek) FROM kierowca
JOIN pojazd ON pojazd.id_kierowcy = kierowca.id
WHERE kierowca.kategoria = 'B' AND pojazd.marka = 'Vw';
