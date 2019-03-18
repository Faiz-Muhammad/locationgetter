class ChangeColumnsIntoLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :latitude, :decimal(15,10)
    change_column :locations, :longitude, :decimal(15,10)
  end
end
