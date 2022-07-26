Entao ('valido que houve a publicação dessa mensagem no tópico do kafka local') do
  @message = @kafka_test.read_message
  expect(@message).to be_truthy
end
