/* Menghapus Isi Tabel */
DELETE FROM playlist_track;

/* Mengulang kembali id dari 1 */
AlTER TABLE playlist_track AUTO_INCREMENT = 1;

/* INSERT DATA to TABLE USER */
INSERT INTO `user` (name, email, password)
Values ('randi', 'randi@gmail.com', '123randi');
INSERT INTO `user` (name, email, password)
Values ('rian', 'rian@gmail.com', '123rian');
INSERT INTO `user` (name, email, password)
Values ('asep', 'asep@gmail.com', '123asep');
INSERT INTO `user` (name, email, password)
Values ('udin', 'udin@gmail.com', '123udin');
INSERT INTO `user` (name, email, password)
Values ('yusup', 'yusup@gmail.com', '123yusup');
SELECT * FROM user;

/* INSERT DATA to TABLE SINGER */
INSERT INTO `singer` (name) Values
('Ari Laso'),
('Iwan Fals'),
('Chrisye'),
('Dewa 19'),
('Ebiet G');
SELECT * FROM singer;

/* INSERT DATA to TABLE ALBUM */
INSERT INTO `album` (album_id, name) Values
(1, 'Yang Terbaik'),
(2, 'Satu'),
(3, 'Pergilah Kasih'),
(4, 'Terbaik Terbaik'),
(5, 'Perjalanan');
SELECT * FROM album;

/* INSERT DATA to TABLE TRACK */
INSERT INTO `track` (title, singer, album) Values
('Cintailah Aku Sepenuh Hati', 1, 1),
('Hampa', 1, 1),
('Penjaga Hati', 1, 1),
('Pesawat Tempurku', 2, 2),
('Wakil Rakyat', 2, 2),
('Sarjana Muda', 2, 2),
('Pergilah Kasih', 3, 3),
('Problema', 3, 3),
('Cinta Kita', 3, 3),
('Cukup Siti Nurbaya', 4, 4),
('IPS', 4, 4),
('Satu Hati', 4, 4),
('Berita Kepada Kawan', 5, 5),
('Untuk Kita Renungkan', 5, 5),
('Menjaring Matahari', 5, 5);
SELECT * FROM track;

/* INSERT DATA to TABLE PLAYLIST */
INSERT INTO `playlist` (playlist_id, name, user_id) Values
(1, 'Lagu Senja', 1),
(2, 'Lagu Galau', 2),
(3, 'Lagu Religi', 3),
(4, 'Menunggu Nasi Masak', 4),
(5, 'Lagu Slow Reggae', 5);

SELECT * FROM playlist;

/* INSERT DATA to TABLE TRACK_PLAYLIST */
INSERT INTO `playlist_track` (playlist_id, track_id) Values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15);

SELECT * FROM playlist_track;