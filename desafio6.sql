SELECT
FORMAT(MIN(price), 2) AS faturamento_minimo,
MAX(price) AS faturamento_maximo,
ROUND(AVG(p.price), 2) AS faturamento_medio,
ROUND(SUM(p.price), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u ON u.plan_id = p.plan_id;