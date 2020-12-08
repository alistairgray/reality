class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    application = Application.create application_params
    application.save
    redirect_to application_path(application.id)
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def application_params
    params.require(:application).permit(:user_id, :house_id)

end
