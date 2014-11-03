class AddPondFields < ActiveRecord::Migration
  def change
  	add_column :ponds, :street, :string
  	add_column :ponds, :city, :string
  	add_column :ponds, :state, :string
  end
end
