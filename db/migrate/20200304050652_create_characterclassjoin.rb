class CreateCharacterclassjoin < ActiveRecord::Migration[6.0]
  def change
    create_table :characterclassjoins do |t|
      t.integer :characterclass_id
      t.integer :character_id
    end
  end
end
