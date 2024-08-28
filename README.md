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
