SELECT 
	COUNT(hp.song_id) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.users AS u
	INNER JOIN SpotifyClone.history_played AS hp 
    ON u.user_id = hp.user_id
WHERE 
u.user_name = 'Barbara Liskov'
GROUP BY
u.user_id;