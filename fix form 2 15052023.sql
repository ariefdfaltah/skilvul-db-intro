SELECT version();
SHOW TABLES;



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
