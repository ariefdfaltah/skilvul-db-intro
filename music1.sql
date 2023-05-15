CREATE TABLE `user` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
)

desc user;

INSERT INTO `user` VALUES 
    (1, 'rizki', 'rizki12@example.com', 'rizkiuye12'),
    (2, 'Lotus', 'lotus22@example.com', 'lotusandalan1'),
    (3, 'Mariam', 'mariam@example.com', 'mariamaselole'),
    (4, 'Tono', 'tono@example.com', 'tono123'),
    (5, 'udin', 'udin@example.com', 'udinuye'),
    (6, 'saprudin', 'saprudin@example.com', 'sapudin'),
    (7, 'didin', 'didin@example.com', 'didinuye'),
    (8, 'masdin', 'masdin@example.com', 'masdin124'),
    (9, 'Siti', 'sitin@example.com', 'sitiuyeh'),
    (10,'madin', 'madin@example.com', 'madinnn123');

SELECT *
FROM user;

CREATE TABLE `singer` (
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`singer_id`)
)

desc singer;

INSERT INTO `singer` VALUES 
    (1, 'Arie Lasso'),
    (2, 'Agnes Monica'),
    (3, 'Iwan Fals'),
    (4, 'Tiara Andini'),
    (5, 'Via Vallen'),
    (6, 'Rhoma Irama'),
    (7, 'Rita Sugiarto'),
    (8, 'Judika'),
    (9, 'Niki Zefanya'),
    (10, 'Rich Brian');

SELECT *
FROM singer;

CREATE TABLE `album` (
    `album_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`)
)

desc album;

INSERT INTO `album` VALUES 
    (11, 'Yang Terbaik'),
    (12, 'Godai Aku Lagi'),
    (13, 'Orang Gila'),
    (14, 'Arti Untuk Cinta'),
    (15, 'Sayang'),
    (16, 'Gitar Tua'),
    (17, 'Dua Kursi'),
    (18, 'Hati & Cinta'),
    (19, 'Nicole'),
    (20, 'The Sailor');

SELECT *
FROM album;

CREATE TABLE `track`(
    `track_id` INT(20) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `singer` INT(30) NOT NULL,
    `album` INT(18) NOT NULL,
    PRIMARY KEY(`track_id`),
    CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `sql12617740`.`album` (`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `singer` FOREIGN KEY (`singer`) REFERENCES `sql12617740`.`singer` (`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc track;

INSERT INTO `track` VALUES 
    (21, 'Penjaga Hati', 1,11),
    (22, 'Godai Aku Lagi', 2,12),
    (23, 'Puisi Gelap',3,13),
    (24, 'Padamu Luka',4,14),
    (25, 'Bojo Galak',5,15),
    (26, 'Janji',6,16),
    (27, 'Bara Cinta',7,17),
    (28, 'Apakah Ini Cinta',8,18),
    (29, 'High School In Jakarta',9,19),
    (30, 'Drive Safe',10,20);

SELECT *
FROM track;



CREATE TABLE `playlist`(
    `playlist_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc playlist;

INSERT INTO `playlist` VALUES 
    (31, 'Lotus',2),
    (32, 'rizki',1),
    (33, 'Tono',4),
    (34, 'Mariam',3),
    (35, 'udin',5),
    (36, 'Didin',7),
    (37, 'Saprudin',6),
    (38, 'Madin',10),
    (39, 'Masdin',8),
    (40, 'Siti',9);

SELECT *
FROM playlist;

CREATE TABLE `playlist_track`(
    `playlist_id` INT NOT NULL,
    `track_id` INT NOT NULL,
    CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
     CONSTRAINT `track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc playlist_track

INSERT INTO `playlist_track` VALUES 
    (31,22),
    (32,21),
    (33,24),
    (34,23),
    (35,26),
    (36,25),
    (37,28),
    (38,27),
    (39,30),
    (40,29);

SELECT *
FROM playlist_track;

