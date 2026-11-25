
-- Projeto - 03 - Consultas
-- Dono: Pablo
--
-- As perguntas que o banco responde.
-- Antes de cada consulta, escreva em comentario a pergunta em portugues.

-- 1. Quais são todos os clientes cadastrados?
SELECT * FROM CLIENTE;

-- 2. Quais são os nomes e telefones dos barbeiros?
SELECT nome, telefone
FROM BARBEIRO;

-- 3. Quais serviços a barbearia oferece e seus preços?
SELECT nome, preco
FROM SERVICO;

-- 4. Quais são os agendamentos cadastrados?
SELECT * FROM AGENDAMENTO;

-- 5. Quais clientes possuem agendamentos?
SELECT CLIENTE.nome, AGENDAMENTO.data, AGENDAMENTO.horario
FROM CLIENTE
INNER JOIN AGENDAMENTO
ON CLIENTE.id = AGENDAMENTO.id_cliente;

-- 6. Qual barbeiro atende cada agendamento?
SELECT BARBEIRO.nome, AGENDAMENTO.data, AGENDAMENTO.horario
FROM BARBEIRO
INNER JOIN AGENDAMENTO
ON BARBEIRO.id = AGENDAMENTO.id_barbeiro;

-- 7. Qual serviço foi marcado em cada agendamento?
SELECT SERVICO.nome, AGENDAMENTO.data, AGENDAMENTO.horario
FROM SERVICO
INNER JOIN AGENDAMENTO
ON SERVICO.id = AGENDAMENTO.id_servico;

-- 8. Quais clientes agendaram, com qual barbeiro e qual serviço?
SELECT
    CLIENTE.nome AS cliente,
    BARBEIRO.nome AS barbeiro,
    SERVICO.nome AS servico,
    AGENDAMENTO.data,
    AGENDAMENTO.horario
FROM AGENDAMENTO
INNER JOIN CLIENTE
ON AGENDAMENTO.id_cliente = CLIENTE.id
INNER JOIN BARBEIRO
ON AGENDAMENTO.id_barbeiro = BARBEIRO.id
INNER JOIN SERVICO
ON AGENDAMENTO.id_servico = SERVICO.id;

-- 9. Quais agendamentos possuem valor maior que 35 reais?
SELECT *
FROM AGENDAMENTO
WHERE valor > 35;

-- 10. Qual é o valor total dos agendamentos?
SELECT SUM(valor) AS valor_total
FROM AGENDAMENTO;

-- 11. Quantos agendamentos foram realizados?
SELECT COUNT(*) AS quantidade_agendamentos
FROM AGENDAMENTO;

-- 12. Qual é o serviço mais caro?
SELECT nome, preco
FROM SERVICO
ORDER BY preco DESC
LIMIT 1;
