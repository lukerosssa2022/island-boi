class AddPhotoUrlAndContinentsToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :photo_url, :string
    add_column :islands, :continent, :string
  end
end
