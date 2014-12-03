class RenameLatLongColumns < ActiveRecord::Migration
  def change
  	rename_column :ponds, :lat, :latitude
  	rename_column :ponds, :long, :longitude
  end
end
