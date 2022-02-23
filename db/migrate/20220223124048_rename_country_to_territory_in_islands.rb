class RenameCountryToTerritoryInIslands < ActiveRecord::Migration[7.0]
  def change
    rename_column :islands, :country, :territory
  end
end
