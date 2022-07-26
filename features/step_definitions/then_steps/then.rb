Entao ('valido que houve a publicação dessa mensagem no tópico do kafka local') do
  @message = @kafka_test.read_message
  puts "Mensagem encontrada: " + @message.last
  expect(@message.first).to be_truthy
end
