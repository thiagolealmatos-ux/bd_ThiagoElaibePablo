-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1

CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    ano INTEGER,
    exemplares INTEGER NOT NULL DEFAULT 1
);

INSERT INTO LIVRO (id, titulo, autor, ano, exemplares)
VALUES (1, 'Dom Casmurro', 'Machado de Assis', 1899, 3);

INSERT INTO LIVRO (id, titulo, autor, ano, exemplares)
VALUES (2, 'O Hobbit', 'J. R. R. Tolkien', 1937, 2);



-- ex2


CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

INSERT INTO LEITOR (id, nome)
VALUES (1, 'Thiago');

INSERT INTO LEITOR (id, nome)
VALUES (2, 'Elaibe');

INSERT INTO LEITOR (id, nome)
VALUES (3, 'Pablo');

ALTER TABLE LEITOR ADD COLUMN telefone TEXT;

SELECT * FROM LEITOR;



-- ex3

CREATE TABLE EMPRESTIMO (
    id INTEGER PRIMARY KEY,
    id_livro INTEGER NOT NULL
);

INSERT INTO EMPRESTIMO (id, id_livro)
VALUES (1, 1);

INSERT INTO EMPRESTIMO (id, id_livro)
VALUES (2, 2);

ALTER TABLE EMPRESTIMO
ADD COLUMN situacao TEXT NOT NULL DEFAULT 'aberto';

-- ex4

CREATE TABLE EDITORA (
    id INTEGER PRIMARY KEY,
    nm TEXT
);

INSERT INTO EDITORA (id, nm)
VALUES (1, 'Editora Exemplo');

ALTER TABLE EDITORA RENAME COLUMN nm TO nome;


-- ex5


CREATE TABLE RASCUNHO (
    id INTEGER PRIMARY KEY,
    texto TEXT
);

INSERT INTO RASCUNHO (id, texto)
VALUES (1, 'Primeiro texto');

INSERT INTO RASCUNHO (id, texto)
VALUES (2, 'Segundo texto');

INSERT INTO RASCUNHO (id, texto)
VALUES (3, 'Terceiro texto');

DELETE FROM RASCUNHO;

SELECT * FROM RASCUNHO;

DROP TABLE RASCUNHO;


-- ex6

CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL
);

CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE EMPRESTIMO (
    id_leitor INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,
    data_saida TEXT NOT NULL,
    data_volta TEXT,
    PRIMARY KEY (id_leitor, id_livro, data_saida),
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id)
);

INSERT INTO LIVRO (id, titulo)
VALUES (1, 'Dom Casmurro');

INSERT INTO LIVRO (id, titulo)
VALUES (2, 'O Hobbit');

INSERT INTO LEITOR (id, nome)
VALUES (1, 'Thiago');

INSERT INTO LEITOR (id, nome)
VALUES (2, 'Elaibe');

INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida, data_volta)
VALUES (1, 1, '2026-09-20', NULL);

INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida, data_volta)
VALUES (1, 2, '2026-09-20', NULL);