# O caso do trio

**Integrantes:**
Pablo, Thiago e Elaibe
**Turma:**
1-C
---

## Em uma frase

> A barbearia precisa saber quais clientes agendaram quais serviços com quais barbeiros, em que data e horário, e qual foi o valor cobrado.

## As entidades

Cada substantivo da frase que tem vida própria e que você precisa guardar mais
de um. Liste aqui, um por linha, com dois ou três atributos de cada:

- CLIENTE — nome, telefone, email
- BARBEIRO — nome, especialidade, telefone
- SERVICO — nome, descricao, preco

## A associativa ternária com atributos próprios

Quais entidades se cruzam e quais dados nascem **do encontro** entre elas (e
não de nenhum dos lados)?

- CLIENTE, BARBEIRO e SERVICO se relacionam por meio de AGENDAMENTO. Cada
  agendamento referencia um cliente, um barbeiro e um serviço; o encontro gera
  `data`, `horario` e `valor`, que são atributos próprios de AGENDAMENTO.
