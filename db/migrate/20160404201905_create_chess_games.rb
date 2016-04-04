class CreateChessGames < ActiveRecord::Migration
  def change
    create_table :chess_games do |t|
      t.string :gameType
      t.integer :playerWhiteId
      t.integer :playerBlackId
      t.string :accessCode
      t.boolean :publicMatch

      t.timestamps null: false
    end
  end
end
