class PostService
  include HTTParty
  base_uri CONFIG['url']
  debug_output $stdout

  def initialize
    @body = {:msg => Faker::ChuckNorris.fact}.to_json
    @header = {"Content-Type" => "application/json"}
  end

  def post_message
    self.class.post('/publish', body: @body, headers: @header)
  end
end