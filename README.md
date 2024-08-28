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

1 scarica sul server il file che contiene l'intero DB "SpotifyDB.sql"
2 fare accesso al sever mysql e creare il DB SpotifyDB
3 uscire dal prompt di mysql e importare il DB con il comando: mysql -u utente_mysql -p SpotifyDB < SpotifyDB.sql
4 rifare l'accesso al server mysql, seleziona il db SpotifyDB e fare un "show tables;" per vedere se ha importato correttamente le tabelle
