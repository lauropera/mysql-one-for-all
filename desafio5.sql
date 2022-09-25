SELECT
s.song_name AS cancao,
COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.user_history AS h
INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, cancao
LIMIT 2;