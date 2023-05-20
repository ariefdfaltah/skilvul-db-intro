/* INSERT DATA to TABLE user */
INSERT INTO user (name, email, password) 
VALUES ('Arief', 'arief@gmail.com', '123');
INSERT INTO user (name, email, password) 
VALUES ('Doni', 'doni@gmail.com', '111');
INSERT INTO user (name, email, password) 
VALUES ('Agung', 'agung@gmail.com', '221');
INSERT INTO user (name, email, password) 
VALUES ('Haris', 'haris@gmail.com', '443');
INSERT INTO user (name, email, password) 
VALUES ('Wina', 'wina@gmail.com', '963');
INSERT INTO user (name, email, password) 
VALUES ('Joko', 'joko@gmail.com', '342');
INSERT INTO user (name, email, password) 
VALUES ('Budi', 'budi@gmail.com', '808');
INSERT INTO user (name, email, password) 
VALUES ('Wahyu', 'wahyu@gmail.com', '564');
INSERT INTO user (name, email, password) 
VALUES ('Susi', 'susi@gmail.com', '243');
INSERT INTO user (name, email, password) 
VALUES ('Anin', 'anin@gmail.com', '900');
SELECT * FROM user;

/* INSERT DATA to TABLE singer */
INSERT INTO singer (name) 
VALUES ('Krisdayanti');
INSERT INTO singer (name) 
VALUES ('Saykoji');
INSERT INTO singer (name) 
VALUES ('Mahalini');
INSERT INTO singer (name) 
VALUES ('Virgoun');
INSERT INTO singer (name) 
VALUES ('Bondan Prakoso');
INSERT INTO singer (name) 
VALUES ('Sheila on 7');
INSERT INTO singer (name) 
VALUES ('Dewa');
INSERT INTO singer (name) 
VALUES ('Hindia');
INSERT INTO singer (name) 
VALUES ('Ardhito Pramono');
INSERT INTO singer (name) 
VALUES ('420');
SELECT * FROM singer;

/* INSERT DATA to TABLE album */
INSERT INTO album (name) 
VALUES ('Cahaya');
INSERT INTO album (name) 
VALUES ('Musik Hati');
INSERT INTO album (name) 
VALUES ('Fabula');
INSERT INTO album (name) 
VALUES ('Surat Cinta Untuk Starla');
INSERT INTO album (name) 
VALUES ('Si Lumba Lumba');
INSERT INTO album (name) 
VALUES ('Berlayar');
INSERT INTO album (name) 
VALUES ('Laskar Cinta');
INSERT INTO album (name) 
VALUES ('Menari Dengan Bayangan');
INSERT INTO album (name) 
VALUES ('Wijayakusuma');
INSERT INTO album (name) 
VALUES ('Lelaku');
SELECT * FROM album;

/* INSERT DATA to TABLE track */
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Pililah Aku', 1, 1);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Mengenangmu', 1, 1);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Keinginanmu', 1, 1);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Kan Kuikuti', 2, 2);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Bayangkan', 2, 2);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('On And On', 2, 2);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Kisah Sempurna', 3, 3);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Sial', 3, 3);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Bohongi Hati', 3, 3);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Seluruh Nafas Ini', 4, 4);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Surat Cinta Untuk Starla', 4, 4);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Dunia Untukmu', 4, 4);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Si Lumba Lumba', 5, 5);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Komedi Putar', 5, 5);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Aku Suka Makan', 5, 5);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hari Bersamanya', 6, 6);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Pasti Kubisa', 6, 6);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hujan Turun', 6, 6);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hadapi Dengan Senyuman', 7, 7);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hidup Ini Indah', 7, 7);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Matahari Bintang Bulan', 7, 7);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Membasuh', 8, 8);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Evakuasi', 8, 8);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Jam Makan Siang', 8, 8);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Wijayakusuma', 9, 9);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Mula', 9, 9);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Asmara', 9, 9);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Aku Tenang', 10, 10);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hitam Putih', 10, 10);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Fana Merah Jambu', 10, 10);

SELECT * FROM track;


/* INSERT DATA to TABLE playlist */
INSERT INTO playlist (name, user_id) 
VALUES ('Driving to Home', 1);
INSERT INTO playlist (name, user_id) 
VALUES ('Sambil Mendaki', 2);
INSERT INTO playlist (name, user_id) 
VALUES ('Santai Sore', 3);
INSERT INTO playlist (name, user_id) 
VALUES ('Semangat Kerja!', 4);
INSERT INTO playlist (name, user_id) 
VALUES ('Menuju Magrib', 5);
INSERT INTO playlist (name, user_id) 
VALUES ('Senja Senja Senja', 6);
INSERT INTO playlist (name, user_id) 
VALUES ('Lagu Buat di Pesawat', 7);
INSERT INTO playlist (name, user_id) 
VALUES ('Lagi Kalau Badmood', 8);
INSERT INTO playlist (name, user_id) 
VALUES ('Teman Hujan', 9);
INSERT INTO playlist (name, user_id) 
VALUES ('Pengiring Tidur', 10);

SELECT * FROM playlist;

