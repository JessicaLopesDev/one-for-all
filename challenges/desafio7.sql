SELECT
	a.nome_artista AS artista,
    b.nome_album AS album,
	COUNT(s.artista_id) AS pessoas_seguidoras
FROM artistas AS a

INNER JOIN albuns AS b ON a.id = b.artista_id
INNER JOIN seguidores AS s ON a.id = s.artista_id

GROUP BY artista, album ORDER BY pessoas_seguidoras DESC, artista, album;
