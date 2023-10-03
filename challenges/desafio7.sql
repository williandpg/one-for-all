SELECT
    ar.artist_name AS "artista",
    a.album_name AS "album",
    COUNT(f.artist_id) AS "pessoas_seguidoras"
FROM
    SpotifyClone.artist ar
    JOIN SpotifyClone.album a ON a.artist_id = ar.artist_id
    JOIN SpotifyClone.following f ON f.artist_id = ar.artist_id
GROUP BY
    ar.artist_name,
    a.album_name
ORDER BY
    COUNT(f.artist_id) DESC,
    ar.artist_name,
    a.album_name;