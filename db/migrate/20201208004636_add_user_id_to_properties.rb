class AddUserIdToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :user_id, :integer
  end
end
