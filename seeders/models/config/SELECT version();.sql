SELECT version();
SHOW TABLES;

CREATE TABLE `user` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `email` VARCHAR(255) NOT NULL DEFAULT '',
    `password` VARCHAR(255) NOT NULL DEFAULT ''
);

INSERT INTO `user` (`name`, `email`, `password`)
VALUES 
        ('Fahmi', 'fahmi@gmail.com', '142'),
        ('Fadell', 'Fadell@gmail.com', '212'),
        ('Denish', 'Denish@gmail.com', '121'),
        ('Nopal', 'Nopal@gmail.com', '414'),
        ('Agus', 'Agus@gmail.com', '383'),
        ('Ria', 'Ria@gmail.com', '272'),
        ('Najid', 'Najid@gmail.com', '787'),
        ('Syukur', 'Syukur@gmail.com', '898'),
        ('Ali', 'Ali@gmail.com', '161'),
        ('Ihsan', 'Ihsan@gmail.com', '464');

SELECT * FROM `user`;

CREATE TABLE `singer` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL DEFAULT ''
);
INSERT INTO `singer` (`name`)
VALUES 
        ('XXXTENTACION'),
        ('RAIM LAODE'),
        ('BRUNO MARS'),
        ('ARCTIC MONKEYS'),
        ('NELLA KHARISMA'),
        ('MILEY CYRUS'),
        ('GLASS ANIMALS'),
        ('YENI INKA'),
        ('OPICK'),
        ('HAPPY ASMARA');

SELECT * FROM `singer`;

CREATE TABLE `album` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL DEFAULT ''
);

INSERT INTO `album` (`album_id`, `name`)
VALUES 
        (1, 'CHANGE'),
        (2, 'KOMANG'),
        (3, '24K Magic'),
        (4, 'AM'),
        (5, 'NELLA HIPHOP KOPLO'),
        (6, 'ENDLESS SUMMER'),
        (7, 'HATE WAVES'),
        (8, 'KOPLO MODERN'),
        (9, 'RELIGI'),
        (10, 'BIKIN HAPPY');

SELECT * FROM `album`;

CREATE TABLE `track` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `singer_id` INT NOT NULL DEFAULT '',
    `album_id` INT NOT NULL DEFAULT '',
    CONSTRAINT `fk_singer` FOREIGN KEY (`singer_id`) REFERENCES `sql12619455`.`singer`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `fk_album` FOREIGN KEY (`album_id`) REFERENCES `sql12619455`.`album`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);
SHOW COLUMNS FROM `track`;

INSERT INTO `track` (`title`, `singer`, `album`)
VALUES  
        ('JOCELYN FLORES', 3, 5),
        ('KOMANG', 2, 4),
        ('TREAT YOU BETTER', 5, 1),
        ('I WANNA BE YOURS', 6, 9),
        ('RUNGKAD', 8, 8),
        ('ANGELS LIKE YOU', 7, 10),
        ('HEAT WAVES', 9, 7),
        ('IKAN DALAM KOLAM', 4, 3),
        ('TOMBO ATI', 10, 6),
        ('NGOPI MASZEH', 1, 2);

SELECT * FROM `track`;

CREATE TABLE `playlist` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `user_id` INT NOT NULL DEFAULT '',
    CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO `playlist` (`playlist_id`, `name`, `user_id`)
VALUES
        (1, 'FEELING', 2),
        (2, 'ROMANTIC', 9),
        (3, 'ENJOY MUSIC', 7),
        (4, 'POWERFUL', 2),
        (5, 'JAWA PRIDE', 4),
        (6, 'SAD SONG', 10),
        (7, 'HAPPY', 7),
        (8, 'KOPLOISME', 2),
        (9, 'PINTU TOBAT', 5),
        (10, 'CHILL', 8);

SELECT * FROM `playlist`;

CREATE TABLE `playlist_track` (
    `playlist_id` INT NOT NULL DEFAULT '',
    `track_id` INT NOT NULL DEFAULT '',
    CONSTRAINT `fk_playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `fk_track` FOREIGN KEY (`track_id`) REFERENCES `track`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO `playlist_track` (`playlist_id`, `track_id`)
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

SELECT * FROM `playlist_track`;
