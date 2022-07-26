class PostService
  include HTTParty
  base_uri CONFIG['url']
  debug_output $stdout
  $message = Faker::ChuckNorris.fact

  def initialize
    @header = {"Content-Type" => "application/json"}
  end

  def create_body
    return {:msg => $message}.to_json
  end

  def post_message
    self.class.post('/publish', body: create_body, headers: @header)
  end
end