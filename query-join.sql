SELECT * FROM user;
SELECT * FROM singer;
SELECT * FROM album;
SELECT * FROM track;
SELECT * FROM playlist;
SELECT * FROM playlist_track;

/* Menggabungkan tabel track dan singer */
SELECT track.track_id, track.title, singer.singer_id, singer.name
FROM track
INNER JOIN singer
ON track.singer = singer.singer_id;

/* Menggabungkan tabel track, singer, dan album */
SELECT track.track_id, track.title, track.album, singer.singer_id, singer.name, album.album_id, album.name as album_name
FROM track
INNER JOIN singer
ON track.singer = singer.singer_id
INNER JOIN album
ON track.album = album.album_id

/* Menggabungkan semua tabel yang ada di dalam database dan akan menampilkan user_id, name (nama user), singer_name (nama penyanyi), album_name (nama album), dan title (judul lagu) */
SELECT user.user_id, user.name, singer.name AS singer_name, album.name AS album_name, track.title
FROM playlist
INNER JOIN playlist_track ON playlist.playlist_id = playlist_track.playlist_id
INNER JOIN track ON playlist_track.track_id = track.track_id
INNER JOIN album ON track.album = album.album_id
INNER JOIN singer ON track.singer = singer.singer_id
INNER JOIN user ON playlist.user_id = user.user_id;