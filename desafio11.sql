SELECT * FROM (
	SELECT
		song_name AS nome_musica,
		CASE
			WHEN song_name LIKE '%Bard%' THEN REPLACE(song_name, 'Bard', 'QA')
			WHEN song_name LIKE '%Amar%' THEN REPLACE(song_name, 'Amar', 'Code Review')
			WHEN song_name LIKE '%Pais%' THEN REPLACE(song_name, 'Pais', 'Pull Requests')
			WHEN song_name LIKE '%SOUL%' THEN REPLACE(song_name, 'SOUL', 'CODE')
			WHEN song_name LIKE '%SUPERSTAR%' THEN REPLACE(song_name, 'SUPERSTAR', 'SUPERDEV')
		END AS novo_nome
	FROM SpotifyClone.song) AS new_songs
WHERE new_songs.novo_nome IS NOT NULL
ORDER BY nome_musica DESC;