class CreateGameSaves < ActiveRecord::Migration
  def change
    create_table :game_saves do |t|
      t.integer :gameId
      t.integer :playerId
      t.integer :pieceId
      t.integer :row
      t.integer :col

      t.timestamps null: false
    end
  end
end
