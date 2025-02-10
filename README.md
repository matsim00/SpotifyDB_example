# SpotifyDB_example

## Prerequisiti

- **1 server Linux**
- **1 server MySQL** installato sul server Linux
- **1 utente MySQL** con i seguenti permessi:
  - `SELECT`, `INSERT`, `UPDATE`, `DELETE`, `CREATE`, `DROP`, `RELOAD`, `REFERENCES`, `INDEX`, `ALTER`, `SHOW DATABASES`, `CREATE TEMPORARY TABLES`, `LOCK TABLES`, `EXECUTE`, `CREATE VIEW`

## Installazione del DB

1. Scarica il file che contiene l'intero database, **`SpotifyDB.sql`**, sul server.
2. Accedi al server MySQL e crea il database **SpotifyDB**: 
   ```sql
   mysql -u utente_mysql -p
   CREATE DATABASE SpotifyDB;

4. Esci dal prompt di MySQL e importa il database con il comando:
- mysql -u utente_mysql -p SpotifyDB < SpotifyDB.sql

5. Rientra nel server MySQL, seleziona il database con:
  ````sql
  USE SpotifyDB;

6. Per verificare che le tabelle siano state importate correttamente, esegui:
  `````sql
  SHOW TABLES; 

## Struttura del Database e Tabelle

Tabella artisti:
- id_artista (primary key)
- nome_artista

Tabella album:
- id_album (primary key)
- nome_album
- data_uscita
- id_artista (foreign key)

Tabella canzoni:
- id_canzone (primary key)
- titolo_canzone
- id_album (foreign key)
- id_playlist (foreign key)

Tabella playlist:
- id_playlist (primary key)
- titolo_playlist

![Untitled](https://github.com/user-attachments/assets/c7028059-417a-4658-930b-de964112e96f)



## Query di esempio
Ecco un esempio di query per recuperare tutte le canzoni dell'artista "Tedua":

SELECT artisti.nome_artista, canzoni.titolo_canzone, album.nome_album, album.data_uscita
FROM artisti
JOIN album ON album.id_artista = artisti.id_artista
JOIN canzoni ON canzoni.id_album = album.id_album
WHERE artisti.nome_artista = "tedua"
ORDER BY album.data_uscita DESC;
JOIN canzoni on canzoni.id_album = album.id_album  
WHERE artisti.nome_artista = "tedua" 
ORDER BY album.data_uscita DESC;
