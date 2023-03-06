SELECT 
  COUNT(c.nome) AS cancoes, 
  COUNT(DISTINCT ar.nome) AS artistas, 
  COUNT(DISTINCT al.nome) AS albuns 
FROM SpotifyClone.tabela_cancoes c
INNER JOIN SpotifyClone.tabela_albuns al ON c.album_id = al.album_id
INNER JOIN SpotifyClone.tabela_artistas ar ON  al.artista_id = ar.artista_id;