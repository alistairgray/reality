class Application < ApplicationRecord

  # Feedback
  belongs_to :applicant_feedback, class_name: 'Feedback', optional: true
  belongs_to :owner_feedback, class_name: 'Feedback', optional: true
  belongs_to :applicant, class_name: 'User', foreign_key: 'user_id'
  belongs_to :property, optional: true

end
