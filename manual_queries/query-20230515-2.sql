/* BELAJAR JOIN TABLE */
SELECT * FROM user;
SELECT * FROM singer;
SELECT * FROM album;
SELECT * FROM track;

SELECT track.id, track.title, track.singer_id, singer.id, singer.name
FROM track
INNER JOIN singer
ON track.singer_id = singer.id

SELECT 
track.id, track.title, track.singer_id, track.album_id,
singer.id, singer.name AS singer_name, 
album.id, album.name AS album_name
FROM track
INNER JOIN singer
ON track.singer_id = singer.id
INNER JOIN album
ON track.album_id = album.id

SELECT * FROM user;
SELECT * FROM playlist;
SELECT * FROM playlist_track;
SELECT * FROM track;
SELECT * FROM album;
