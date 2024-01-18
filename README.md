# RBD
## Relacyjne bazy danych

### Logowanie do "Szuflandia"
`ssh -o ServerAliveInterval=60 sXXXX@szuflandia.pjwstk.edu.pl`

Opcja ServerAliveInterval zapobiega zrywaniu polaczenia przez router w czasie bezczynnosci, wysylajac pakiety przez siec miedzy urzadzeniem a serwerem dolcelowym co 60 sekund. Jest to okreslane jako ruch "podtrzymujacy aktywnosc" (keep alive).

### Pobieranie z "Szuflandia" plików
`scp sXXXX@szuflandia.pjwstk.edu.pl:~/nazwa_pliku.sql C:\lokalizacja_docelowa`

### Baza MariaDB przez CMD
`mysql -u sXXXX -p`
`Nam.Surn`
`show databases;`
`use sXXXX;`

### Export danych
`mysqldump sXXXX -p > DBdump_sXXX.sql`

### Import danych
`mysql -u sXXXX -p < DBdump_sXXXX.sql`

### RBD pojęcia
<http://www.informatyka.orawskie.pl/?pl_sbd,22>
