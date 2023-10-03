SELECT
    COUNT(r.song_id) AS "musicas_no_historico"
FROM
    SpotifyClone.history r
    INNER JOIN SpotifyClone.user u ON u.user_id = r.user_id
WHERE
    u.user_name = "Barbara Liskov";