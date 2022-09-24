SELECT
s.name AS nome,
COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.user_history AS h
ON h.song_id = s.song_id
INNER JOIN SpotifyClone.user AS u
ON h.user_id = u.user_id
WHERE u.plan_id = 1 OR u.plan_id = 4
GROUP BY s.name
ORDER BY nome;