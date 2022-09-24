SELECT
u.name AS usuario,
IF(MAX(YEAR(h.date_played)) >= 2021,
  'Usuário ativo', 'Usuário inativo') AS status_usuario 
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_history AS h ON u.user_id = h.user_id
GROUP BY u.name
ORDER BY u.name;