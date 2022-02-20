class CreateIslands < ActiveRecord::Migration[7.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :country
      t.string :description
      t.integer :price_per_day
      t.boolean :avilable
      t.integer :size

      t.timestamps
    end
  end
end
