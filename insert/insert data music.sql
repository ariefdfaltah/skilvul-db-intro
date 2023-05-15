INSERT INTO user (name, email, password) 
VALUES ('Fathonah Waluyo', 'FWaluyo@gmail.com', 'asda123'),
('Siska Tamba', 'STamba@gmail.com', '111rgh'),
('Yunita Haryanto', 'YHaryanto@gmail.com', '221aerg'),
('Vicky Sihombing', 'VickyS@gmail.com', '443aferg'),
('Zizi Laksmiwati', 'ZZLaksa@gmail.com', '963ethth'),
('Balapati Purwanti', 'BPurwa@gmail.com', 'esrg342'),
('Ratna Adriansyah', 'RatnaA@gmail.com', '808ehyt'),
('Uchita Fujiati', 'UchitaF@gmail.com', '564djk'),
('Garda Wijayanti', 'GardaW@gmail.com', '243ghtg'),
('Umaya Nasyidah', 'UmaNas@gmail.com', '900thjk');
SELECT * FROM user;
DELETE FROM user;
ALTER TABLE user AUTO_INCREMENT=1;

INSERT INTO singer (name) 
VALUES ('Fatin Shidqia'),
('Ebiet G Ade'),
('Agnes Mo'),
('Anggun'),
('Ari Lasso'),
('Afgan'),
('Rossa'),
('Bunga Citra Lestari'),
('Krisdayanti'),
('Iwan Fals');
SELECT * FROM singer;

INSERT INTO album (name) 
VALUES ('For You'),
('Masih Ada Waktu'),
('Agnes Mo'),
('Yang Hilang'),
('Sendiri Dulu'),
('The One'),
('Hati Yang Terpilih'),
('Cinta Pertama'),
('Mencintaimu'),
('Wakil Rakyat');
SELECT * FROM album;

INSERT INTO track (title, singer, album) 
VALUES ('Kaulah Kamuku', 1, 1),
('Dalam Lukaku Masih Setia', 1, 1),
('Semua Tentangmu', 1, 1),
('Masih Ada Waktu', 2, 2),
('Kepada Mu Aku Pasrah', 2, 2),
('Menjaring Matahari', 2, 2),
('Hide and Seek', 3, 3),
('Walk', 3, 3),
('Bad Girl', 3, 3),
('Anak Putih Abu Abu', 4, 4),
('Masa Masa Remaja', 4, 4),
('Gaya Remaja', 4, 4),
('Jika', 5, 5),
('Penjaga Hati', 5, 5),
('Perbedaan', 5, 5),
('Seperti Bintang', 6, 6),
('Bukan Cinta Biasa', 6, 6),
('PadaMu Kubersujud', 6, 6),
('Biarkan Cinta Itu Ada', 7, 7),
('Cemburu', 7, 7),
('Nada Nada Cinta', 7, 7),
('Ingkar', 8, 8),
('Yang Lalu Biarlah Berlalu', 8, 8),
('Simpan Dihati Saja', 8, 8),
('Mencintaimu', 9, 9),
('Rembulan', 9, 9),
('Yang Kumau', 9, 9),
('Mata Indah Bola Pingpong', 10, 10),
('Surat Buat Wakil Rakyat', 10, 10),
('Teman Kawanku Punya Teman', 10, 10);
SELECT * FROM track;


INSERT INTO playlist (name, user_id) 
VALUES ('Driving to Home', 1),
('Sambil Mendaki', 2),
('Santai Sore', 3),
('Semangat Kerja!', 4),
('Menuju Magrib', 5),
('Senja Senja Senja', 6),
('Lagu Buat di Pesawat', 7),
('Lagi Kalau Badmood', 8),
('Teman Hujan', 9),
('Pengiring Tidur', 10);

SELECT * FROM playlist;
DELETE FROM playlist;
ALTER TABLE playlist AUTO_INCREMENT=1;

INSERT INTO playlist_track (playlist_id, track_id) 
VALUES (1, 1),
(1, 4),
(1, 7),
(2, 10),
(2, 13),
(2, 16),
(3, 19),
(3, 22),
(3, 25),
(4, 28),
(4, 2),
(4, 5),
(5, 8),
(5, 11),
(5, 14),
(6, 17),
(6, 20),
(6, 23),
(7, 26),
(7, 29),
(7, 3),
(8, 6),
(8, 9),
(8, 12),
(9, 15),
(9, 18),
(9, 21),
(10, 24),
(10, 27),
(10, 30);

SELECT * FROM playlist_track;
DELETE FROM playlist_track;
ALTER TABLE playlist_track AUTO_INCREMENT=1;

