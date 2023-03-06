SELECT 
  tar.nome AS artista, 
  tal.nome AS album, 
  COUNT(tsa.usuario_id) AS pessoas_seguidoras
FROM SpotifyClone.tabela_artistas tar
  INNER JOIN SpotifyClone.tabela_albuns tal ON tal.artista_id = tar.artista_id
  INNER JOIN SpotifyClone.tabela_seguindo_artistas tsa ON tsa.artista_id = tar.artista_id
GROUP BY 
  tar.nome, 
  tal.nome
ORDER BY 
  COUNT(tsa.usuario_id) DESC, 
  tar.nome, 
  tal.nome;