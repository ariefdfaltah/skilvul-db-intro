INSERT INTO `users` (`name`, `email`, `password`)
VALUES
('raffi', 'raffi@gmail.com', '12345678'),
('lia', 'lia@gmail.com', '12345678'),
('eja', 'eja@gmail.com', '12345678'),
('sarah', 'sarah@gmail.com', '12345678'),
('ratu', 'ratu@gmail.com', '12345678'),
('raja', 'raja@gmail.com', '12345678'),
('wahyu', 'wahyu@gmail.com', '12345678'),
('alpin', 'alpin@gmail.com', '12345678'),
('fauzan', 'fauzan@gmail.com', '12345678'),
('luffy', 'raffi@gmail.com', '12345678');

SELECT * FROM users;


INSERT INTO `singer` (`name`)
VALUES
('reisha'),
('blackpink'),
('setia'),
('kuburan'),
('dewa12'),
('last'),
('virgoun'),
('mahalini'),
('fauzan'),
('feby putri');

SELECT * FROM singer;

INSERT INTO `album` (`album_id`,`name`)
VALUES
('1','hilang'),
('2','blackpink album'),
('3','satu hati'),
('4','booming'),
('5','Kerajaan  cinta'),
('6','grow up'),
('7','dua warna cinta'),
('8','fabula'),
('9','anugegrah cinta'),
('10','riuh');

SELECT * FROM album;

INSERT INTO `track` (`title`,`singer`, `album`)
VALUES
('hilang', 1, 1),
('blackpink album', 2, 2),
('satu hati', 3, 3),
('booming', 4, 4),
('Kerajaan  cinta', 5,5),
('grow up', 6, 6),
('dua warna cinta', 7, 7),
('fabula', 8, 8),
('anugegrah cinta', 9, 9),
('riuh', 10, 10);

SELECT * FROM track;

INSERT INTO `playlist` (`playlist_id`,`name`,`user_id`)
VALUES
(1, 'playlist 1', 1),
(2, 'playlist 2', 2),
(3, 'playlist 3', 3),
(4, 'playlist 4', 4),
(5, 'playlist 5', 5),
(6, 'playlist 6', 6),
(7, 'playlist 7', 7),
(8, 'playlist 8', 8),
(9, 'playlist 9', 9),
(10, 'playlist 10', 10);

SELECT * FROM playlist;

INSERT INTO `playlist_track` ( `playlist_id`,`track_id`)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

SELECT * FROM playlist_track;