class RenameHouseIdToPropertyIdInApplications < ActiveRecord::Migration[5.2]
  def change
    rename_column :applications, :house_id, :property_id
  end
end
