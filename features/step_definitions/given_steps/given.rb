Dado ('que realizo o POST de uma mensagem qualquer') do
  #realiza o POST da requisicao para gerar o evento
  @response = @post.post_message
  #informa qual mensagem foi enviada ao topico
  puts $message
  #valida se o response code eh igual a 200
  expect(@response.code).to eq(200)
end
