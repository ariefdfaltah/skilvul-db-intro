SELECT*FROM user;
USE sql12617707;
INSERT INTO `track` (`title`, `singer`, `album`)
VALUES
    ('Creepin', 1, 1),
    ('Staryboy', 1, 1),
    ('Night Changes', 2, 2),
    ('18', 2, 2),
    ('Superhero', 3, 3),
    ('No Guidance', 3, 3),
    ('Toxic', 4, 4),
    ('WFM', 4, 4),
    ('WOLVES', 5, 5),
    ('Taki Taki', 5, 5),
    ('Glimpse of Us', 6, 6),
    ('SLOW DANCING IN THE DARK', 6, 6),
    ('27', 7, 7),
    ('Next To You', 7, 7),
    ('Hero', 8, 8),
    ('this is what falling in love feels like', 8, 8),
    ('moonlight', 9, 9),
    ('vulnerable', 9, 9),
    ('beside you', 10, 10),
    ('UNDERSTAND', 10, 10);

SELECT*FROM track;

INSERT INTO `playlist_track` (`playlist_id`, `track_id`)
VALUES
    (1, 1),
    (1, 4),
    (1, 7),
    (2, 2),
    (2, 5),
    (2, 8),
    (3, 3),
    (3, 6),
    (3, 9),
    (4, 10),
    (4, 13),
    (4, 16),
    (5, 11),
    (5, 14),
    (5, 17),
    (6, 13),
    (6, 15),
    (6, 18),
    (7, 19),
    (7, 22),
    (7, 30),
    (8, 20),
    (8, 23),
    (8, 26),
    (9, 21),
    (9, 28),
    (9, 27),
    (10, 25),
    (10, 29),
    (10, 24);

    SELECT*FROM playlist_track;
    
