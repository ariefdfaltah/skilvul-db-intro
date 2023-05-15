SELECT version();

CREATE TABLE `users` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
)

DESC users;


INSERT INTO `users` (`name`, `email`, `password`)
VALUES
('raffi', 'raffi@gmail.com', '12345678'),
('lia', 'lia@gmail.com', '12345678'),
('eja', 'eja@gmail.com', '12345678'),
('sarah', 'sarah@gmail.com', '12345678'),
('ratu', 'ratu@gmail.com', '12345678'),
('raja', 'raja@gmail.com', '12345678'),
('wahyu', 'wahyu@gmail.com', '12345678'),
('alpin', 'alpin@gmail.com', '12345678'),
('fauzan', 'fauzan@gmail.com', '12345678'),
('luffy', 'raffi@gmail.com', '12345678');

SELECT * FROM users;

CREATE TABLE `singer` (
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`singer_id`)
)

desc singer;

INSERT INTO `singer` (`name`)
VALUES
('reisha'),
('blackpink'),
('setia'),
('kuburan'),
('dewa12'),
('last'),
('virgoun'),
('mahalini'),
('fauzan'),
('feby putri');

SELECT * FROM singer;

CREATE TABLE `album` (
    `album_id` INT(10) NOT NULL,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`) USING BTREE
)
desc album;

INSERT INTO `album` (`album_id`,`name`)
VALUES
('1','hilang'),
('2','blackpink album'),
('3','satu hati'),
('4','booming'),
('5','Kerajaan  cinta'),
('6','grow up'),
('7','dua warna cinta'),
('8','fabula'),
('9','anugegrah cinta'),
('10','riuh');

SELECT * FROM album;

CREATE TABLE `track` (
    `track_id` INT(10) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `singer` INT(10) NOT NULL, 
    `album` INT(10) NOT NULL, 
    PRIMARY KEY (`track_id`),
    CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `sql12617711`.`album` (`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `singer` FOREIGN KEY (`singer`) REFERENCES `sql12617711`.`singer` (`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc track;

INSERT INTO `track` (`title`,`singer`, `album`)
VALUES
('hilang', 1, 1),
('blackpink album', 2, 2),
('satu hati', 3, 3),
('booming', 4, 4),
('Kerajaan  cinta', 5,5),
('grow up', 6, 6),
('dua warna cinta', 7, 7),
('fabula', 8, 8),
('anugegrah cinta', 9, 9),
('riuh', 10, 10);

SELECT * FROM album;

CREATE TABLE `playlist` (
    `playlist_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc playlist;

INSERT INTO `playlist` (`playlist_id`,`name`,`user_id`)
VALUES
(1, 'playlist 1', 1),
(2, 'playlist 2', 2),
(3, 'playlist 3', 3),
(4, 'playlist 4', 4),
(5, 'playlist 5', 5),
(6, 'playlist 6', 6),
(7, 'playlist 7', 7),
(8, 'playlist 8', 8),
(9, 'playlist 9', 9),
(10, 'playlist 10', 10);

SELECT * FROM playlist;

CREATE TABLE `playlist_track` (
    `playlist_id` INT NOT NULL,
    `track_id` INT NOT NULL,
    CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

desc playlist_track;

INSERT INTO `playlist` (`playlist_id`,`name`,`user_id`)
VALUES
( 'playlist_track 1', 1, 1),
( 'playlist_track  2', 2, 2),
( 'playlist_track  3', 3, 3),
( 'playlist_track  4', 4, 4),
( 'playlist_track  5', 5, 5),
( 'playlist_track  6', 6, 6),
( 'playlist_track  7', 7, 7),
( 'playlist_track  8', 8, 8),
( 'playlist_track  9', 9, 9),
( 'playlist_track  10', 10, 10);