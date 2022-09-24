SELECT
u.name usuario,
IF(MAX(YEAR(h.date_played)) >= 2021, 'Usuário ativo', 'Usuário inativo') status_usuario 
FROM SpotifyClone.user u
INNER JOIN user_history h ON u.user_id = h.user_id
GROUP BY u.name
ORDER BY u.name;