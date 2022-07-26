#language: pt

@teste
Funcionalidade: Consulta de mensagens em tópico do Kafka

  Esquema do Cenario: Consultar a publicação em mensagens no tópico do Kafka local com sucesso
    Dado que realizo o POST de uma mensagem qualquer
    Entao valido que houve o consumo dessa mensagem no tópico do kafka local em <seg>

    Exemplos:
      | seg    |
      | 20.0   |
      | 0.0001 |
