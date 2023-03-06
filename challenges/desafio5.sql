SELECT 
  tc.nome AS cancao, 
  COUNT(tr.cancao_id) AS reproducoes 
FROM SpotifyClone.tabela_cancoes tc
  INNER JOIN SpotifyClone.tabela_reproducoes tr ON tr.cancao_id = tc.cancao_id
GROUP BY nome
ORDER BY COUNT(tr.cancao_id) DESC, nome
LIMIT 2;