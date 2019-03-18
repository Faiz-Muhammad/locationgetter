class ChangeAttributesToLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :latitude, :double, precision: 15
    change_column :locations, :longitude, :double, precision: 15
  end
end
