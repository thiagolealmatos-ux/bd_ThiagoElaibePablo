-- Aula 04 - O banco responde
-- Enunciado: exercicios/enunciados/aula04-dql.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador.
-- Antes de cada SELECT, escreva a pergunta em comentario.
-- Hoje so se consulta: nao crie, nao insira, nao altere.
-- Os blocos rodam sobre o banco da secretaria ja carregado.
-- O ex9 fica em comentario (as tabelas do trio nao existem -- Aula 04 - O banco responde

-- ex1
-- Pergunta: Quais alunos estão cadastrados?
SELECT id, nome, email
FROM aluno;

-- ex2
-- Pergunta: Qual é o aluno com id 1?
SELECT id, nome, email
FROM aluno
WHERE id = 1;

-- ex3
-- Pergunta: Quais alunos estão cadastrados, em ordem alfabética?
SELECT id, nome, email
FROM aluno
ORDER BY nome ASC;

-- ex4
-- Pergunta: Quais alunos têm Silva no nome?
SELECT id, nome, email
FROM aluno
WHERE nome LIKE '%Silva%';

-- ex5
-- Pergunta: Quais alunos estão matriculados em qual curso?
SELECT aluno.nome AS aluno, curso.nome AS curso
FROM matricula
JOIN aluno ON matricula.aluno_id = aluno.id
JOIN curso ON matricula.curso_id = curso.id
ORDER BY aluno.nome, curso.nome;

-- ex6
-- Pergunta: Quantos alunos tem em cada curso?
SELECT curso.nome AS curso, COUNT(*) AS total_alunos
FROM matricula
JOIN curso ON matricula.curso_id = curso.id
GROUP BY curso.nome
ORDER BY total_alunos DESC;

-- ex7
-- Pergunta: Quais matrículas são dos cursos 1 ou 2 e têm id entre 1 e 10?
SELECT id, aluno_id, curso_id
FROM matricula
WHERE curso_id IN (1, 2)
  AND id BETWEEN 1 AND 10;

-- ex8
-- Pergunta: Quais alunos não têm nenhuma matrícula?
SELECT aluno.id, aluno.nome, aluno.email
FROM aluno
LEFT JOIN matricula ON matricula.aluno_id = aluno.id
WHERE matricula.id IS NULL;

-- ex9
-- Pergunta: Quais integrantes do trio estão em qual projeto?
-- SELECT trio.nome AS integrante, projeto.nome AS projeto
-- FROM trio_projeto
-- JOIN trio ON trio_projeto.trio_id = trio.id
-- JOIN projeto ON trio_projeto.projeto_id = projeto.id;
