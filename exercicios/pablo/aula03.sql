-- Aula 03 - O dado entra, e o banco discute
-- Enunciado: exercicios/enunciados/aula03-dml.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador.
-- Comece CADA bloco com: PRAGMA foreign_keys = ON;
-- Os blocos rodam sobre o banco da secretaria ja carregado.

-- ex1
PRAGMA foreign_keys = ON;

INSERT INTO TURMA (codigo, turno)
VALUES ('1J', 'noite');

INSERT INTO ALUNO (nome, id_turma)
VALUES ('Aluno Teste 1', (SELECT id_turma FROM TURMA WHERE codigo = '1J'));

INSERT INTO ALUNO (nome, id_turma)
VALUES ('Aluno Teste 2', (SELECT id_turma FROM TURMA WHERE codigo = '1J'));


-- ex2
PRAGMA foreign_keys = ON;

-- INSERT INTO ALUNO (nome, id_turma) VALUES ('Aluno Teste 3', 99);

INSERT INTO ALUNO (nome, id_turma)
VALUES ('Aluno Teste 3', 1);


-- ex3
PRAGMA foreign_keys = ON;

SELECT *
FROM INSCRICAO
WHERE id_aluno = 3 AND id_modalidade = 2;

UPDATE INSCRICAO
SET situacao = 'ativa'
WHERE id_aluno = 3 AND id_modalidade = 2;


-- ex4
PRAGMA foreign_keys = ON;

SELECT *
FROM ALUNO
WHERE id_aluno = 10;

UPDATE ALUNO
SET id_turma = 2
WHERE id_aluno = 10;

-- UPDATE ALUNO SET id_turma = 2;


-- ex5
PRAGMA foreign_keys = ON;

-- DELETE FROM TURMA WHERE id_turma = 1;

SELECT *
FROM ALUNO
WHERE id_aluno = 10;

DELETE FROM ALUNO
WHERE id_aluno = 10;


-- ex6
PRAGMA foreign_keys = ON;

CREATE TABLE PAI_A (
    id INTEGER PRIMARY KEY
);

CREATE TABLE FILHO_A (
    id INTEGER PRIMARY KEY,
    pai_id INTEGER,
    FOREIGN KEY (pai_id) REFERENCES PAI_A(id)
    ON DELETE RESTRICT
);

CREATE TABLE PAI_B (
    id INTEGER PRIMARY KEY
);

CREATE TABLE FILHO_B (
    id INTEGER PRIMARY KEY,
    pai_id INTEGER,
    FOREIGN KEY (pai_id) REFERENCES PAI_B(id)
    ON DELETE CASCADE
);

CREATE TABLE PAI_C (
    id INTEGER PRIMARY KEY
);

CREATE TABLE FILHO_C (
    id INTEGER PRIMARY KEY,
    pai_id INTEGER,
    FOREIGN KEY (pai_id) REFERENCES PAI_C(id)
    ON DELETE SET NULL
);

INSERT INTO PAI_A VALUES (1);
INSERT INTO FILHO_A VALUES (1, 1), (2, 1);

INSERT INTO PAI_B VALUES (1);
INSERT INTO FILHO_B VALUES (1, 1), (2, 1);

INSERT INTO PAI_C VALUES (1);
INSERT INTO FILHO_C VALUES (1, 1), (2, 1);

-- DELETE