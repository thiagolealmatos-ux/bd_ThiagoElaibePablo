-- Projeto - 02 - Carga
-- Dono: Eliabe
--
-- Enche as tabelas criadas pelo 01-ddl.sql.
-- Ordem importa: quem tem chave estrangeira entra depois de quem ela aponta.

INSERT INTO CLIENTE VALUES
(1, 'Lucas Silva', '(45) 99911-2233', 'lucas@email.com'),
(2, 'Pedro Santos', '(45) 99933-4455', 'pedro@email.com');

INSERT INTO BARBEIRO VALUES
(1, 'Thiago Leal', 'Corte Urubu', '(45) 98811-2233'),
(2, 'Pablo Henrique', 'Barba falhada', '(45) 98822-3344');

INSERT INTO SERVICO VALUES
(1, 'Corte Urubu', 'Corte classico', 40.00),
(2, 'Barba falhada', Barba com navalha', 35.00);

INSERT INTO AGENDAMENTO VALUES
(1, 1, 1, 1, '2026-11-16', '09:00', 40.00),
(2, 2, 2, 2, '2026-11-16', '10:00', 35.00);

