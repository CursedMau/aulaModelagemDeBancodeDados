-- 03_select_queries.sql
-- 1. Alunos matriculados em uma turma
SELECT a.nome, t.nome AS turma
FROM ALUNO a
JOIN MATRICULA m ON a.aluno_id = m.aluno_id
JOIN TURMA t ON m.turma_id = t.turma_id;

-- 2. Frequência por aluno e disciplina
SELECT a.nome, d.nome AS disciplina, f.data, f.presenca
FROM FREQUENCIA f
JOIN ALUNO a ON f.aluno_id = a.aluno_id
JOIN DISCIPLINA d ON f.disc_id = d.disc_id;

-- 3. Notas acima da média (maior que 8)
SELECT a.nome, d.nome, n.nota
FROM NOTA n
JOIN ALUNO a ON n.aluno_id = a.aluno_id
JOIN DISCIPLINA d ON n.disc_id = d.disc_id
WHERE n.nota > 8
ORDER BY n.nota DESC
LIMIT 5;

-- 4. Horários de cada turma ordenados por dia
SELECT t.nome AS turma, d.nome AS disciplina, h.dia_semana, h.hora_inicio
FROM HORARIO h
JOIN TURMA t ON t.turma_id = h.turma_id
JOIN DISCIPLINA d ON d.disc_id = h.disc_id
ORDER BY h.dia_semana, h.hora_inicio;

-- 5. Buscar contatos dos alunos (limit)
SELECT nome, telefone
FROM ALUNO
ORDER BY nome ASC
LIMIT 2;
