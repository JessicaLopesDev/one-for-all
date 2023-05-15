SELECT COUNT(*) AS musicas_no_historico
FROM historico_reproducoes AS h

INNER JOIN pessoas_usuarias as p ON h.usuario_id = p.id
WHERE p.nome = 'Barbara Liskov';
