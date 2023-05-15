SELECT
  a.nome_artista AS artista,
  b.nome_album AS album
FROM artistas AS a

INNER JOIN albuns AS b on a.id = b.artista_id
WHERE a.nome_artista = 'Elis Regina'

ORDER BY album;
