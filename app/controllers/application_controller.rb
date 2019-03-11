class ApplicationController < ActionController::Base
  helper_method :current_user # make it available in the views

  # shared between all controllers
  def current_user
    user = User.find_by(id: session[:user_id])
  end
end
