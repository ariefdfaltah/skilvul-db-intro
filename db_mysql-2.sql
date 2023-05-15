SELECT * from singer;
SELECT * from album;
SELECT * from playlist;

INSERT INTO track (`title`, `singer`, `album`)
VALUES  
        ('Tutur Batin', 5, 1),
        ('Sudut Memori', 5, 1),
        ('Jatuh Hati', 1, 2),
        ('Biarkanlah', 1, 2),
        ('Aku Bukan Untukmu', 4, 3),
        ('Sudut Memori', 4, 3),
        ('Interaksi', 2, 4),
        ('Jatuh Suka', 2, 4),
        ('Sang Dewi', 3, 5),
        ('Menyesal', 3, 5),
        ('Mercy', 10, 6),
        ('Bad Reputation', 10, 6),
        ('Sorry', 9, 7),
        ('What Do You Mean?', 9, 7),
        ('The Story Of Us', 8, 8),
        ('Enchanted', 8, 8),
        ('Shape of You', 6, 9),
        ('Perfect', 6, 9),
        ('Calling All My Lovelies', 7, 10),
        ('Too Good to Say Goodbye', 7, 10);

SELECT * from track;

INSERT INTO playlist_track
VALUES
        (1, 30),
        (2, 12),
        (2, 13),
        (3, 14),
        (4, 15),
        (5, 16),
        (5, 17),
        (6, 18),
        (6, 19),
        (7, 20),
        (7, 21),
        (7, 23),
        (8, 22),
        (8, 24),
        (8, 25),
        (9, 26),
        (9, 27),
        (9, 29),
        (10, 28),
        (10, 11);

SELECT * FROM playlist_track ORDER BY playlist_id;
