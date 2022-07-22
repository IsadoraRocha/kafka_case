#language: pt

Funcionalidade: Consulta de mensagens em tópico do Kafka

  @teste
  Cenario: Consultar a publicação em mensagens no tópico do Kafka local
    Dado que realizo o POST de uma mensagem qualquer
    Entao valido que houve a publicação dessa mensagem no tópico do kafka local