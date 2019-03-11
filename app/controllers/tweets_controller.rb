class TweetsController < ApplicationController
  def create
    tweet = Tweet.new
    tweet.user_id = params[:user_id]
    tweet.content = params[:content]
    tweet.save
    redirect_to '/'
  end
end