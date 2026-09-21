-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.-- ex1


-- 2. Elaibe — exercicios/Elaibe/aula02.sql
Aqui mudamos nomes, valores e algumas formas de escrever os comandos: -- Aula 02 - Criando as tabelas

-- ex1

CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    ano INTEGER,
    exemplares INTEGER DEFAULT 1 NOT NULL
);

INSERT INTO LIVRO
VALUES (10, '1984', 'George Orwell', 1949, 4);

INSERT INTO LIVRO
VALUES (20, 'Harry Potter', 'J. K. Rowling', 1997, 5);


-- ex2

CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

INSERT INTO LEITOR VALUES (10, 'Carlos');
INSERT INTO LEITOR VALUES (20, 'Marcos');
INSERT INTO LEITOR VALUES (30, 'Ana');

ALTER TABLE LEITOR
ADD COLUMN telefone TEXT;

SELECT id, nome, telefone
FROM LEITOR;


-- ex3

CREATE TABLE EMPRESTIMO (
    id INTEGER PRIMARY KEY,
    id_livro INTEGER NOT NULL
);

INSERT INTO EMPRESTIMO
VALUES (100, 10);

INSERT INTO EMPRESTIMO
VALUES (200, 20);

ALTER TABLE EMPRESTIMO
ADD COLUMN situacao TEXT NOT NULL DEFAULT 'aberto';


-- ex4

CREATE TABLE EDITORA (
    id INTEGER PRIMARY KEY,
    nm TEXT
);

INSERT INTO EDITORA
VALUES (5, 'Companhia das Letras');

ALTER TABLE EDITORA
RENAME COLUMN nm TO nome;


-- ex5

CREATE TABLE RASCUNHO (
    id INTEGER PRIMARY KEY,
    texto TEXT
);

INSERT INTO RASCUNHO VALUES (1, 'Teste A');
INSERT INTO RASCUNHO VALUES (2, 'Teste B');
INSERT INTO RASCUNHO VALUES (3, 'Teste C');

DELETE FROM RASCUNHO;

SELECT *
FROM RASCUNHO;

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

INSERT INTO LIVRO VALUES (1, 'A Revolução dos Bichos');
INSERT INTO LIVRO VALUES (2, 'O Pequeno Príncipe');

INSERT INTO LEITOR VALUES (1, 'Carlos');
INSERT INTO LEITOR VALUES (2, 'Marcos');

INSERT INTO EMPRESTIMO
VALUES (1, 1, '2026-09-20', NULL);

INSERT INTO EMPRESTIMO
VALUES (2, 1, '2026-09-20', NULL);

-- Deve ser rejeitado porque já existe o mesmo
-- leitor, livro e data.
-- INSERT INTO EMPRESTIMO
-- VALUES (1, 1, '2026-09-20', NULL);
