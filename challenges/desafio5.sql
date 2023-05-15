SELECT m.nome_musica AS cancao, COUNT(*) reproducoes
FROM musicas AS m

INNER JOIN historico_reproducoes AS h on m.id = h.musica_id

GROUP BY cancao ORDER BY COUNT(*) DESC, cancao ASC LIMIT 2;
