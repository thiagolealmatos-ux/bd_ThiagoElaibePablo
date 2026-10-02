# Ajustes da Aula 01

**Professor Diego**

Revisei a entrega do trio Thiago, Eliabe e Pablo preservando os exercícios
individuais. Também padronizei os nomes das pastas para
`exercicios/thiago`, `exercicios/eliabe` e `exercicios/pablo`.

No modelo da barbearia, a contradição estava em tratar AGENDAMENTO como uma
entidade na lista e, ao mesmo tempo, dizer que os atributos do agendamento
nasciam de outro relacionamento. A correção é manter quatro tabelas:
CLIENTE, BARBEIRO, SERVICO e AGENDAMENTO. AGENDAMENTO é a associativa ternária
que referencia as três primeiras por FKs. Por isso, `data`, `horario` e
`valor` aparecem uma única vez, como atributos próprios do encontro.

O arquivo lógico e os diagramas foram alinhados com essa decisão: as três
entidades participam diretamente da associação e as chaves estrangeiras ficam
explícitas.
