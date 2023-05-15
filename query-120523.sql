-- Create Table yang dibutuhkan
USE sql12617785;

CREATE TABLE `user` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
);

DESC `user`;

CREATE TABLE `singer` (
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`singer_id`)
);

DESC `singer`;

CREATE TABLE `album` (
    `album_id` INT(10) NOT NULL,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`) USING BTREE
);

DESC `album`;

CREATE TABLE `track` (
    `track_id` INT(10) NOT NULL,
    `name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `singer` INT(10) NOT NULL,
    `album` INT(10) NOT NULL,
    PRIMARY KEY (`track_id`),
    CONSTRAINT `fk_album` FOREIGN KEY (`album`) REFERENCES `sql12617785`.`album` (`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `fk_singer` FOREIGN KEY (`singer`) REFERENCES `sql12617785`.`singer` (`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DESC `track`;

CREATE TABLE `playlist` (
    `playlist_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DESC `playlist`;

CREATE TABLE `playlist_track` (
    `playlist_id` INT NOT NULL,
    `track_id` INT NOT NULL,
    CONSTRAINT `fk_playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `fk_track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DESC `playlist_track`;

-- Insert 10 Data ke masing masing table
INSERT INTO `user` (`name`, `email`, `password`) VALUES
('Ariana Dua', 'Dariana2@gmail.com', 'povrsij4'),
('Tent Hurry', '10HurryK@gmail.com', '9hytd7yv'),
('High Nin', 'Nin9Hi@gmail.com',  '87ygzotr'),
('Eigh Durry', 'Durr8ght@gmail.com', 'uhb78Jis'),
('Michael One', 'OneeMi1@gmail.com', '0jnbemwp'),
('Seven Light', '7ightnn@gmail.com', '4karonme'),
('Tri Uono', 'Uou3ori@gmail.com', 'u8it7c2h'),
('Fiv Core', 'Cor5ive@gmail.com', '7yjnrmfo'),
('Tera Sik', 'Si6arte@gmail.com', 'orx6dejk'),
('Foou Young', 'young4good@gmail.com', 'o0ddru87');

SELECT * FROM `user`;




INSERT INTO `singer` (`name`) VALUES
('Justin Bieber'),
('Dua Lipa'),
('Arianna Grande'),
('Ed Sheeran'),
('Blackpink'),
('Anne Marie'),
('Emminem'),
('Rich Brian'),
('Fiersa Besari'),
('Tulus');

SELECT * FROM `singer`;




INSERT INTO `album` (`album_id`, `name`) VALUES
(1, 'Purpose'),
(2, 'New Rules'),
(3, 'Thank U, Next'),
(4, 'Divide'),
(5, 'The Album'),
(6, 'Speak Your Mind'),
(7, 'Kamikaze'),
(8, 'Amen'),
(9, 'Konspirasi Alam Semesta'),
(10, 'Manusia');

SELECT * FROM `album`;





INSERT INTO `track` (`track_id`, `name`, `singer`, `album`) VALUES
(1, 'Best JB', 1, 1),
(2, 'Dua Lipa Favourite', 2, 2),
(3, 'Ariana Best Album', 3, 3),
(4, 'Remember One', 4, 4),
(5, 'Fun Blackpink', 5, 5),
(6, 'Sad One', 6, 6),
(7, 'Hype Eminem', 7, 7),
(8, 'Hype Rich Brian', 8, 8),
(9, 'Sad Two', 9, 9),
(10, 'Sad Three', 10, 10);

SELECT * FROM `track`;




INSERT INTO `playlist` (`playlist_id`, `name`, `user_id`) VALUES
(1, 'Monday Fun Playlist', 1),
(2, 'Sad Wednesday', 2),
(3, 'Light Thursday', 3),
(4, 'Enjoy Friday', 4),
(5, 'Weekdays Work', 5),
(6, 'Saturday Hype', 6),
(7, 'Tuesday Fun', 7),
(8, 'Sad Week', 8),
(9, 'Sunday Sad', 9),
(10, 'Relax Weekend', 10);

SELECT * FROM `playlist`;





INSERT INTO `playlist_track` (`playlist_id`, `track_id`) VALUES
(1, 5),
(2, 9),
(3, 4),
(4, 2),
(5, 4),
(6, 8),
(7, 7),
(8, 3),
(9, 6),
(10, 1);

SELECT * FROM `playlist_track`;

