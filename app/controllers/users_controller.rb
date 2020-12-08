class UsersController < ApplicationController
  before_action :check_if_logged_in, only: [:profile, :edit, :update]

  def new
    @user = User.new
  end # new

  def create
    @user = User.create
    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end # if persisted
  end # create

  def index
  end

  def show
    @user = User.find params[:id]
  end

  def profile

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end # user_params

end
