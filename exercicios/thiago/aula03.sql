-- ex1

PRAGMA foreign_keys = ON;

INSERT INTO TURMA (id, nome, turno)
VALUES (4, '1J', 'noite');

INSERT INTO ALUNO (id, nome, id_turma)
VALUES
(11, 'Lucas', 4),
(12, 'Mariana', 4);

-- ex2

PRAGMA foreign_keys = ON;

-- Tentativa que não funciona:
--INSERT INTO ALUNO (id, nome, id_turma)
--VALUES (11, 'Lucas', 99);
-- Erro: FOREIGN KEY constraint failed

-- Versão correta:
INSERT INTO ALUNO (id, nome, id_turma)
VALUES (13, 'Lucas', 1);

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
WHERE id = 10;

UPDATE ALUNO
SET id_turma = 2
WHERE id = 10;

-- UPDATE errado:
--UPDATE ALUNO SET id_turma = 2;
-- Afetaria os 10 alunos da escola.

-- ex5

PRAGMA foreign_keys = ON;

SELECT *
FROM ALUNO
WHERE id_turma = 1;

SELECT *
FROM ALUNO
WHERE id = 10;

-- Tentativa de apagar a turma 1:
--DELETE FROM TURMA WHERE id = 1;
-- Erro: FOREIGN KEY constraint failed
-- Motivo: existem alunos vinculados a essa turma.

DELETE FROM ALUNO
WHERE id = 10;

-- A turma não pode ser apagada porque possui alunos vinculados.
-- O aluno 10 pode ser apagado porque não possui inscrições vinculadas.

--ex6

PRAGMA foreign_keys = ON;

CREATE TABLE PAI_A (
    id INTEGER PRIMARY KEY
);

CREATE TABLE FILHO_A (
    id INTEGER PRIMARY KEY,
    id_pai INTEGER,
    FOREIGN KEY (id_pai) REFERENCES PAI_A(id)
    ON DELETE RESTRICT
);

CREATE TABLE PAI_B (
    id INTEGER PRIMARY KEY
);

CREATE TABLE FILHO_B (
    id INTEGER PRIMARY KEY,
    id_pai INTEGER,
    FOREIGN KEY (id_pai) REFERENCES PAI_B(id)
    ON DELETE CASCADE
);

CREATE TABLE PAI_C (
    id INTEGER PRIMARY KEY
);

CREATE TABLE FILHO_C (
    id INTEGER PRIMARY KEY,
    id_pai INTEGER,
    FOREIGN KEY (id_pai) REFERENCES PAI_C(id)
    ON DELETE SET NULL
);

INSERT INTO PAI_A (id) VALUES (1);
INSERT INTO PAI_B (id) VALUES (1);
INSERT INTO PAI_C (id) VALUES (1);

INSERT INTO FILHO_A (id, id_pai)
VALUES (1, 1), (2, 1);

INSERT INTO FILHO_B (id, id_pai)
VALUES (1, 1), (2, 1);

INSERT INTO FILHO_C (id, id_pai)
VALUES (1, 1), (2, 1);

-- DELETE FROM PAI_A WHERE id = 1;
-- Erro: FOREIGN KEY constraint failed.

DELETE FROM PAI_B WHERE id = 1;

DELETE FROM PAI_C WHERE id = 1;

SELECT * FROM FILHO_A;

SELECT * FROM FILHO_B;

SELECT * FROM FILHO_C;

-- Usaria RESTRICT entre ALUNO e INSCRICAO,
-- pois impede apagar um aluno que possui inscrições.