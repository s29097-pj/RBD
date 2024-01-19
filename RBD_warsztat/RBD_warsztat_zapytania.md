## RBD_warsztat - zapytania

### 1. Zapytanie zwracające listę wszystkich samochodów wraz z przypisaną im nazwą modelu i marki pojazdu.

```sql
SELECT s.id, ma.nazwa AS marka, m.nazwa AS model
FROM samochod s
JOIN model m ON s.model_id = m.id
JOIN marka ma ON m.marka_id = ma.id;
```

To zapytanie używa klauzuli **JOIN** do łączenia tabel `samochod`, `model` i `marka` na odpowiednich kluczach obcych, aby uzyskać pełne informacje o samochodach wraz z nazwą modelu i marki.

### 2. Zapytanie zwracające listę wszystkich samochodów wyprodukowanych przed rokiem 1990.

```sql
SELECT s.id
FROM samochod s
WHERE data_prod < '1990-01-01';
```

W tym zapytaniu używam funkcji **WHERE data_prod < '1990-01-01'**, aby wybrać identyfikatory (id) samochodów z tabeli `samochod`, które zostały wyprodukowane przed rokiem 1990.

### 3. Zapytanie zwracające liczbę wszystkich samochodów w naszej bazie.

```sql
SELECT COUNT(*) AS liczba_samochodow
FROM samochod;
```

W tym zapytaniu używam funkcji **COUNT(*)**, aby zliczyć wszystkie rekordy w tabeli `samochod` i nadaję wynikowej kolumnie opcjonalnie alias poleceniem *AS liczba_samochodow* dla czytelności wyników.

### 4. Zapytanie zwracające datę produkcji najmłodszego samochodu.

```sql
SELECT MIN(data_prod) AS najmlodsza_data_prod
FROM samochod;
```

W tym zapytaniu używam funkcji **MIN(data_prod**), aby znaleźć najmniejszą datę produkcji w tabeli `samochod`, a fraza *AS najmlodsza_data_prod* nadaje wynikowej kolumnie alias (nazwę) dla czytelności wyników.

### 5. Zapytanie wyświetlające ile jest niepowtarzalnych nazw modeli samochodów zarejestrowanych w naszej bazie.

```sql
SELECT COUNT(DISTINCT m.nazwa) AS liczba_unikalnych_modeli
FROM model m
INNER JOIN samochod s ON s.model_id = m.id;
```

W tym zapytaniu używam *INNER JOIN*, aby połączyć tabelę `model` z tabelą `samochod` na podstawie kolumny `model_id`. Następnie używasz funkcji **COUNT(DISTINCT m.nazwa)**, aby zliczyć liczbę unikalnych nazw modeli. Alias *AS liczba_unikalnych_modeli* jest dodany dla czytelności wyników.


### 6.Zapytanie zwracające tylko te imiona klientów, które powtarzają się kilkakrotnie.

```sql
SELECT imie, COUNT(*) as liczba_wystapien
FROM klient
GROUP BY imie
HAVING COUNT(*) > 1;
```

W tym zapytaniu używam klauzuli *GROUP BY* do pogrupowania wyników według kolumny `imie`. Następnie, korzystając z klauzuli **HAVING COUNT(*) > 1**, wybieram tylko te grupy, które mają więcej niż jedno wystąpienie, co oznacza, że dane imię klienta pojawia się kilkakrotnie. Dodatkowo, dodaję alias *liczba_wystapien* do zliczającej kolumny, aby wyniki były bardziej czytelne.

### 7. Zapytanie wyświetlające klienta posiadającego samochód o numerze rejestracyjny "GD 12345".

```sql
SELECT imie, nazwisko, pesel
FROM klient
INNER JOIN samochod s ON klient.id = s.klient_id
WHERE s.nr_rej = 'GD 12345';
```

W tym zapytaniu używam klauzuli *INNER JOIN*, aby połączyć tabelę `klient` z tabelą `samochod` na podstawie kolumny `klient_id`. Następnie, przy użyciu klauzuli **WHERE s.nr_rej = 'GD 12345'**, wybieram tylko te wiersze, w których numer rejestracyjny samochodu jest równy "GD 12345". Ostatecznie, w wynikach zwracane są informacje dotyczące klienta (imienia, nazwiska, peselu), który posiada samochód o podanym numerze rejestracyjnym.


### 8. Zapytanie wyświetlające usługi wykonane w ramach wizyty o numerze 123456789.

```sql
SELECT u.id, u.opis
FROM usluga u
INNER JOIN w_u wu ON u.id = wu.usluga_id
INNER JOIN wizyta w ON wu.wizyta_id = w.id
WHERE w.id = 123456789;
```

W tym zapytaniu używam dwóch klauzul **INNER JOIN**, aby połączyć tabelę `usluga` z tabelą pośrednią `w_u` (łączącą usługi z wizytami) oraz tabelę `wizyta`. Następnie, przy użyciu klauzuli **WHERE w.id = 123456789**, wybieram tylko te usługi, które były wykonywane w ramach wizyty o numerze 123456789. Ostatecznie, w wynikach zwracane są informacje dotyczące usług wykonanych w ramach konkretnej wizyty.

### 9. Zapytanie wyświetlające najdroższą usługę.

- Zapytanie wybierające najdroższą usługę przy użyciu klauzuli **WHERE** i podzapytania:

```sql
SELECT opis, cena_rbg
FROM usluga
WHERE cena_rbg = (SELECT MAX(cena_rbg) FROM usluga);
```

W tym zapytaniu używam klauzuli **WHERE** w celu wybrania usługi, której cena `(cena_rbg)` jest równa maksymalnej cenie w całej tabeli `usluga`. Wykorzystujemy podzapytanie **(SELECT MAX(cena_rbg) FROM usluga**, aby znaleźć najwyższą cenę, a następnie porównujemy ją z ceną każdej usługi w tabeli.

- Zapytanie wybierające najdroższą usługę przy użyciu klauzuli **ORDER BY** i **TOP 1**:

```sql
SELECT TOP 1 opis, cena_rbg
FROM usluga
ORDER BY cena_rbg DESC;
```

To zapytanie używa klauzuli **ORDER BY** w połączeniu z **DESC** (malejąco), aby posortować usługi według ceny w kolumnie `cena_rbg` od najwyższej do najniższej. Następnie, używając **TOP 1**, wybieramy jedynie pierwszy wiersz, co odpowiada najdroższej usłudze w tabeli `usluga`. To podejście wybiera tylko ten jeden wiersz z najwyższą ceną, co sprawia, że zapytanie jest bardziej skondensowane niż pierwsza opcja z klauzulą **WHERE**.

### 10. Zapytanie wyświetlające sumaryczny koszt pojedynczych części wykorzystywanych w ramach wizyty o numerze 987654321.

```sql
SELECT SUM(c.cena) AS sumaryczny_koszt
FROM czesc c
INNER JOIN c_w cw ON c.id = cw.czesc_id
INNER JOIN wizyta w ON cw.wizyta_id = w.id
WHERE w.id = 987654321;
```

W tym zapytaniu używam funkcji agregującej **SUM**, aby obliczyć sumaryczny koszt pojedynczych części wykorzystywanych w ramach wizyty o numerze 987654321. Wykorzystuję klauzule **INNER JOIN** do połączenia tabeli `czesc` z tabelą pośrednią `c_w` i tabelą `wizyta`. Klauzula **WHERE** ogranicza wyniki do danej wizyty.
