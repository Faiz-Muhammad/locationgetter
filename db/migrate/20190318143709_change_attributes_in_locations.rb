class ChangeAttributesInLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :latitude, :decimal
    change_column :locations, :longitude, :decimal
  end
end
