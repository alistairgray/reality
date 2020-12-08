class SessionController < ApplicationController
  def new
  end

  def create
    # raise 'hell'
    #1. check if the email address entered is actually in the users table
    user = User.find_by email: params[:email]
    #2. did we actually find a user for that email address or was it nil?
    # and if we did find the user, is the password correct?
    if user.present? && user.authenticate(params[:password])
      #credentials were correct - login successful
      session[:user_id] = user.id

      redirect_to root_path
    else
      #either the user was nil (no email match) or no password match
      flash[:error] = 'Invalid email or password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil # this logs out the user
    redirect_to login_path
  end
end
