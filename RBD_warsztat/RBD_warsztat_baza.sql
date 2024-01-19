-- Tworzenie tabeli klient
CREATE TABLE klient (
    id INT PRIMARY KEY,
    imie VARCHAR(20),
    nazwisko VARCHAR(40),
    pesel CHAR(11)
);

-- Wstawianie przykładowych danych do tabeli klient
INSERT INTO klient (id, imie, nazwisko, pesel)
VALUES
    (1, 'Jan', 'Kowalski', '12345678901'),
    (2, 'Anna', 'Nowak', '23456789012'),
    (3, 'Marek', 'Wiśniewski', '34567890123'),
    (4, 'Katarzyna', 'Dąbrowska', '45678901234');

-- Tworzenie tabeli mechanik
CREATE TABLE mechanik (
    id INT PRIMARY KEY,
    imie VARCHAR(20),
    nazwisko VARCHAR(40),
    pesel CHAR(11),
    nr_konta VARCHAR(40)
);

-- Wstawianie przykładowych danych do tabeli mechanik
INSERT INTO mechanik (id, imie, nazwisko, pesel, nr_konta)
VALUES
    (1, 'Adam', 'Nowak', '12345678901', 'PL61109010140000071219812874'),
    (2, 'Ewa', 'Kowalska', '23456789012', 'PL86101010220012345678901234'),
    (3, 'Piotr', 'Wiśniewski', '34567890123', 'PL30102010260000009027150101'),
    (4, 'Kamila', 'Dąbrowska', '45678901234', 'PL12101010600000123456789012');

-- Tworzenie tabeli marka
CREATE TABLE marka (
    id TINYINT PRIMARY KEY,
    nazwa VARCHAR(20)
);

-- Wstawianie przykładowych danych do tabeli marka
INSERT INTO marka (id, nazwa)
VALUES
    (1, 'Toyota'),
    (2, 'Ford'),
    (3, 'Honda'),
    (4, 'Volkswagen');

-- Tworzenie tabeli usluga
CREATE TABLE usluga (
    id INT PRIMARY KEY,
    opis VARCHAR(255),
    cena_rbg DECIMAL(5,2)
);

-- Wstawianie przykładowych danych do tabeli usluga
INSERT INTO usluga (id, opis, cena_rbg)
VALUES
    (1, 'Przegląd oleju', 49.99),
    (2, 'Wymiana opon', 89.50),
    (3, 'Naprawa hamulców', 129.75),
    (4, 'Diagnostyka komputerowa', 59.99);

-- Tworzenie tabeli czesc
CREATE TABLE czesc (
    id INT PRIMARY KEY,
    opis VARCHAR(255),
    cena DECIMAL(7,2)
);

-- Wstawianie przykładowych danych do tabeli czesc
INSERT INTO czesc (id, opis, cena)
VALUES
    (1, 'Filtr powietrza', 19.99),
    (2, 'Klocki hamulcowe', 39.50),
    (3, 'Łożysko kół', 59.75),
    (4, 'Akumulator', 99.99);

-- Tworzenie tabeli model
CREATE TABLE model (
    id INT PRIMARY KEY,
    nazwa VARCHAR(20),
    marka_id TINYINT,
    FOREIGN KEY (marka_id) REFERENCES marka(id)
);

-- Wstawianie przykładowych danych do tabeli model
INSERT INTO model (id, nazwa, marka_id)
VALUES
    (1, 'Corolla', 1),
    (2, 'Focus', 2),
    (3, 'Civic', 3),
    (4, 'Golf', 4);

-- Tworzenie tabeli samochod
CREATE TABLE samochod (
    id INT PRIMARY KEY,
    vin CHAR(17),
    data_prod DATE,
    nr_rej VARCHAR(7),
    klient_id INT,
    model_id INT,
    FOREIGN KEY (klient_id) REFERENCES klient(id),
    FOREIGN KEY (model_id) REFERENCES model(id)
);

-- Wstawianie przykładowych danych do tabeli samochod
INSERT INTO samochod (id, vin, data_prod, nr_rej, klient_id, model_id)
VALUES
    (1, 'WBA4Z1C54JEC23456', '2022-01-01', 'ABC1234', 1, 1),
    (2, 'WF0FXX12345C67890', '2021-12-15', 'XYZ5678', 2, 2),
    (3, 'JHM12345678901234', '2022-02-28', 'DEF9012', 3, 3),
    (4, 'WVWZZZ1JZXW123456', '2022-03-10', 'GHI3456', 4, 4);

-- Tworzenie tabeli wizyta
CREATE TABLE wizyta (
    id INT PRIMARY KEY,
    data_in DATETIME,
    data_out DATETIME,
    samochod_id INT,
    mechanik_id INT,
    FOREIGN KEY (samochod_id) REFERENCES samochod(id),
    FOREIGN KEY (mechanik_id) REFERENCES mechanik(id)
);

-- Wstawianie przykładowych danych do tabeli wizyta
INSERT INTO wizyta (id, data_in, data_out, samochod_id, mechanik_id)
VALUES
    (1, '2022-01-05 10:00:00', '2022-01-05 12:00:00', 1, 1),
    (2, '2022-02-15 14:30:00', '2022-02-15 16:45:00', 2, 2),
    (3, '2022-03-01 08:15:00', '2022-03-01 10:30:00', 3, 3),
    (4, '2022-03-20 11:45:00', '2022-03-20 14:00:00', 4, 4);

-- Tworzenie tabeli w_u
CREATE TABLE w_u (
    id INT PRIMARY KEY,
    liczba_rbg DECIMAL(5,1),
    wizyta_id INT,
    usluga_id INT,
    FOREIGN KEY (wizyta_id) REFERENCES wizyta(id),
    FOREIGN KEY (usluga_id) REFERENCES usluga(id)
);

-- Wstawianie przykładowych danych do tabeli w_u
INSERT INTO w_u (id, liczba_rbg, wizyta_id, usluga_id)
VALUES
    (1, 1.5, 1, 1),
    (2, 2.0, 2, 2),
    (3, 0.5, 3, 3),
    (4, 1.2, 4, 4);

-- Tworzenie tabeli c_w
CREATE TABLE c_w (
    id INT PRIMARY KEY,
    liczba_szt TINYINT,
    wizyta_id INT,
    czesc_id INT,
    FOREIGN KEY (wizyta_id) REFERENCES wizyta(id),
    FOREIGN KEY (czesc_id) REFERENCES czesc(id)
);

-- Wstawianie przykładowych danych do tabeli c_w
INSERT INTO c_w (id, liczba_szt, wizyta_id, czesc_id)
VALUES
    (1, 2, 1, 1),
    (2, 1, 2, 2),
    (3, 4, 3, 3),
    (4, 3, 4, 4);
