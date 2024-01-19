# Typy danych w MySQL

## Numeryczne - wartość całkowita

| Nazwa     | Opis                                                                                                                                                                                                                                                                                                       |
|-----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| TINYINT   | 1-bajtowe pole, przechowujące wartości całkowite bez znaku z przedziału od 0 do 255 lub ze znakiem z przedziału od -127 do 127                                                                                                                 |
| SMALLINT  | 2-bajtowa wartość całkowita. Zakres wartości bez znaku od 0 do 65 535 lub ze znakiem od -32 768 do 32 768                                                                                                                                     |
| MEDIUMINT | 3-bajtowa wartość całkowita. Zakres wartości od 0 do 16 777 215 lub ze znakiem od -8 388 608 do 8 388 608                                                                                                                                  |
| INT       | 4-bajtowa wartość całkowita. Zakres wartości ze znakiem od -2 147 483 648 do 2 147 483 647 lub bez znaku od 0 do 4 294 967 295                                                                                                                |
| BIGINT    | 8-bajtowa wartość całkowita. Typ BIGINT jest używany podczas przeprowadzania obliczeń. Stosując pola tego typu we własnej bazie danych należy uważać, aby ich wartości nie były zbyt duże, ponieważ użyte w obliczeniach mogą doprowadzić do błędu przepełnienia |

## Numeryczne - liczba zmiennoprzecinkowa

| Nazwa           | Opis                                                                                                                                                                                               |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| FLOAT(dokładność) | Liczba zmiennoprzecinkowa z precyzją wyrażaną liczbą bajtów. Dwie wartości akceptowane jako precyzja to 4 i 8. Szczegóły dotyczące tych dwóch typów danych opisują pola FLOAT i DOUBLE                 |
| FLOAT           | 4-bajtowa liczba zmiennoprzecinkowa z zakresu od -1.402823466E+38 do -1.175494351E-38, 0 i 1.175494351E-38 do 3.402823466E+38                                                                       |
| DOUBLE          | 8-bajtowa liczba zmiennoprzecinkowa przechowująca wartości z zakresu od -1.7976931348623157E+308 do -2.2250738585072014E-308, 0, i 2.2250738585072014E-308 do 1.7976931348623157E+308             |
| DECIMAL         | Pole zmiennoprzecinkowe o takiej samej pojemności jak DOUBLE. Liczba, zamiast zostać zredukowana do postaci szesnastkowej, pamiętana jest w formacie znakowym                                  |

## Data i czas

| Nazwa     | Opis                                                                                                                                                                                                   |
|-----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DATE      | Data (bez czasu), wyświetlana w formacie RRRR-MM-DD. Akceptuje daty w różnych formatach z zakresu od 1000-01-01 do 9999-12-31                                                                           |
| DATETIME  | Pole daty z czasem dnia wyświetlane według formatu RRRR-MM-DD GG:MM:SS. Może przechowywać wartości z zakresu od 1000-01-01 00:00:00 do 9999-12-31 23:59:59                                              |
| TIMESTAMP | Data i czas liczony od początku epoki systemu UNIX, 1970-01-01 00:00:00, do momentu kiedy 32-bitowe pole przechowujące liczbę sekund, jaka upłynęła od tej daty ulegnie przepełnieniu w roku 2037.    |
| TIME      | Czas mieszczący się w przedziale od -838:59:59 do 838:59:59                                                                                                                                          |
| YEAR      | Rok. Dozwolone wartości to przedział od 1901 do 2155 oraz wartość 0000. MySQL wyświetla wartość typu YEAR w formacie RRRR                                                                                   |

## Tekstowe i znakowe

| Nazwa       | Opis                                                                                                                                                                                                |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CHAR        | Pole znakowe o stałej długości z zakresu od 1 do 255 bajtów. Po wstawieniu wartości puste miejsca pola CHAR są uzupełniane z prawej strony spacjami                                                    |
| VARCHAR     | Pole znakowe o zmiennej długości z zakresu od 1 do 65 535 bajtów (w wersji poniżej 5.0.3. od 1 do 255 bajtów). Zajmowany jest jedynie taki obszar pamięci, jakiego wymaga wartość wstawiona w to pole |
| TINYBLOB    | Kolumna binarna o rozmiarze nie przekraczającym 255 bajtów                                                                                                                                          |
| TINYTEXT    | Kolumna tekstowa o rozmiarze nie przekraczającym 255 bajtów                                                                                                                                         |
| BLOB        | Kolumna binarna o rozmiarze nie przekraczającym 65 535 bajtów                                                                                                                                       |
| TEXT        | Kolumna tekstowa o rozmiarze nie przekraczającym 65 535 bajtów                                                                                                                                      |
| MEDIUMBLOB  | Kolumna binarna o rozmiarze nie przekraczającym 16 777 215 bajtów                                                                                                                                  |
| MEDIUMTEXT  | Kolumna tekstowa o rozmiarze nie przekraczającym 16 777 215 bajtów                                                                                                                                 |
| LONGBLOB    | Kolumna binarna o rozmiarze nie przekraczającym 4 294 967 295 bajtów                                                                                                                               |
| LONGTEXT    | Kolumna tekstowa o rozmiarze nie przekraczającym 4 294 967 295 bajtów                                                                                                                              |
| ENUM        | Kolumna łańcuchowa, która może zawierać jedną z wartości wymienionych na liście wartości w definicji tej kolumny                                                                                  |
| SET         | Kolumna łańcuchowa, która może zawierać dowolną liczbę wartości spośród wartości występujących na liście w definicji tej kolumny                                                                    |
