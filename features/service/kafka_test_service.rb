class KafkaTestService
  include HTTParty
  base_uri CONFIG['url']

  def post_message
    self.class.post('/publish', body: {msg: Faker::ChuckNorris.fact})
  end
end