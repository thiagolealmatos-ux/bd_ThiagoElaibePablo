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
INSERT INTO LIVRO (id, titulo, autor, ano)
VALUES (1, 'Clube da Luta', 'Chuck Palahniuk', 1996);

INSERT INTO LIVRO (id, titulo, autor, ano, exemplares)
VALUES (2, 'It: A Coisa', 'Stephen King', 1986, 2);

-- ex2

CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);
INSERT INTO LEITOR (id, nome)
VALUES (1, 'Thiago');

INSERT INTO LEITOR (id, nome)
VALUES (2, 'Pedro');

INSERT INTO LEITOR (id, nome)
VALUES (3, 'Rafael');

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
ADD COLUMN situacao TEXT NOT NULL DEFAULT 'nao informado';

-- ex4

CREATE TABLE EDITORA (
    id INTEGER PRIMARY KEY,
    nm TEXT
);
INSERT INTO EDITORA (id, nm)
VALUES (1, 'Editora Record');

ALTER TABLE EDITORA RENAME COLUMN nm TO nome;

-- ex5

CREATE TABLE RASCUNHO (
    id INTEGER PRIMARY KEY,
    texto TEXT
);
INSERT INTO RASCUNHO (id, texto)
VALUES (1, 'Primeiro rascunho');

INSERT INTO RASCUNHO (id, texto)
VALUES (2, 'Segundo rascunho');

INSERT INTO RASCUNHO (id, texto)
VALUES (3, 'Terceiro rascunho');

DELETE FROM RASCUNHO;

SELECT * FROM RASCUNHO;

DROP TABLE RASCUNHO;

-- ex6

CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    titulo TEXT
);

CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT
);

CREATE TABLE EMPRESTIMO (
    id_leitor INTEGER,
    id_livro INTEGER,
    data_saida DATE,
    data_volta DATE,
    PRIMARY KEY (id_leitor, id_livro, data_saida),
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id)
);

INSERT INTO LIVRO (id, titulo)
VALUES (1, 'Clube da Luta');

INSERT INTO LIVRO (id, titulo)
VALUES (2, 'It: A Coisa');

INSERT INTO LEITOR (id, nome)
VALUES (1, 'Thiago');

INSERT INTO LEITOR (id, nome)
VALUES (2, 'Pedro');

INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida, data_volta)
VALUES (1, 1, '2026-09-22', '2026-09-25');

INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida, data_volta)
VALUES (1, 1, '2026-09-23', NULL);