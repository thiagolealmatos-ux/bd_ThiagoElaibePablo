-- Projeto - 01 - DDL
-- Dono: Thiago Leal de Matos
--
-- Cria as tabelas do caso do trio, vazias.
-- Roda num banco em branco: nada pode depender de tabela criada fora daqui.
-- Minimo 4 tabelas, e uma associativa com atributo proprio.

CREATE TABLE CLIENTE (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE BARBEIRO (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    especialidade TEXT,
    telefone TEXT
);

CREATE TABLE SERVICO (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    descricao TEXT,
    preco REAL
);

CREATE TABLE AGENDAMENTO (
    id INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    id_barbeiro INTEGER,
    id_servico INTEGER,
    data TEXT,
    horario TEXT,
    valor REAL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id),
    FOREIGN KEY (id_barbeiro) REFERENCES BARBEIRO(id),
    FOREIGN KEY (id_servico) REFERENCES SERVICO(id)
);