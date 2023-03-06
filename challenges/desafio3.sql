SELECT 
  tu.nome AS pessoa_usuaria, 
  COUNT(tr.cancao_id) AS musicas_ouvidas, 
  ROUND(SUM(duracao_segundos)/60, 2) AS total_minutos 
FROM SpotifyClone.tabela_usuarios tu
  INNER JOIN SpotifyClone.tabela_reproducoes tr ON tu.usuario_id = tr.usuario_id
  INNER JOIN SpotifyClone.tabela_cancoes tc ON tr.cancao_id = tc.cancao_id
GROUP BY tu.nome
ORDER BY tu.nome;