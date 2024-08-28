# SpotifyDB_example


prerequisiti:

- 1 server linux
- 1 server mysql sul server linux
- 1 utente con tutti i permessi
{
SELECT, INSERT, UPDATE, DELETE, 
CREATE, DROP, RELOAD, REFERENCES, 
INDEX, ALTER, SHOW DATABASES, 
CREATE TEMPORARY TABLES, 
LOCK TABLES, EXECUTE, CREATE VIEW
}


Installazione DB:

- scarica sul server il file che contiene l'intero DB "SpotifyDB.sql"
- fare accesso al sever mysql e creare il DB SpotifyDB
- uscire dal prompt di mysql e importare il DB con il comando: mysql -u utente_mysql -p SpotifyDB < SpotifyDB.sql
- rifare l'accesso al server mysql, seleziona il db con "USE SpotifyDB;" e fare un "show tables;" per vedere se ha importato correttamente le tabelle


select di esempio per prendere tutte le canzoni di tedua:

SELECT artisti.nome_artista, canzoni.titolo_canzone, album.nome_album, album.data_uscita  
FROM artisti  
JOIN album on album.id_artista = artisti.id_artista  
JOIN canzoni on canzoni.id_album = album.id_album  
WHERE artisti.nome_artista = "tedua" 
ORDER BY album.data_uscita DESC;



STRUTTURA DATABASE E TABELLE:

tabella artisti:
id_artista (primary key)
nome_artista

tabella album:
id_album (primary key)
nome_album
data_uscita
id_artista (foreign key)

tabella canzoni:
id_canzone (primary key)
titolo_canzone
id_album (foreign key)
id_playlist (foreign key)

tabella playlist:
id_playlist (primary key)
titolo_playlist
