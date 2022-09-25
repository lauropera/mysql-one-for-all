SELECT COUNT(h.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user_history AS h
INNER JOIN SpotifyClone.user AS u
ON u.user_id = h.user_id
WHERE u.user_name = 'Barbara Liskov';