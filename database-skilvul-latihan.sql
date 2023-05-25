SELECT version();

CREATE TABLE `user`(
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
)
USE sql12617707;
INSERT INTO `user` (`name`, `email`, `password`)
VALUES
    ('John Doe', 'john.doe@example.com', 'password1'),
    ('Jane Smith', 'jane.smith@example.com', 'password2'),
    ('Mike Johnson', 'mike.johnson@example.com', 'password3'),
    ('Sarah Williams', 'sarah.williams@example.com', 'password4'),
    ('David Brown', 'david.brown@example.com', 'password5'),
    ('Emily Davis', 'emily.davis@example.com', 'password6'),
    ('Daniel Taylor', 'daniel.taylor@example.com', 'password7'),
    ('Olivia Wilson', 'olivia.wilson@example.com', 'password8'),
    ('Robert Anderson', 'robert.anderson@example.com', 'password9'),
    ('Sophia Thompson', 'sophia.thompson@example.com', 'password10');
SELECT*FROM user;

CREATE TABLE `singer`(
    `singer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`singer_id`)
);
USE sql12617707;

INSERT INTO `singer` (`name`)
VALUES
    ('The Weekend'),
    ('One Direction'),
    ('Chris Brown'),
    ('RealestK'),
    ('Selena Gomez'),
    ('Joji'),
    ('New West'),
    ('Jvke'),
    ('dhruv'),
    ('keshi');

SELECT*FROM singer;

CREATE TABLE `album`(
    `album_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`album_id`) USING BTREE
);
USE sql12617707;

INSERT INTO `album` (`name`)
VALUES
    ('Album 1'),
    ('Album 2'),
    ('Album 3'),
    ('Album 4'),
    ('Album 5'),
    ('Album 6'),
    ('Album 7'),
    ('Album 8'),
    ('Album 9'),
    ('Album 10');

SELECT*FROM album;

desc album;

CREATE TABLE `track`(
    `track_id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
    `singer` INT(10) NOT NULL,
    `album` INT(10) NOT NULL,
    PRIMARY KEY (`track_id`),
    CONSTRAINT `album` FOREIGN KEY (`album`) REFERENCES `sql12617707`.`album`(`album_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `singer` FOREIGN KEY (`singer`) REFERENCES `sql12617707`.`singer`(`singer_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
USE sql12617707;
INSERT INTO `track` (`title`, `singer`, `album`)
VALUES
    ('Die For You', 1, 1),
    ('Calm Down', 2, 2),
    ('Under The Influence', 3, 3),
    ('Love Me', 4, 4),
    ('Calm Down', 5, 5),
    ('Sanctuary', 6, 6),
    ('Those Eyes', 7, 7),
    ('Golden Hour', 8, 8),
    ('Double Take', 9, 9),
    ('LIMBO', 10, 10);

SELECT*FROM track;

desc track;

CREATE TABLE `playlist`(
    `playlist_id` INT NOT NULL, 
    `name` VARCHAR(50) NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`playlist_id`),
    CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
)
USE sql12617707;
INSERT INTO `playlist` (`playlist_id`, `name`, `user_id`)
VALUES
    (1, 'Playlist 1', 1),
    (2, 'Playlist 2', 2),
    (3, 'Playlist 3', 3),
    (4, 'Playlist 4', 5),
    (5, 'Playlist 5', 6),
    (6, 'Playlist 6', 9),
    (7, 'Playlist 7', 10),
    (8, 'Playlist 8', 4),
    (9, 'Playlist 9', 7),
    (10, 'Playlist 10', 8);
SELECT*FROM playlist;
desc playlist;

CREATE TABLE `playlist_track`(
    `playlist_id` INT NOT NULL, 
    `track_id` INT NOT NULL,
    CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `track` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON UPDATE CASCADE ON DELETE CASCADE
);
USE sql12617707;
INSERT INTO `playlist_track` (`playlist_id`, `track_id`)
VALUES
    (1, 10),
    (2, 9),
    (3, 8),
    (4, 7),
    (5, 6),
    (6, 5),
    (7, 4),
    (8, 3),
    (9, 2),
    (10, 1);
    USE sql12617707;
    SELECT*FROM playlist_track;

desc playlist_track;
