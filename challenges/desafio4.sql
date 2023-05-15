SELECT p.nome AS pessoa_usuaria,
  IF (MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM pessoas_usuarias AS p

INNER JOIN historico_reproducoes AS h ON p.id = h.usuario_id

GROUP BY pessoa_usuaria ORDER BY pessoa_usuaria;
