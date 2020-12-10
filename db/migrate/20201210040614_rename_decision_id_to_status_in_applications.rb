class RenameDecisionIdToStatusInApplications < ActiveRecord::Migration[5.2]
  def change
    rename_column :applications, :decision_id, :status
  end
end
