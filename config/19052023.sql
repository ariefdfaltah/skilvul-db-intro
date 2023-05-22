/*inner join*/
SELECT user.name, playlist.name, track.title
FROM user
INNER JOIN playlist ON user.id = playlist.user_id
INNER JOIN playlist_track ON playlist.id = playlist_track.playlist_id
INNER JOIN track ON playlist_track.track_id = track.id;

/*left join*/
SELECT user.name, playlist.name, track.title
FROM user
LEFT JOIN playlist ON user.id = playlist.user_id
LEFT JOIN playlist_track ON playlist.id = playlist_track.playlist_id
LEFT JOIN track ON playlist_track.track_id = track.id;

/*right join*/
SELECT user.name, playlist.name, track.title
FROM user
RIGHT JOIN playlist ON user.id = playlist.user_id
RIGHT JOIN playlist_track ON playlist.id = playlist_track.playlist_id
RIGHT JOIN track ON playlist_track.track_id = track.id;
