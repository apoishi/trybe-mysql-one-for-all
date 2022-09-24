SELECT 
	s.song_name AS cancao,
  COUNT(hp.user_id) AS reproducoes
FROM
	SpotifyClone.songs AS s
	INNER JOIN SpotifyClone.history_played AS hp
  ON s.song_id = hp.song_id
GROUP BY
  cancao
ORDER BY 
  reproducoes DESC, cancao
LIMIT 2;