class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    feedback = Feedback.create feedback_params
    # Needs a check for user_type
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
end
