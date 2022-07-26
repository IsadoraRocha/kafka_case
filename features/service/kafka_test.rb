class KafkaTest
  # require "kafka"
  def read_message
    #caminho do broker do kafka
    kafka = Kafka.new(["localhost:9092"])

    # ID do grupo de consumidores
    consumer = kafka.consumer(group_id: "my-consumer")

    #nome do topico a ser consumido
    consumer.subscribe("tcc_topic")

    #variavel responsavel por controle de tempo que o consumidor ficara em funcionamento
    time_start = Time.new

    #loop para leitura das mensagens do kakfa
    consumer.each_message do |message|

      #acessa o valor da mensagem do tópico
      message = message.value

      #printa no console a mensagem que foi consumida
      puts message

      #entra na condicao se a mensagem lida for igual a que for enviada na requisição
      if message.eql?($message)

        # o loop eh interrompido e retorna o valor true e a mensagem encontrada
        return true, message

      #entra na condicao se der o tempo limite de 3 segundos de funcionamento do considor
      elsif Time.new - time_start > 3

        #comando de parada do consumidor
        consumer.stop

        #retorna o valor false e a ultima mensagem que foi consumida
        return false, message
      end
    end
  end
end
