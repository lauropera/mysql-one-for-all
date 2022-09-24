SELECT
art.name AS artista,
alb.name AS album,
COUNT(ufollowing.artist_id) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.user_following AS ufollowing
ON ufollowing.artist_id = art.artist_id
GROUP BY alb.name
ORDER BY seguidores DESC, artista, album;