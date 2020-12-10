class AddDecisionIdToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :decision_id, :integer
  end
end
