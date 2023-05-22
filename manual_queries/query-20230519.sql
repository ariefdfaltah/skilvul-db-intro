select * from SequelizeMeta

DROP TABLE SequelizeMeta
DROP TABLE Users
DROP TABLE User_Tests


CREATE TABLE `SequelizeMeta` (
    `name` VARCHAR(255) NOT NULL DEFAULT ''
)

INSERT INTO SequelizeMeta (name) 
VALUES ('20230519074959-create-user.js');
INSERT INTO SequelizeMeta (name) 
VALUES ('20230519074960-create-track.js');
INSERT INTO SequelizeMeta (name) 
VALUES ('20230519074961-create-singer.js');
INSERT INTO SequelizeMeta (name) 
VALUES ('20230519074962-create-album.js');
INSERT INTO SequelizeMeta (name) 
VALUES ('20230519074963-create-playlist.js');
INSERT INTO SequelizeMeta (name) 
VALUES ('20230519074964-create-playlist_track.js');

SELECT * FROM User_Tests;