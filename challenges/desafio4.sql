SELECT
    u.user_name AS "pessoa_usuaria",
    IF(MAX(YEAR(r.date_reproduction)) >= 2021, "Ativa", "Inativa") AS "status_pessoa_usuaria"
FROM
    SpotifyClone.user u
    INNER JOIN SpotifyClone.history r ON u.user_id = r.user_id
GROUP BY
    u.user_name
ORDER BY
    u.user_name;