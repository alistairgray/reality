class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :application_id
      t.integer :interaction
      t.integer :ease
      t.integer :communication

      t.timestamps
    end
  end
end
