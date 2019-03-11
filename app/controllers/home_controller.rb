class HomeController < ApplicationController
  def index
    # if the user is logged in ? 
    # show tweets
    # if not - redirect to login or signup
    if current_user
      @tweets = current_user.tweets
    else
      render :login
    end
    # tweets from the user whos logged in Tweet.all
  end
end