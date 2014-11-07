class AddUserIdToPondsTable < ActiveRecord::Migration
  def change
  	add_column :ponds, :user_id, :integer
  end
end
