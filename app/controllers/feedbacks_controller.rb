class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    # raise 'hell'
    feedback = Feedback.create(
      application_id: params[:feedback][:application_id],
      ease: params[:feedback][:ease], communication: params[:feedback][:communication], interaction: params[:feedback][:interaction]
    )
    # now that we have saved the feedback we have to save its ID to the appropriate field in the corresponding application: applicant_feedback_id or owner_feedback_id
    application = Application.find params[:feedback][:application_id]
    if @current_user.user_type == 'owner'
      application.update applicant_feedback_id: feedback.id
    else
      # if not the owner, it must be the applicant
      application.update owner_feedback_id: feedback.id
    end # user_type conditional
    redirect_to application_path(application.id)
  end # create

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
