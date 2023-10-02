SELECT
    u.user_name AS "pessoa_usuaria",
    COUNT(DISTINCT s.song_id) AS "musicas_ouvidas",
    ROUND(SUM(s.duration) / 60, 2) AS "total_minutos"
FROM
    SpotifyClone.user u
    INNER JOIN SpotifyClone.history r ON u.user_id = r.user_id
    INNER JOIN SpotifyClone.song s ON r.song_id = s.song_id
GROUP BY
    u.user_name
ORDER BY
    u.user_name;