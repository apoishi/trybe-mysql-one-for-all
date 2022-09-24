SELECT 
	s.song_name AS nome,
  COUNT(u.user_id) AS reproducoes
FROM 
	SpotifyClone.users AS u
	INNER JOIN SpotifyClone.subscription_plan AS sp
	ON u.plan_id = sp.plan_id
	INNER JOIN SpotifyClone.history_played AS hp
	ON u.user_id = hp.user_id
	INNER JOIN SpotifyClone.songs AS s
	ON hp.song_id = s.song_id
WHERE 
  sp.plan = 'gratuito' 
  OR sp.plan = 'pessoal'
GROUP BY
	nome
ORDER BY
	nome;