class TwitterService
  require 'net/http'

  def initialize
    @service_url = Figaro.env.twitter_insights_url
    @service_port = Figaro.env.twitter_insights_port
    @formed_url = @service_url + ":" + @service_port + "/api/v1/messages"
  end

  def count_tweets(term)
    count_url = @formed_url + "/count?q=#{term}"
    response = `curl #{count_url}`
    parsed = JSON.parse(response)
    parsed['search']['results']
  end
end
