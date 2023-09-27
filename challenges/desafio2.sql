SELECT
    COUNT(DISTINCT s.song_id) AS 'cancoes',
    COUNT(DISTINCT a.album_id) AS 'albuns',
    COUNT(DISTINCT ar.artist_id) AS 'artistas'
FROM
    SpotifyClone.song AS s
    JOIN
    SpotifyClone.album AS a ON s.album_id = a.album_id
    JOIN
    SpotifyClone.artist AS ar ON a.artist_id = ar.artist_id;