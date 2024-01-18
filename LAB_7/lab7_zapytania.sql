-- Wyświetlić listę samochodów z datą prod >= @x, gdzie x='2000-01-01'
SET @x = '2000-01-01';
SELECT * FROM samochod WHERE data_prod >= @x;

-- Wyświetlić pole @x z tabeli samochod, gdzie @x ='id'
SET @x = 'id';
SELECT id, @x FROM samochod;

-- Zwrócenie nazwiska klienta o numerze pesel '80122412345' do zmiennej x
SELECT nazwisko INTO @x FROM klient WHERE pesel = '80122412345';

-- Przykład zastosowania zmiennej do dynamicznej budowy zapytań
SET @x = "imie";
SET @s = CONCAT("SELECT ", @x, " FROM klient");
PREPARE stmt FROM @s;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Tworzenie funkcji Hello
DROP FUNCTION IF EXISTS Hello;
DELIMITER ;;
CREATE FUNCTION Hello() RETURNS VARCHAR(20)
BEGIN
    RETURN 'Hello world';
END;
DELIMITER ;

-- Wywołanie Hello()
SELECT Hello();

-- Tworzenie procedury Hello
DROP PROCEDURE IF EXISTS Hello;
DELIMITER ;;
CREATE PROCEDURE Hello()
BEGIN
    SELECT 'Hello world';
END;
DELIMITER ;

-- Funkcja bez parametru – dodawanie Kowalskiego jako Klienta
DELIMITER ;;
CREATE FUNCTION `dodaj_klienta`() RETURNS BOOL
BEGIN
    INSERT INTO klient VALUES ('', 'Wieslaw', 'Kowalski', '01010190098');
    RETURN TRUE;
END;
DELIMITER ;

-- Funkcja z parametrem IN
DELIMITER ;;
CREATE FUNCTION `dodaj_klienta2`(imie VARCHAR(20), nazwisko VARCHAR(40), pesel CHAR(11)) RETURNS BOOL
BEGIN
    INSERT INTO klient VALUES ('', imie, nazwisko, pesel);
    RETURN TRUE;
END;
DELIMITER ;

-- Wywołanie funkcji z parametrem IN
SELECT dodaj_klienta2('Andrzej', 'Biały', '01234567890');

-- Funkcja z parametrem IN + sprawdzenie, czy klient istnieje
DROP FUNCTION IF EXISTS `dodaj_klienta3`;
CREATE FUNCTION `dodaj_klienta3`(imie VARCHAR(20), nazwisko VARCHAR(40), pesel_ CHAR(11)) RETURNS BOOL
BEGIN
    IF (SELECT COUNT(*) FROM klient WHERE pesel = pesel_) > 0 THEN
        RETURN FALSE;
    ELSE
        INSERT INTO klient VALUES ('', imie, nazwisko, pesel_);
        RETURN TRUE;
    END IF;
END;

-- Procedura, która policzy samochody starsze i młodsze niż data_prod
CREATE PROCEDURE `pokaz_samochody`(x DATE, OUT count_mlodsze INT, OUT count_starsze INT)
BEGIN
    SELECT COUNT(*) FROM samochod WHERE data_prod >= x INTO count_mlodsze;
    SELECT COUNT(*) FROM samochod WHERE data_prod < x INTO count_starsze;
END;

-- Wywołanie procedury
CALL pokaz_samochody('2000-01-01', @a, @b);
SELECT @a, @b;

-- Trigger after delete na tabeli klient
DELIMITER ;;
CREATE TRIGGER t_klient_del AFTER DELETE ON klient
FOR EACH ROW
BEGIN
    INSERT INTO log VALUES (NOW(), 'usunięto wiersz z tabeli klient');
END;
DELIMITER ;

-- Trigger after update na tabeli klient
DELIMITER ;;
CREATE TRIGGER t_klient_upd AFTER UPDATE ON klient
FOR EACH ROW
BEGIN
    INSERT INTO log VALUES (NOW(), CONCAT('zmieniono wiersz w tabeli klient, imię z:', OLD.imie, ' na:', NEW.imie));
END;
DELIMITER ;

-- Trigger before insert na tabeli klient
DROP TRIGGER IF EXISTS t_klient_ins;
CREATE TRIGGER t_klient_ins BEFORE INSERT ON klient
FOR EACH ROW
BEGIN
    SET NEW.imie = UPPER(NEW.imie);
END;
