# Modelo lógico da barbearia

As quatro tabelas abaixo representam o modelo conceitual. `AGENDAMENTO` é a
associativa ternária: cada registro liga exatamente um cliente, um barbeiro e
um serviço, e guarda os dados que pertencem ao encontro.

```text
CLIENTE (
  _id_,
  nome,
  telefone,
  email
)

BARBEIRO (
  _id_,
  nome,
  especialidade,
  telefone
)

SERVICO (
  _id_,
  nome,
  descricao,
  preco
)

AGENDAMENTO (
  _id_,
  id_cliente -> CLIENTE.id,
  id_barbeiro -> BARBEIRO.id,
  id_servico -> SERVICO.id,
  data,
  horario,
  valor
)
```

Em `AGENDAMENTO`, `id_cliente`, `id_barbeiro` e `id_servico` são FKs para as
respectivas PKs. `data`, `horario` e `valor` são atributos próprios da
associativa, não atributos de CLIENTE, BARBEIRO ou SERVICO.
