DELETE * FROM track;
DELETE FROM track;

SELECT * FROM track;
ALTER TABLE track AUTO_INCREMENT = 1;

INSERT INTO `track` (`title`, `singer`, `album`) VALUES
    ('Kelana', 1, 1),
    ('Jatuh Suka', 1, 1),
    ('Interaksi', 1, 1),
    ('Hormat Kepada Angin', 2, 2),
    ('Dan, Selesai', 2, 2),
    ('Seperti Takdir Kita Yang Tulis', 2, 2),
    ('Well be okay, for today', 3, 3),
    ('Goodbye', 3, 3),
    ('Overthinking', 3, 3),
    ('Sikap Duniawi', 4, 4),
    ('Pendekar Cahaya', 4, 4),
    ('Lexicon', 4, 4),
    ('Percayalah', 5, 5),
    ('Jatuh Hati', 5, 5),
    ('Usai Disini', 5, 5),
    ('Sial', 6, 6),
    ('Kisah Sempurna', 6, 6),
    ('Sisa Rasa', 6, 6),
    ('Peri Cintaku', 7, 7),
    ('Terlukis Indah', 7, 7),
    ('Tak Sanggup Melupa', 7, 7),
    ('Sulung', 8, 8),
    ('Pilu Membiru', 8, 8),
    ('Rehat', 8, 8),
    ('Love Jokes', 9, 9),
    ('Storm', 9, 9),
    ('Love Spells', 9, 9),
    ('Tenang', 10, 10),
    ('Dunia Tipu-Tipu', 10, 10),
    ('Tutur Batin', 10, 10);

SELECT track.track_id, track.title, album.name AS album_name, singer.name AS singer_name FROM track
INNER JOIN album ON track.album = album.album_id
INNER JOIN singer ON track.singer = singer.singer_id;

DELETE FROM playlist;

INSERT INTO `playlist` (`playlist_id`, `name`, `user_id`) VALUES
    (1, 'feel good', 1),
    (2, 'happy', 2),
    (3, 'love song', 3),
    (4, 'populer', 4),
    (5, 'calm song', 5),
    (6, 'life song', 6),
    (7, 'sambil belajar', 7),
    (8, 'santai', 8),
    (9, 'overthinking', 9),
    (10, 'sad song', 10);

SELECT * FROM playlist;

DELETE FROM playlist_track;

INSERT INTO `playlist_track` (`playlist_id`, `track_id`) VALUES
    (1, 4),
    (1, 12),
    (1, 2),
    (2, 20),
    (2, 14),
    (2, 3),
    (3, 27),
    (3, 17),
    (3, 13),
    (4, 11),
    (4, 29),
    (4, 19),
    (5, 24),
    (5, 28),
    (5, 7),
    (6, 1),
    (6, 30),
    (6, 23),
    (7, 15),
    (7, 5),
    (7, 25),
    (8, 8),
    (8, 18),
    (8, 6),
    (9, 4),
    (9, 10),
    (9, 9),
    (9, 22),
    (10, 16),
    (10, 21),
    (10, 26);

SELECT * FROM playlist_track;
SELECT SELECT playlist.playlist_id, playlist.name AS playlist_name, track.track_id, track.name AS track_name
FROM playlist
JOIN playlist_track ON playlist.playlist_id = playlist_track.playlist_id
JOIN track ON playlist_track.track_id = track.track_id;
playlist.name AS playlist_name, track.track_id, track.title AS track_name
FROM playlist
JOIN playlist_track ON playlist.playlist_id = playlist_track.playlist_id
JOIN track ON playlist_track.track_id = track.track_id;









