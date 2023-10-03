SELECT
    ar.artist_name AS "artista",
    a.album_name AS "album"
FROM
    SpotifyClone.artist ar
JOIN
    SpotifyClone.album a ON ar.artist_id = a.artist_id
WHERE
    ar.artist_name = "Elis Regina"