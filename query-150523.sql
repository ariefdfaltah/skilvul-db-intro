DELETE FROM
    playlist_track;

-- Playlist 1
INSERT INTO
    playlist_track (playlist_id, track_id)
SELECT
    1,
    track_id
FROM
    (
        SELECT
            track_id,
            singer
        FROM
            track
        WHERE
            singer IN (1, 2, 3)
        LIMIT
            3
    ) AS t;

-- Playlist 2
INSERT INTO
    playlist_track (playlist_id, track_id)
SELECT
    2,
    track_id
FROM
    (
        SELECT
            track_id,
            singer
        FROM
            track
        WHERE
            singer IN (4, 5, 6)
        LIMIT
            3
    ) AS t;

-- Playlist 3
INSERT INTO
    playlist_track (playlist_id, track_id)
SELECT
    3,
    track_id
FROM
    (
        SELECT
            track_id,
            singer
        FROM
            track
        WHERE
            singer IN (7, 8, 9)
        LIMIT
            3
    ) AS t;

-- Playlist 4
INSERT INTO
    playlist_track (playlist_id, track_id)
SELECT
    4,
    track_id
FROM
    (
        SELECT
            track_id,
            singer
        FROM
            track
        WHERE
            singer IN (10, 1, 5)
        LIMIT
            3
    ) AS t;

SELECT
    *
FROM
    playlist p
    INNER JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
    INNER JOIN track t ON pt.track_id = t.track_id;

SELECT
    user.name AS user_name,
    singer.name AS singer_name,
    album.name AS album_name,
    track.name AS track_title
FROM
    user
    JOIN playlist ON user.user_id = playlist.user_id
    JOIN playlist_track ON playlist.playlist_id = playlist_track.playlist_id
    JOIN track ON playlist_track.track_id = track.track_id
    JOIN album ON track.album = album.album_id
    JOIN singer ON track.singer = singer.singer_id;