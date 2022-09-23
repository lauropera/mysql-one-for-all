SELECT
u.name AS usuario,
COUNT(h.song_id) AS qt_de_musicas_ouvidas,
ROUND((SUM(length)) / 60, 2) AS total_minutos
FROM user AS u
INNER JOIN user_history AS h ON h.user_id = u.user_id
INNER JOIN song AS s ON s.song_id = h.song_id
GROUP BY u.name
ORDER BY u.name;