class SearchesController < ApplicationController
  def query    
  end

  def count_tweets
    query = params[:q]
    result = TwitterService.new.count_tweets(query)
    render json: { query: query, count: result}
  end
end
