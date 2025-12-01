-- 04_update.sql
UPDATE ALUNO
SET telefone = '11911112222'
WHERE aluno_id = 1;

UPDATE TURMA
SET turno = 'Integral'
WHERE turma_id = 2;

UPDATE NOTA
SET nota = 9.5
WHERE nota_id = 1;
