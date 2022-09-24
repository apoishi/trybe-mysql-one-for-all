SELECT
  u.user_name AS usuario,
  IF(
    MAX(YEAR(hp.date_played)) >= '2021',
    'Usuário ativo',
    'Usuário inativo'
  ) AS status_usuario
FROM
  SpotifyClone.users AS u
  INNER JOIN SpotifyClone.history_played AS hp ON u.user_id = hp.user_id
GROUP BY
  usuario
ORDER BY
  usuario;