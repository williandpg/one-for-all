SELECT
    s.song_name AS "cancao",
    COUNT(s.song_id) AS "reproducoes"
FROM 
    SpotifyClone.history r
    INNER JOIN SpotifyClone.songs s ON s.song_id = r.song_id
GROUP BY 
    s.song_name
ORDER BY
    COUNT(s.song_id) DESC,
    s.song_name
LIMIT 2;