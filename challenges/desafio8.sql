SELECT
  tar.nome AS artista,
  tal.nome AS album
FROM SpotifyClone.tabela_albuns tal
  INNER JOIN SpotifyClone.tabela_artistas tar ON tar.artista_id = tal.artista_id
WHERE tar.nome = 'Elis Regina'
ORDER BY tal.album_id;
