/* INSERT DATA to TABLE user */
INSERT INTO user (name, email, password) 
VALUES ('fahmi', 'fahmi@gmail.com', '123');
INSERT INTO user (name, email, password) 
VALUES ('fadell', 'fadell@gmail.com', '111');
INSERT INTO user (name, email, password) 
VALUES ('denish', 'denish@gmail.com', '221');
INSERT INTO user (name, email, password) 
VALUES ('sarah', 'sarah@gmail.com', '443');
INSERT INTO user (name, email, password) 
VALUES ('david', 'david@gmail.com', '963');
INSERT INTO user (name, email, password) 
VALUES ('emil', 'emil@gmail.com', '342');
INSERT INTO user (name, email, password) 
VALUES ('daniel', 'daniel@gmail.com', '808');
INSERT INTO user (name, email, password) 
VALUES ('oliv', 'oliv@gmail.com', '564');
INSERT INTO user (name, email, password) 
VALUES ('najid', 'najid@gmail.com', '243');
INSERT INTO user (name, email, password) 
VALUES ('syukur', 'syukur@gmail.com', '900');
SELECT * FROM user;

/* INSERT DATA to TABLE singer */
INSERT INTO singer (name) 
VALUES ('xxxtentantion');
INSERT INTO singer (name) 
VALUES ('nidji');
INSERT INTO singer (name) 
VALUES ('noah');
INSERT INTO singer (name) 
VALUES ('Virgoun');
INSERT INTO singer (name) 
VALUES ('raim laode');
INSERT INTO singer (name) 
VALUES ('Sheila on 7');
INSERT INTO singer (name) 
VALUES ('rosa');
INSERT INTO singer (name) 
VALUES ('Hindia');
INSERT INTO singer (name) 
VALUES ('Ardhito Pramono');
INSERT INTO singer (name) 
VALUES ('tony q rastafara');
SELECT * FROM singer;

/* INSERT DATA to TABLE album */
INSERT INTO album (name) 
VALUES ('AmerikaREAPER');
INSERT INTO album (name) 
VALUES ('Supernova');
INSERT INTO album (name) 
VALUES ('Bintang di surga');
INSERT INTO album (name) 
VALUES ('Surat Cinta Untuk Starla');
INSERT INTO album (name) 
VALUES ('Komang');
INSERT INTO album (name) 
VALUES ('Berlayar');
INSERT INTO album (name) 
VALUES ('Hati yang terpilih');
INSERT INTO album (name) 
VALUES ('Menari Dengan Bayangan');
INSERT INTO album (name) 
VALUES ('Wijayakusuma');
INSERT INTO album (name) 
VALUES ('Salam damai');
SELECT * FROM album;

/* INSERT DATA to TABLE track */
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Changes', 1, 1);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Sad', 1, 1);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hope', 1, 1);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Laskar pelangi', 2, 2);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Disko lazy time', 2, 2);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Arti sahabat', 2, 2);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Kisah Sempurna', 3, 3);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Sial', 3, 3);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Bohongi Hati', 3, 3);

INSERT INTO track (title, singer_id, album_id) 
VALUES ('Suasana rumah', 4, 4);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Komang', 4, 4);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Sang Badut', 4, 4);

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
VALUES ('Ayat ayat cinta', 7, 7);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Hati yang kau sakiti', 7, 7);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Lupakan cinta', 7, 7);

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
VALUES ('Kangen', 10, 10);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('This is my way', 10, 10);
INSERT INTO track (title, singer_id, album_id) 
VALUES ('Woman', 10, 10);

SELECT * FROM track;


/* INSERT DATA to TABLE playlist */
INSERT INTO playlist (name, user_id) 
VALUES ('the remedy for a broken heart', 1);
INSERT INTO playlist (name, user_id) 
VALUES ('Sumpah dan cinta matiku', 2);
INSERT INTO playlist (name, user_id) 
VALUES ('Menghapus jejakmu', 3);
INSERT INTO playlist (name, user_id) 
VALUES ('Semangat Kerja!', 4);
INSERT INTO playlist (name, user_id) 
VALUES ('Menuju Magrib', 5);
INSERT INTO playlist (name, user_id) 
VALUES ('Komang', 6);
INSERT INTO playlist (name, user_id) 
VALUES ('Atas nama cinta', 7);
INSERT INTO playlist (name, user_id) 
VALUES ('Lagi Kalau Badmood', 8);
INSERT INTO playlist (name, user_id) 
VALUES ('Teman Hujan', 9);
INSERT INTO playlist (name, user_id) 
VALUES ('Kangen', 10);

SELECT * FROM playlist;