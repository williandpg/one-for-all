SELECT
    MIN(p.price) AS "faturamento_minimo",
    MAX(p.price) AS "faturamento_maximo",
    ROUND(AVG(p.price), 2) AS "faturamento_medio",
    SUM(p.price) AS "faturamento_total"
FROM
    SpotifyClone.user u
    JOIN SpotifyClone.plan p ON p.plan_id = u.plan_id