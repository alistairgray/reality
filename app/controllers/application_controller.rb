class ApplicationController < ActionController::Base
    # This will cause fetch user to run before anything
  before_action :fetch_user

  def fetch_user

    # check if the user_id in the session hash is the ID of a real user
    # in our users table: if it is, get object for that user and save it into
    # @current_user which every controller can use; if it's not a real ID,
    # consider it invalid and delete the session. This will prevent weird
    # errors when re-seeding our DB
    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end
    session[:user_id] = nil unless @current_user.present?
  end #fetch_user

  # Check if user is logged in before accessing relevant pages
  def check_if_logged_in
    # if the current request is coming from a user who is not logged in
    # redirect them to the login page
    # any controller actions that should only be available to
    # logged in users will need to run this method before performing
    unless @current_user.present?
      flash[:error] = 'You must be logged in to perform that action'
      redirect_to login_path
    end # unless
  end # check_if_logged_in
end
