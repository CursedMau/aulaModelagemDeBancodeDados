-- 02_insert_data.sql
INSERT INTO ALUNO VALUES
(1, 'João Silva', '2005-03-10', 'Rua A, 123', 'M', '11999998888'),
(2, 'Maria Souza', '2006-07-22', 'Rua B, 55', 'F', '11922223333'),
(3, 'Ana Pereira', '2005-11-05', 'Av C, 999', 'F', '11933334444');

INSERT INTO PROFESSOR VALUES
(1, 'Carlos Alberto', 'carlos@escola.com', 'Matemática'),
(2, 'Fernanda Melo', 'fernanda@escola.com', 'Português');

INSERT INTO DISCIPLINA VALUES
(1, 'Matemática', 80),
(2, 'Português', 60),
(3, 'História', 60);

INSERT INTO TURMA VALUES
(1, '1º Ano A', 2024, 'Manhã'),
(2, '1º Ano B', 2024, 'Tarde');

INSERT INTO SALA VALUES
(1, '101', 35),
(2, '202', 40);

INSERT INTO HORARIO VALUES
(1, 1, 1, 'Segunda', '08:00', '09:00'),
(2, 1, 2, 'Terça', '10:00', '11:00'),
(3, 2, 3, 'Quarta', '13:00', '14:00');

INSERT INTO MATRICULA VALUES
(1, 1, 1, 2024),
(2, 2, 1, 2024),
(3, 3, 2, 2024);

INSERT INTO NOTA VALUES
(1, 1, 1, 8.5, 1),
(2, 2, 2, 9.0, 1),
(3, 3, 3, 7.0, 1);

INSERT INTO FREQUENCIA VALUES
(1, 1, 1, '2024-02-10', TRUE),
(2, 2, 2, '2024-02-10', FALSE),
(3, 3, 3, '2024-02-11', TRUE);
