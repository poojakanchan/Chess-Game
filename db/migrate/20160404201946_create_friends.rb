class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :playerId1
      t.integer :playerId2

      t.timestamps null: false
    end
  end
end
