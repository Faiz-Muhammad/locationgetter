class ChangeColumnsIntoLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :latitude, :double
    change_column :locations, :longitude, :double
  end
end
