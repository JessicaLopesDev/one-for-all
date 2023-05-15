SELECT
	FORMAT(MIN(p.preco), 2) AS faturamento_minimo,
	CONVERT(MAX(p.preco), CHAR) AS faturamento_maximo,
	FORMAT(AVG(p.preco), 2) AS faturamento_medio,
	CONVERT(ROUND(SUM(p.preco), 2), CHAR) AS faturamento_total
FROM plano AS p

INNER JOIN pessoas_usuarias AS u ON p.id = u.plano_id;
