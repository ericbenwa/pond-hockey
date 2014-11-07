class AddUserRefToPonds < ActiveRecord::Migration
  def change
    add_reference :ponds, :user, index: true
  end
end
