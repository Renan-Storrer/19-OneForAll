SELECT DISTINCT
  tu.nome AS pessoa_usuaria, 
  IF(MAX(YEAR(tr.data_reproducao)) >= 2021, "Ativa", "Inativa") AS status_pessoa_usuaria
FROM SpotifyClone.tabela_usuarios tu
  INNER JOIN SpotifyClone.tabela_reproducoes tr ON tu.usuario_id = tr.usuario_id
GROUP BY tu.nome
ORDER BY tu.nome;