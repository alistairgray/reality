class PropertiesController < ApplicationController
  def new
  end

  def create
  end

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find params[:id]
    @status = ['Just Posted', 'Holding Inspections', 'Seeking Applications', 'Pending Application', 'Leased'] # status options
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
