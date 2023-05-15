SELECT version();
SHOW TABLES;

CREATE TABLE `user` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
)

DESC user;

CREATE TABLE `singer` (
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`singer_id`)
)

DESC singer;


CREATE TABLE `album` (
    `album_id` INT(10) NOT NULL,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`) USING BTREE
)

DESC album;

CREATE TABLE `track` (
    `track_id` INT(10) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `singer` INT(10) NOT NULL,
    `album` INT(10) NOT NULL,
    PRIMARY KEY (`track_id`),
    CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `album` (`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `singer` FOREIGN KEY (`singer`) REFERENCES `singer` (`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

DESC track;


CREATE TABLE `playlist` (
    `playlist_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

DESC playlist;

CREATE TABLE `playlist_track` (
    `playlist_id` INT NOT NULL,
    `track_id` INT NOT NULL,
    CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
)

DESC playlist_track;


INSERT INTO user (`name`, `email`, `password`)
VALUES 
        ('Salsabila', 'salsabila@gmail.com', 'salsabila1'),
        ('Sitti Safiatun', 'sittisafiatun@gmail.com', 'sittisafi12'),
        ('Sawaliyah Nur', 'sawaliyah41@gmail.com', 'sawaliyah21'),
        ('Syaripa Anum', 'syaripaanum@gmail.com', 'syaripa14'),
        ('Lidya Gabriella', 'lidyagabr08@gmail.com', 'lidyaa0803'),
        ('Zefania Agustina', 'zefaniaagus72@gmail.com', 'zefania72'),
        ('Rizky Prayoga', 'rizkypray87@gmail.com', 'rizky87'),
        ('Ayu Wulandari', 'ayuwulan98@gmail.com', 'ayuwulan98'),
        ('Puan Abidah', 'puanabidah16@gmail.com', 'abidah16'),
        ('Belintawati Zelda', 'belintazel46@gmail.com', 'belintazel46');

SELECT * from user;

INSERT INTO singer (`name`)
VALUES 
        ('Raisa'),
        ('Tulus'),
        ('Lyodra'),
        ('Rossa'),
        ('Yura Yunita'),
        ('Ed Sheeran'),
        ('Bruno Mars'),
        ('Taylor Swift'),
        ('Justin Bieber'),
        ('Shawn Mendes');

SELECT * from singer;

INSERT INTO album 
VALUES 
        (1, 'Tutur Batin'),
        (2, 'Handmade'),
        (3, 'Platinum Collection'),
        (4, 'Manusia'),
        (5, 'Lyodra'),
        (6, 'Illuminate'),
        (7, 'Purpose'),
        (8, 'Speak Now'),
        (9, 'Divide'),
        (10, '24K Magic');

SELECT * from album;

INSERT INTO track (`title`, `singer`, `album`)
VALUES  
        ('Pesan Terakhir', 3, 5),
        ('Hati-Hati di Jalan', 2, 4),
        ('Dunia Tipu-Tipu', 5, 1),
        ('Happier', 6, 9),
        ('Back To December', 8, 8),
        ('That’s What I Like', 7, 10),
        ('Love Yourself', 9, 7),
        ('Ayat-Ayat Cinta', 4, 3),
        ('Treat You Better', 10, 6),
        ('Percayalah', 1, 2);

SELECT * from track;

INSERT INTO playlist 
VALUES
        (1, 'Nostalgia', 2),
        (2, 'Feel better songs', 9),
        (3, 'Feeling good', 7),
        (4, 'Fake world!', 2),
        (5, 'Romantic notes', 4),
        (6, 'Myself', 10),
        (7, 'Happy days', 7),
        (8, 'Life is beautiful', 2),
        (9, 'Happy music for a good mood', 5),
        (10, 'Time to enjoy music', 8);

SELECT * from playlist;

INSERT INTO playlist_track
VALUES
        (1, 1),
        (2, 10),
        (4, 2),
        (4, 3),
        (6, 7),
        (5, 8),
        (3, 4),
        (1, 5),
        (3, 6),
        (10, 6);

SELECT * from playlist_track;
