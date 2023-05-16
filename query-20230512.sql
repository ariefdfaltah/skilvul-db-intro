SELECT version();

CREATE TABLE `user` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
DESC user;

CREATE TABLE `singer` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
)
DESC singer;

CREATE TABLE `album` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`id`) USING BTREE
)
DESC album;

CREATE TABLE `track` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    `singer_id` INT(10) NOT NULL,
    `album_id` INT(10) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `album_id` FOREIGN KEY (`album_id`) 
        REFERENCES `sql12617704`.`album` (`id`) 
            ON UPDATE CASCADE 
            ON DELETE CASCADE,
    CONSTRAINT `singer_id` FOREIGN KEY (`singer_id`) 
        REFERENCES `sql12617704`.`singer` (`id`) 
            ON UPDATE CASCADE 
            ON DELETE CASCADE    
)
DESC track;

CREATE TABLE `playlist` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    `user_id` INT(10) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `user_id` FOREIGN KEY (`user_id`) 
        REFERENCES `sql12617704`.`user` (`id`) 
            ON UPDATE CASCADE 
            ON DELETE CASCADE   
)
DESC playlist;

CREATE TABLE `playlist_track` (
    `playlist_id` INT(10) NOT NULL,
    `track_id` INT(10) NOT NULL,
    CONSTRAINT `playlist_id` FOREIGN KEY (`playlist_id`) 
        REFERENCES `sql12617704`.`playlist` (`id`) 
            ON UPDATE CASCADE 
            ON DELETE CASCADE,
    CONSTRAINT `track_id` FOREIGN KEY (`track_id`) 
        REFERENCES `sql12617704`.`track` (`id`) 
            ON UPDATE CASCADE 
            ON DELETE CASCADE      
)
DESC playlist_track;

