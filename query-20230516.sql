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

SELECT 
playlist_track.playlist_id,
playlist_track.track_id,
playlist.name AS playlist_name,
playlist.user_id,
user.name AS user_name,
track.title AS track_title,
track.singer_id,
singer.name as singer_name
FROM playlist_track
INNER JOIN playlist
ON playlist.id = playlist_track.playlist_id
INNER JOIN user
ON user.id = playlist.user_id
INNER JOIN track
ON track.id = playlist_track.track_id
INNER JOIN singer
ON singer.id = track.singer_id

SELECT 
SUM(singer.name)
FROM playlist_track
INNER JOIN playlist
ON playlist.id = playlist_track.playlist_id
INNER JOIN user
ON user.id = playlist.user_id
INNER JOIN track
ON track.id = playlist_track.track_id
INNER JOIN singer
ON singer.id = track.singer_id
WHERE singer.name = "Krisdayanti"
