SELECT u.nome, l.titulo
FROM emprestimos e
JOIN usuario u ON e.usuario_id = u.id
JOIN livros l ON e.livro_id = l.id
WHERE e.status = 'ATIVO';