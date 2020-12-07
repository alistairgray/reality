class Application < ApplicationRecord

  # Feedback
  belongs_to :applicant_feedback, class_name: 'Feedback'
  belongs_to :owner_feedback, class_name: 'Feedback'
  belongs_to :applicant, class_name: 'User', foreign_key: 'user_id'

end
