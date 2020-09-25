class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :pokemon
      t.integer :attack
      t.integer :defense
      t.integer :speed
      t.float :luck
      t.integer :experience, default: 0
      t.integer :battlepoints, default: 0

      t.timestamps
    end
  end
end
