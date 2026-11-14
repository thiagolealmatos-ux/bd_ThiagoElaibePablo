-- Aula 04 - O banco responde
-- Enunciado: exercicios/enunciados/aula04-dql.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador.
-- Antes de cada SELECT, escreva a pergunta em comentario.
-- Hoje so se consulta: nao crie, nao insira, nao altere.
-- Os blocos rodam sobre o banco da secretaria ja carregado.
-- O ex9 fica em comentario (as tabelas do trio nao existem aqui).

-- ex1
SELECT nome, data_nascimento
FROM ALUNO;

-- ex2
SELECT nome
FROM ALUNO
WHERE id_turma = 1;

SELECT id, situacao
FROM INSCRICAO
WHERE situacao = 'ativa';

-- ex3
SELECT nome
FROM ALUNO
WHERE id_turma IS NULL;

-- ex4
SELECT id, situacao, id_modalidade
FROM INSCRICAO
WHERE situacao = 'ativa'
AND id_modalidade = 2;

SELECT nome
FROM ALUNO
WHERE id_turma IN (1, 2);

-- ex5
SELECT nome
FROM ALUNO
WHERE nome LIKE 'A%';

SELECT id, data
FROM INSCRICAO
WHERE data BETWEEN '2026-05-01' AND '2026-05-31';

-- ex6

SELECT nome
FROM ALUNO
ORDER BY nome;

SELECT nome
FROM ALUNO
ORDER BY nome
LIMIT 3;

-- ex7
-- a)R=
SELECT nome
FROM ALUNO
WHERE id_turma IS NULL;

-- O erro era verificar id_turma = 0 em vez de usar IS NULL.

-- b)R=
SELECT nome
FROM ALUNO
WHERE nome LIKE 'Ana%';
-- O erro era usar = em vez de LIKE para procurar um padrão.

-- c)R=
SELECT id, situacao, id_modalidade
FROM INSCRICAO
WHERE (situacao = 'ativa' OR situacao = 'trancada')
AND id_modalidade = 2;
-- O erro era não agrupar as condições com parênteses.

-- ex8
1ª consulta:

Pergunta: Quais alunos não estão vinculados a nenhuma turma?
Quantidade esperada: Depende dos dados do banco.

2ª consulta:

Pergunta: Quais alunos possuem “Silva” no nome, organizados em ordem alfabética?
Quantidade esperada: Depende dos dados do banco.

3ª consulta:

Pergunta: Quais inscrições estão ativas e possuem data a partir de 01/09/2026?
Quantidade esperada: Depende dos dados do banco.

-- ex9

-- Quais clientes não informaram o email?
SELECT nome
FROM CLIENTE
WHERE email IS NULL;

-- Quais serviços possuem nomes que começam com a letra C?
SELECT nome, preco
FROM SERVICO
WHERE nome LIKE 'C%';

-- Quais agendamentos estão organizados por data e horário?
SELECT data, horario, valor
FROM AGENDAMENTO
ORDER BY data, horario;