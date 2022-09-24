SELECT 
	u.user_name AS usuario,
  COUNT(hp.date_played) AS qt_de_musicas_ouvidas, 
  ROUND(SUM(s.length_seconds / 60 ), 2) AS total_minutos
FROM 
	SpotifyClone.users AS u 
	INNER JOIN 
	SpotifyClone.history_played AS hp ON u.user_id = hp.user_id
	INNER JOIN
	SpotifyClone.songs AS s ON hp.song_id = s.song_id
GROUP BY
	user_name
ORDER BY
	user_name ASC;