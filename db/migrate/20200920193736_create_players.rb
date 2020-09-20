class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.text :bio
      t.string :favorite
      t.integer :wins
      t.integer :loses

      t.timestamps
    end
  end
end
