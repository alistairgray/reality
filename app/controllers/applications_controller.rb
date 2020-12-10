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
    @applications = Application.all
    @properties = Property.all

  end

  def show
    @application = Application.find params[:id]
    # raise 'hell'
  end

  def edit
    @application = Application.find params[:id]
  end

  def update
    application = Application.find params[:id]

    application.update status: params[:status]
    application.save
    raise 'hell'
    redirect_to application_path(application.id)
  end

  def destroy
  end

  private

  def application_params
    params.require(:application).permit(:property_id)
  end

end
