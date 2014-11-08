class AddLatLongPonds < ActiveRecord::Migration
  def change
  	add_column :ponds, :lat, :float
  	add_column :ponds, :long, :float
  end
end
