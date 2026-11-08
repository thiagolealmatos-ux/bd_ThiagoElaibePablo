-- Aula 04 - O banco responde
-- Enunciado: exercicios/enunciados/aula04-dql.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador.
-- Antes de cada SELECT, escreva a pergunta em comentario.
-- Hoje so se consulta: nao crie, nao insira, nao altere.
-- Os blocos rodam sobre o banco da secretaria ja carregado.
-- O ex9 fica em comentario (as tabelas do trio nao existem aqui).

-- ex1
-- Pergunta: quais são os nomes e as datas de nascimento dos alunos?
SELECT nome, nascimento
FROM ALUNO;


-- ex2
-- Pergunta: quais são os nomes dos alunos da turma 1?
SELECT nome
FROM ALUNO
WHERE id_turma = 1;

-- Pergunta: quais são as inscrições com situação ativa?
SELECT *
FROM INSCRICAO
WHERE situacao = 'ativa';


-- ex3
-- Pergunta: quais alunos estão sem turma?
SELECT nome
FROM ALUNO
WHERE id_turma IS NULL;

-- Consulta errada:
-- SELECT nome FROM ALUNO WHERE id_turma = NULL;

-- Erro: NULL não pode ser comparado com =.
-- Deve ser utilizado IS NULL.


-- ex4
-- Pergunta: quais são as inscrições ativas da modalidade 2?
SELECT *
FROM INSCRICAO
WHERE situacao = 'ativa'
AND id_modalidade = 2;

-- Pergunta: quais são os alunos das turmas 1 ou 2?
SELECT nome
FROM ALUNO
WHERE id_turma IN (1, 2);


-- ex5
-- Pergunta: quais alunos possuem nomes que começam com A?
SELECT nome
FROM ALUNO
WHERE nome LIKE 'A%';

-- Pergunta: quais inscrições foram realizadas entre 01/05/2026 e 31/05/2026?
-- Espero encontrar: ____ linhas.
SELECT *
FROM INSCRICAO
WHERE data BETWEEN '2026-05-01' AND '2026-05-31';

-- Resultado: ____ linhas.
-- Acertou a previsão? ____.


-- ex6
-- Pergunta: quais são os alunos em ordem alfabética?
SELECT *
FROM ALUNO
ORDER BY nome ASC;

-- Pergunta: quais são os três primeiros alunos em ordem alfabética?
SELECT *
FROM ALUNO
ORDER BY nome ASC
LIMIT 3;


-- ex7

-- a) Pergunta: quais alunos estão sem turma?
-- Consulta errada:
-- SELECT nome FROM ALUNO WHERE id_turma = 0;

-- Consulta corrigida:
-- Erro: foi utilizado 0 em vez de NULL.
SELECT nome
FROM ALUNO
WHERE id_turma IS NULL;


-- b) Pergunta: quais nomes começam com Ana?
-- Consulta errada:
-- SELECT nome FROM ALUNO WHERE nome = 'Ana%';

-- Consulta corrigida:
-- Erro: foi utilizado = em vez de LIKE.
SELECT nome
FROM ALUNO
WHERE nome LIKE 'Ana%';


-- c) Pergunta: quais são as inscrições ativas ou trancadas da modalidade 2?
-- Consulta errada:
-- SELECT * FROM INSCRICAO
-- WHERE situacao = 'ativa'
-- OR situacao = 'trancada'
-- AND id_modalidade = 2;

-- Consulta corrigida:
-- Erro: faltaram parênteses para agrupar as condições OR.
SELECT *
FROM INSCRICAO
WHERE (situacao = 'ativa' OR situacao = 'trancada')
AND id_modalidade = 2;


-- ex8

-- Pergunta: quais alunos estão sem turma?
-- Espero encontrar: ____ linhas.
SELECT nome
FROM ALUNO
WHERE id_turma IS NULL;

-- Resultado: ____ linhas.
-- Acertou a previsão? ____.


-- Pergunta: quais alunos possuem Silva no nome, em ordem alfabética?
-- Espero encontrar: ____ linhas.
SELECT nome
FROM ALUNO
WHERE nome LIKE '%Silva%'
ORDER BY nome;

-- Resultado: ____ linhas.
-- Acertou a previsão? ____.


-- Pergunta: quais inscrições estão ativas e foram realizadas
-- a partir de 01/09/2026?
-- Espero encontrar: ____ linhas.
SELECT *
FROM INSCRICAO
WHERE situacao = 'ativa'
AND data >= '2026-09-01';

-- Resultado: ____ linhas.
-- Acertou a previsão? ____.


-- ex9

-- Pergunta 1: quais materiais estão disponíveis?
-- SELECT * FROM ITENS WHERE status = 'disponivel';

-- Pergunta 2: quais materiais estão cadastrados em ordem alfabética?
-- SELECT * FROM ITENS ORDER BY nome;

-- Pergunta 3: quais empréstimos estão pendentes?
-- SELECT * FROM EMPRESTIMOS WHERE status = 'pendente';
```