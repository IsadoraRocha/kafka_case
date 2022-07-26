Entao ('valido que houve o consumo dessa mensagem no tópico do kafka local em {float}') do |seg|
  # chama a funcao de consumo das mensagens do topico do kafka
  @message = @kafka_test.read_message(seg)

  # mostra a mensagem encontrada na leitura do topico
  puts "Mensagem encontrada: " + @message.last

  #valida que o retorno da chamada da funcao eh igual a true
  expect(@message.first).to be_truthy
end
