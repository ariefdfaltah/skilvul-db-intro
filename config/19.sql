SELECT * from singer;
SELECT * from album;
SELECT * from playlist;
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
        SELECT * from track;



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
SELECT * FROM playlist_track ORDER BY playlist_id;