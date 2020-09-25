class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :turns
      t.string :player1
      t.string :player2
      t.string :player3
      t.string :player4

      t.timestamps
    end
  end
end
