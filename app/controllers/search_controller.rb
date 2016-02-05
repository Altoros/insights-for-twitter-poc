class SearchController < ApplicationController
  def query
    @service_url = Figaro.env.twitter_insights_url
    @service_port = Figaro.env.twitter_insights_port
  end
end
