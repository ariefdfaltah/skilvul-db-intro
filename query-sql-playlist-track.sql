SELECT version();

-- Tabel Users
CREATE TABLE `user` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR (50) NOT NULL DEFAULT'',
    `email` VARCHAR (50) NOT NULL DEFAULT'',
    `password` VARCHAR (50) NOT NULL DEFAULT'',
    PRIMARY KEY (`user_id`)
)
DESC user;
DROP TABLE user;
INSERT INTO user ( name, email, password)
VALUES ("arisandi", "arisandi@gmail.com", "123");
SELECT * FROM user; 



-- Table Singer
CREATE TABLE `singer` (
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR (50) NOT NULL DEFAULT'',
    PRIMARY KEY (`singer_id`)
)
DESC singer;
DROP TABLE singer;
INSERT INTO singer ( name) VALUES ("Iwan Fals");
INSERT INTO singer ( name) VALUES ("Rhoma Irama");
INSERT INTO singer ( name) VALUES ("Elvi Sukaesih");
INSERT INTO singer ( name) VALUES ("Afgansyah Reza");
INSERT INTO singer ( name) VALUES ("Kaka Slank");
INSERT INTO singer ( name) VALUES ("Ariel Noah");
INSERT INTO singer ( name) VALUES ("Armand Maulana");
INSERT INTO singer ( name) VALUES ("Krisdayanti");
INSERT INTO singer ( name) VALUES ("Nicky Astria");
INSERT INTO singer ( name) VALUES ("Trie Utami");
SELECT * FROM singer; 




-- Table Album
CREATE TABLE `album` (
    `album_id` INT(10) NOT NULL,
    `name` VARCHAR (50) NOT NULL DEFAULT'' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`) USING BTREE
)
DESC album;
DROP TABLE album;
INSERT INTO album (album_id, name) VALUES (1, "Reggae");
INSERT INTO album (album_id, name) VALUES (2, "Gibah");
INSERT INTO album (album_id, name) VALUES (3, "Tembang Kenangan");
INSERT INTO album (album_id, name) VALUES (4, "Wallflower");
INSERT INTO album (album_id, name) VALUES (5, "I Slank U");
INSERT INTO album (album_id, name) VALUES (6, "Noah");
INSERT INTO album (album_id, name) VALUES (7, "Sebelah Mata");
INSERT INTO album (album_id, name) VALUES (8, "Surga yang dirindukan");
INSERT INTO album (album_id, name) VALUES (9, "Slow Rock");
INSERT INTO album (album_id, name) VALUES (10, "Kekasih Bayangan");
SELECT * FROM album; 



-- Table Track
CREATE TABLE `track` (
    `track_id` INT(10) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR (50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `singer` INT(10) NOT NULL,
    `album` INT(10) NOT NULL,    
    PRIMARY KEY (`track_id`),
    CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `sql12617748`.`album` (`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `singer` FOREIGN KEY (`singer`) REFERENCES `sql12617748`.`singer` (`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
DESC track;
DROP TABLE track;
INSERT INTO track (title, singer, album)
VALUES ("Sarana Cinta", 1, 1);
INSERT INTO track (title, singer, album)
VALUES ("Buang Buang Waktu", 2, 2);
INSERT INTO track (title, singer, album)
VALUES ("Ranting Perindu", 3, 3);
INSERT INTO track (title, singer, album)
VALUES ("Sahabat Sejati", 4, 4);
INSERT INTO track (title, singer, album)
VALUES ("Rindu", 5, 5);
INSERT INTO track (title, singer, album)
VALUES ("Selayang Cinta", 6, 6);
INSERT INTO track (title, singer, album)
VALUES ("Purnama", 7, 7);
INSERT INTO track (title, singer, album)
VALUES ("Cinta Digital", 8, 8);
INSERT INTO track (title, singer, album)
VALUES ("Sampai Dini Hari", 9, 9);
INSERT INTO track (title, singer, album)
VALUES ("Sumpah Benang Mas", 10, 10);
-- TRACK JOIN
-- JOIN
SELECT track.track_id, track.title, singer.name As singerName , album.name As albumName
FROM track
JOIN singer ON track.singer=singer.singer_id
JOIN album ON singer.singer_id=album.album_id;




-- INNER JOIN
SELECT track.track_id, track.title, singer.name As singerName , album.name As albumName
FROM track
INNER JOIN singer ON track.singer=singer.singer_id
INNER JOIN album ON singer.singer_id=album.album_id;
-- LEFT JOIN
SELECT track.track_id, track.title, singer.name As singerName , album.name As albumName
FROM track
LEFT JOIN singer ON track.singer = singer.singer_id
LEFT JOIN album ON track.album = album.album_id;
-- RIGH JOIN
SELECT track.track_id, track.title, singer.name As singerName , album.name As albumName
FROM track
RIGHT JOIN singer ON track.singer = singer.singer_id
RIGHT JOIN album ON track.album = album.album_id
ORDER BY track.track_id;
-- FULL JOIN
SELECT track.track_id, track.title AS trackTitle, singer.name As singerName , album.name As albumName
FROM track
LEFT JOIN singer ON track.singer = singer.singer_id
LEFT JOIN album ON track.album = album.album_id
UNION
SELECT track.track_id, track.title, singer.name As singName , album.name As albumName
FROM track
RIGHT JOIN singer ON track.singer = singer.singer_id
RIGHT JOIN album ON track.album = album.album_id
WHERE track_id IS NULL;


-- Playlist
CREATE TABLE `playlist` (
    `playlist_id` INT(10) NOT NULL,
    `name` VARCHAR (50) NOT NULL,
    `user_id` INT NOT NULL,
    `album` INT(10) NOT NULL,    
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
DESC playlist;
DROP TABLE playlist;
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (1, "Lagu Buat Santai",  1, 1);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (2, "Lagu Favorite",  2, 2);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (3, "Lagu Lawas",  3, 3);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (4, "Kumpulan Lagu Afgan",  4, 4);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (5, "Kumpulan Lagu Slank",  5, 5);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (6, "Lagu Band",  6, 6);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (7, "Lagu Band Santai",  7, 7);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (8, "Lagu Untuk Begadang",  8, 8);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (9, "Lagu Saat Beraktifitas",  9, 9);
INSERT INTO playlist (playlist_id, name, user_id, album)
VALUES (10, "Lagu Sedih",  10, 10);
SELECT playlist.playlist_id, playlist.name AS NamaPlaylist, user.name As NamaUser, album.name AS NamaAlbum
FROM playlist
JOIN user ON playlist.user_id=user.user_id
JOIN album ON  =album.album_id;



-- Playlist Track
CREATE TABLE `playlist_track` (
    `playlist_id` INT NOT NULL,
    `track_id` INT NOT NULL,
    CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
DESC playlist_track;
DROP TABLE playlist_track;
INSERT INTO playlist_track (playlist_id, track_id) VALUES (1, 21);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (2, 22);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (3, 23);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (4, 24);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (5, 25);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (6, 26);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (7, 27);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (8, 28);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (9, 29);
INSERT INTO playlist_track (playlist_id, track_id) VALUES (10, 30);
SELECT playlist.name AS NamaPlaylist, track.title AS JudulTrack
FROM playlist_track
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id
JOIN track ON track.track_id = playlist_track.track_id
ORDER BY playlist.playlist_id;