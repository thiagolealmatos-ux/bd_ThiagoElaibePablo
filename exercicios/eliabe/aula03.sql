-- Aula 03 - O dado entra, e o banco discute
-- Enunciado: exercicios/enunciados/aula03-dml.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador.
-- Comece CADA bloco com: PRAGMA foreign_keys = ON;
-- Os blocos rodam sobre o banco da secretaria ja carregado
-- Aula 03 - O dado entra, e o banco discute

-- ex1
PRAGMA foreign_keys = ON;
INSERT INTO aluno (id, nome, email)
VALUES (1, 'Maria Silva', 'maria@email.com');

-- ex2
PRAGMA foreign_keys = ON;
INSERT INTO matricula (id, aluno_id, curso_id)
VALUES (1, 99, 1);

-- ex3
PRAGMA foreign_keys = ON;
INSERT INTO curso (id, nome)
VALUES (1, 'Banco de Dados');
INSERT INTO matricula (id, aluno_id, curso_id)
VALUES (1, 1, 1);

-- ex4
PRAGMA foreign_keys = ON;
UPDATE aluno
SET email = 'maria.silva@email.com'
WHERE id = 1;

-- ex5
PRAGMA foreign_keys = ON;
DELETE FROM aluno
WHERE id = 1;

-- ex6
PRAGMA foreign_keys = ON;
DELETE FROM matricula
WHERE aluno_id = 1;
DELETE FROM aluno
WHERE id = 1;
