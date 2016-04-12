class CreateChessPieces < ActiveRecord::Migration
  def change
    create_table :chess_pieces do |t|
      t.string :pieceType
      t.binary :pieceImage
      t.integer :initialRow
      t.integer :initialCol

      t.timestamps null: false
    end
  end
end
