class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :address
      t.integer :cost
      t.boolean :live
      t.integer :bedrooms
      t.integer :status
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
