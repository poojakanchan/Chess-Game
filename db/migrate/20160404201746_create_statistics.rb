class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :wins
      t.integer :loses
      t.integer :playerId

      t.timestamps null: false
    end
  end
end
