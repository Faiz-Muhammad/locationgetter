class ChangeColumnsIntoLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :latitude, :float, :limit => 25
    change_column :locations, :longitude, :float, :limit => 25
  end
end
