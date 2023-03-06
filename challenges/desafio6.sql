SELECT 
	MIN(valor_plano) AS faturamento_minimo,
  MAX(valor_plano) AS faturamento_maximo,
  ROUND(AVG(valor_plano), 2) AS faturamento_medio,
  SUM(valor_plano) AS faturamento_total
FROM SpotifyClone.tabela_planos tp
INNER JOIN SpotifyClone.tabela_usuarios tu ON tu.plano_id = tp.plano_id;