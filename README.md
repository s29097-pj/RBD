# RBD
## Relacyjne bazy danych

### Logowanie do "Szuflandia"
- `ssh -o ServerAliveInterval=60 sXXXX@szuflandia.pjwstk.edu.pl`

Opcja ServerAliveInterval zapobiega zrywaniu połączenia przez router w czasie bezczynności, wysyłajac pakiety przez sieć między urządzeniem a serwerem dolcelowym co 60 sekund. Jest to określane jako ruch "podtrzymujacy aktywność" (keep alive).

### Pobieranie z "Szuflandia" plików
- `scp sXXXX@szuflandia.pjwstk.edu.pl:~/nazwa_pliku.sql C:\lokalizacja_docelowa`

### Baza MariaDB przez CMD
- `mysql -u sXXXX -p`
- `Nam.Surn`
- `show databases;`
- `use sXXXX;`

### Export danych
- `mysqldump sXXXX -p > DBdump_sXXX.sql`

### Import danych
- `mysql -u sXXXX -p < DBdump_sXXXX.sql`

### SQL Online
- <https://onecompiler.com/sqlserver>

### Narzędzie pozwalające na projektowanie diagramów ERD
- <https://draw.io/>

### Strony poświęcone Relacyjnym Bazom Danych
- <https://mhyla.com/courses/RBD/stacjonarne/>
- <http://www.informatyka.orawskie.pl/?pl_sbd,22>
