class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :class_of_c
      t.string :background
      t.string :alignment
      t.string :description
      t.integer :player_id
      t.integer :party_id
      t.integer :alignment_id
      t.integer :background_id
      t.integer :race_id

      t.timestamps
    end
  end
end
