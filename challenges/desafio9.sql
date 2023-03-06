SELECT COUNT(tr.cancao_id) AS musicas_no_historico 
FROM SpotifyClone.tabela_reproducoes tr
  INNER JOIN SpotifyClone.tabela_usuarios tu ON tu.usuario_id = tr.usuario_id
WHERE tu.nome = 'Barbara Liskov'
GROUP BY tr.usuario_id;