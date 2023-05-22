select * from SequelizeMeta


DROP TABLE SequelizeMeta
DROP TABLE User
DROP TABLE playlist

CREATE TABLE `SequelizeMeta` (
    `name` VARCHAR(255) NOT NULL DEFAULT '',
)

INSERT INTO SequelizeMeta (name)
VALUES ('19-create-User.js');

INSERT INTO SequelizeMeta (name)
VALUES ('19-create-Track.js');

INSERT INTO SequelizeMeta (name)
VALUES ('19-create-Album.js');

INSERT INTO SequelizeMeta (name)
VALUES ('19-create-Singer.js');

INSERT INTO SequelizeMeta (name)
VALUES ('19-create-Playlist.js');

INSERT INTO SequelizeMeta (name)
VALUES ('19-create-Playlist-Track.js');

SELECT * FROM User_Tests`;