class PostService
  include HTTParty
  base_uri CONFIG['url']
  # debug_output $stdout

  # variavel global que abriga mensagens criadas de forma aleatoria
  # para serem usadas no envio da requisicao POST
  $message = Faker::ChuckNorris.fact

  def initialize
    #criacao do header da requisicao
    @header = {"Content-Type" => "application/json"}
  end

  #criacao do corpo da mensagem
  def create_body
    return {:msg => $message}.to_json
  end

  #funcao do envio da requicao POST
  def post_message
    self.class.post('/publish', body: create_body, headers: @header)
  end
end