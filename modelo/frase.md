# O caso do trio

**Integrantes:**

**Turma:**

---

## Em uma frase

> A barbearia precisa saber quais clientes agendaram quais serviços com quais barbeiros, em que data e horário, e qual foi o valor cobrado.
>
> Exemplo: a secretaria precisa saber qual aluno está inscrito em qual
> modalidade esportiva, desde quando, e se a inscrição ainda vale.

## As entidades

Cada substantivo da frase que tem vida própria e que você precisa guardar mais
de um. Liste aqui, um por linha, com dois ou três atributos de cada:

- CLIENTE — nome, telefone, email
- BARBEIRO — nome, especialidade, telefone
- SERVICO — nome, descricao, preco
- AGENDAMENTO — data, horario, valor

## O N:N com atributo próprio

Qual é o par de entidades que se cruza muitos-para-muitos, e qual dado nasce
**do encontro** entre elas (e não de nenhum dos dois lados)?

- CLIENTE e SERVICO — o encontro gera data, horario e valor.
