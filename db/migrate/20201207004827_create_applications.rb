class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.integer :house_id
      t.integer :applicant_feedback_id
      t.integer :owner_feedback_id
      t.integer :user_id

      t.timestamps
    end
  end
end
