desc user

insert into user(`user_id`,`name`,`email`,`password`) values 
('1','name1','email1@gmail.com','password1'),
('2','name2','email2@gmail.com','password2'),
('3','name3','email3@gmail.com','password3'),
('4','name4','email4@gmail.com','password4'),
('5','name5','email5@gmail.com','password5'),
('6','name6','email6@gmail.com','password6'),
('7','name7','email7@gmail.com','password7'),
('8','name8','email8@gmail.com','password8'),
('9','name9','email9@gmail.com','password9'),
('10','name10','email10@gmail.com','password10');

select * from user;

desc singer

insert into singer(`singer_id`,`name`) values 
('1','singername1'),
('2','singername2'),
('3','singername3'),
('4','singername4'),
('5','singername5'),
('6','singername6'),
('7','singername7'),
('8','singername8'),
('9','singername9'),
('10','singername10');

select * from singer;

desc album

insert into album(`album_id`,`name`) values 
('1','albumname1'),
('2','albumname2'),
('3','albumname3'),
('4','albumname4'),
('5','albumname5'),
('6','albumname6'),
('7','albumname7'),
('8','albumname8'),
('9','albumname9'),
('10','albumname10');

select * from album;

desc track

insert into track(`track_id`,`title`,`singer`,`album`) values 
('1','track1','1','1'),
('2','track2','2','2'),
('3','track3','3','3'),
('4','track4','4','4'),
('5','track5','5','5'),
('6','track6','6','6'),
('7','track7','7','7'),
('8','track8','8','8'),
('9','track9','9','9'),
('10','track10','10','10');

select * from track

desc playlist

insert into playlist(`playlist_id`,`name`,`user_id`) values 
('1','playlist1','1'),
('2','playlist2','2'),
('3','playlist3','3'),
('4','playlist4','4'),
('5','playlist5','5'),
('6','playlist6','6'),
('7','playlist7','7'),
('8','playlist8','8'),
('9','playlist9','9'),
('10','playlist10','10');

select * from playlist

desc playlist_track

insert into playlist_track(`playlist_id`,`track_id`) values 
('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','10');

select * from playlist_track