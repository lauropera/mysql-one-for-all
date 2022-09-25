SELECT
art.artist_name AS artista,
alb.album_name AS album,
COUNT(ufollowing.artist_id) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.user_following AS ufollowing
ON ufollowing.artist_id = art.artist_id
GROUP BY alb.album_name
ORDER BY seguidores DESC, artista, album;