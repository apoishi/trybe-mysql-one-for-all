SELECT
  FORMAT(MIN(sp.price), 2) AS faturamento_minimo,
  FORMAT(MAX(sp.price), 2) AS faturamento_maximo,
  FORMAT(AVG(sp.price), 2) AS faturamento_medio,
  FORMAT(SUM(sp.price), 2) AS faturamento_total
FROM
  SpotifyClone.users AS u
  INNER JOIN SpotifyClone.subscription_plan as sp 
  ON sp.plan_id = u.plan_id;