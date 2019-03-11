class UsersController < ApplicationController

  def sign_up
  end

  def create
    user = User.new
    user.firstname = params[:firstname]
    user.lastname = params[:lastname]
    user.email = params[:email]
    user.password = params[:password]
    user.save!
    redirect_to '/'
  end

  def login
  end

  def sign_in
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render :login
    end
  end

end