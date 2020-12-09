class ApplicationsController < ApplicationController
  before_action :check_if_logged_in

  def new
    @application = Application.new
    @address = params[:param1]
  end

  def create
    application = Application.create property_id: params[:property_id], user_id: @current_user.id
    redirect_to application_path(application.id)
  end

  def index
  end

  def show
    @application = Application.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def application_params
    params.require(:application).permit(:property_id)
  end

end
