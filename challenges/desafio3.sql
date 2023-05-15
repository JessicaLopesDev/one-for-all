SELECT 
	p.nome AS pessoa_usuaria,
	COUNT(h.musica_id) AS musicas_ouvidas,
    ROUND(SUM(m.duracao)/60, 2) AS total_minutos
FROM pessoas_usuarias AS p
    
INNER JOIN historico_reproducoes AS h ON p.id = h.usuario_id
INNER JOIN musicas AS m on h.musica_id = m.id

GROUP BY pessoa_usuaria ORDER BY pessoa_usuaria;
