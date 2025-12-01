-- 01_create_tables.sql
CREATE DATABASE IF NOT EXISTS edumanage;
USE edumanage;

CREATE TABLE ALUNO (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(100),
    nascimento DATE,
    endereco VARCHAR(150),
    sexo CHAR(1),
    telefone VARCHAR(20)
);

CREATE TABLE PROFESSOR (
    prof_id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(120),
    formacao VARCHAR(100)
);

CREATE TABLE DISCIPLINA (
    disc_id INT PRIMARY KEY,
    nome VARCHAR(100),
    carga_horaria INT
);

CREATE TABLE TURMA (
    turma_id INT PRIMARY KEY,
    nome VARCHAR(100),
    ano INT,
    turno VARCHAR(20)
);

CREATE TABLE SALA (
    sala_id INT PRIMARY KEY,
    numero VARCHAR(20),
    capacidade INT
);

CREATE TABLE HORARIO (
    horario_id INT PRIMARY KEY,
    turma_id INT,
    disc_id INT,
    dia_semana VARCHAR(15),
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (turma_id) REFERENCES TURMA(turma_id),
    FOREIGN KEY (disc_id) REFERENCES DISCIPLINA(disc_id)
);

CREATE TABLE MATRICULA (
    matricula_id INT PRIMARY KEY,
    aluno_id INT,
    turma_id INT,
    ano_letivo INT,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(aluno_id),
    FOREIGN KEY (turma_id) REFERENCES TURMA(turma_id)
);

CREATE TABLE NOTA (
    nota_id INT PRIMARY KEY,
    aluno_id INT,
    disc_id INT,
    nota DECIMAL(4,2),
    bimestre INT,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(aluno_id),
    FOREIGN KEY (disc_id) REFERENCES DISCIPLINA(disc_id)
);

CREATE TABLE FREQUENCIA (
    freq_id INT PRIMARY KEY,
    aluno_id INT,
    disc_id INT,
    data DATE,
    presenca BOOLEAN,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(aluno_id),
    FOREIGN KEY (disc_id) REFERENCES DISCIPLINA(disc_id)
);
