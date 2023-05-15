SELECT VERSION();

CREATE TABLE `user`(
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
)

desc user;

CREATE TABLE `singer`(
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`singer_id`)
)

desc singer;

CREATE TABLE `album`(
    `album_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`) USING BTREE
)

desc album;

CREATE TABLE `track`(
    `track_id` INT(10) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `singer` INT(10) NOT NULL,
    `album` INT(10) NOT NULL,
    PRIMARY KEY (`track_id`),
    CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `sql12618258`.`album` (`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `singer` FOREIGN KEY (`singer`) REFERENCES `sql12618258`.`singer` (`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc track;

CREATE TABLE `playlist`(
    `playlist_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc playlist;

CREATE TABLE `playlist_track`(
    `playlist_id` INT NOT NULL,
    `track_id` INT NOT NULL,
    CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc playlist_track;

INSERT INTO user (user_id, name, email, password) 
VALUES (1, 'Hendardinata', 'hendardace@gmail.com','whynotyou'),
(2, 'Dimas', 'dimas@gmail.com','whynotyou1'),
(3, 'Dinata', 'Dinata@gmail.com','whynotyou2'),
(4, 'Handika', 'handika@gmail.com','whynotyou3'),
(5, 'Putra', 'putra@gmail.com','whynotyou4'),
(6, 'Ramdahani', 'ramdhani@gmail.com','whynotyou5'),
(7, 'Ersya', 'ersya@gmail.com','whynotyou6'),
(8, 'Hifzil', 'hifzil@gmail.com','whynotyou7'),
(9, 'Beko', 'beko@gmail.com','whynotyou8'),
(10, 'Refal', 'refal@gmail.com','whynotyou9');

SELECT * FROM user

INSERT INTO singer (singer_id, name)
VALUES (1, 'Stand Here Alone'),
(2, 'Neck Deep'),
(3, 'Remember of today'),
(4, 'Killing Me Inside'),
(5, 'For Revenge'),
(6, 'Vierra'),
(7, 'Blink-182'),
(8, 'Sum 41'),
(9, 'Green Day'),
(10, 'Machine Gun Kelly');

SELECT * FROM singer


INSERT INTO album (album_id, name)
VALUES (1, 'Melodic'),
(2, 'All Distortions Are Intentional'),
(3, 'Life not out to get You'),
(4, 'A new Beginning'),
(5, 'Get Closer'),
(6, 'the peace and the panic'),
(7, 'Heart Beat'),
(8, 'Order in Decline'),
(9, 'Revolution Radio'),
(10, 'Sounds like You');

SELECT * FROM album

INSERT INTO track (track_id, title, singer, album)
VALUES (1, 'Wanita Masih Banyak', 1, 1),
(2, 'Dustai', 1, 1),
(3, 'Move On', 1, 1),
(4, 'After Midnight', 7, 7),
(5, 'I relly wish i hated you', 7, 7),
(6, 'Motion Sickness', 2, 6),
(7, 'In Bloom', 2, 6),
(8, 'December', 2, 3),
(9, 'Gold Steps', 2, 3),
(10, 'Fall', 2, 2);

SELECT track.track_id, track.title, singer.name AS singer, album.name AS album
FROM track 
INNER JOIN album ON track.album = album.album_id 
INNER JOIN singer ON track.singer = singer.singer_id;

INSERT INTO playlist (playlist_id, name, user_id)
VALUES (1, 'Pop Punk Party', 2),
(2, 'Pop Punk Classics', 1),
(3, 'Feel-Good Pop Punk Jams', 7),
(4, 'Pop Punk Party', 8),
(5, 'Pop Punk Throwbacks', 9),
(6, 'Pop Punk Road Trip', 10),
(7, 'Pop Punk Party', 1),
(8, 'Punk Rockin and Rollin', 3),
(9, 'Punk Rock Summer Soundtrack', 2),
(10, 'Pop Punk Party', 5);

SELECT playlist.playlist_id, playlist.name AS playlist_name, user.name AS user_name
FROM playlist INNER JOIN user ON playlist.user_id = user.user_id 

INSERT INTO playlist_track (playlist_id, track_id) 
VALUES (1, 2),
(1, 3),
(1, 5),
(1, 7),
(2, 2),
(3, 9),
(6, 10),
(7, 8),
(9, 7),
(10, 1);

SELECT playlist.name AS playlist_name, track.title AS track_title
FROM playlist_track INNER JOIN playlist ON  playlist_track.playlist_id = playlist.playlist_id 
INNER JOIN track ON playlist_track.track_id = track.track_id

SELECT playlist.name AS playlist_name, 
track.singer AS singer, track.title AS title, 
track.album FROM playlist_track 
INNER JOIN playlist ON  
playlist_track.playlist_id = playlist.playlist_id 
INNER JOIN track ON 
playlist_track.track_id = track.track_id 





