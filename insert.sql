
INSERT INTO `user` (`name`, `email`, `password`) VALUES
  ('Meisya', 'meisya@gmail.com', 'user1'),
  ('Tiara', 'tiara@gmail.com', 'user2'),
  ('Intan', 'intan@gmail.com', 'user3'),
  ('Giza', 'giza@gmail.com', 'user4'),
  ('Hilmi', 'hilmi@gmail.com', 'user5'),
  ('Eka', 'eka@gmail.com', 'user6'),
  ('Feli', 'feli@gmail.com', 'user7'),
  ('Rifqy', 'rifqy@gmail.com', 'user8'),
  ('Zarin', 'zarin@gmail.com', 'user9'),
  ('Rafli', 'rafli@gmail.com', 'user10');

SELECT * FROM `user`;

INSERT INTO `singer` (`name`) VALUES
    ('Tulus'),
    ('Nadin Amizah'),
    ('Arash Buana'),
    ('Isyana'),
    ('Raisa'),
    ('Mahalini'),
    ('Ziva'),
    ('Kunto Aji'),
    ('Sivia'),
    ('Yura');

SELECT * FROM `singer`;

INSERT INTO `album` (`album_id`, `name`) VALUES
    (1, 'Manusia'),
    (2, 'Kalah Bertaruh'),
    (3, 'logic mess'),
    (4, 'Lexicon'),
    (5, 'Handmade'),
    (6, 'Fabula'),
    (7, 'Magnolya'),
    (8, 'Mantra'),
    (9, 'Love Spells'),
    (10, 'Tutur Batin');

SELECT * FROM `album`;

INSERT INTO `track` (`title`, `singer`, `album`) VALUES
    ('Tulus : Manusia', 1, 1),
    ('Nadin Amizah : Kalah Bertaruh', 2, 2),
    ('Arash : logic mess', 3, 3),
    ('Isyana: Lexicon', 4, 4),
    ('Raisa : Handmade', 5, 5),
    ('Mahalini : Fabula', 6, 6),
    ('Ziva : Magnolya', 7, 7),
    ('Kunto Aji : Mantra', 8, 8),
    ('Sivia : Love Spells', 9, 9),
    ('Yura : Tutur Batin', 10, 10);

SELECT track.track_id, track.title, album.name AS album_name, singer.name AS singer_name FROM track
INNER JOIN album ON track.album = album.album_id
INNER JOIN singer ON track.singer = singer.singer_id;

INSERT INTO `playlist` (`playlist_id`, `name`, `user_id`) VALUES
    (1, 'feel good', 4),
    (2, 'happy', 5),
    (3, 'love song', 1),
    (4, 'populer', 2),
    (5, 'calm song', 3),
    (6, 'life song', 9),
    (7, 'jazz', 6),
    (8, 'pop', 2),
    (9, 'neo clasic', 4),
    (10, 'pop:folk', 1);

SELECT * FROM playlist;

INSERT INTO `playlist_track` (`playlist_id`, `track_id`) VALUES
    (1, 8),
    (2, 7),
    (3, 9),
    (4, 6),
    (5, 10),
    (6, 1),
    (7, 5),
    (8, 3),
    (9, 4),
    (10, 2);

SELECT * FROM playlist_track;
