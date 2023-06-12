class AddConfirmedToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :confirmed, :boolean, default: false
  end
end
