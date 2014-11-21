class ConnectCommentsToUsersAndPondsTable < ActiveRecord::Migration
  def change
  	add_reference :comments, :user, index: true
  	add_reference :comments, :pond, index: true
  end
end
