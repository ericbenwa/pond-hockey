class DeleteUserIdFromPondsTable < ActiveRecord::Migration
  def change
  	remove_column :ponds, :user_id
  end
end
