class CreateClassspells < ActiveRecord::Migration[6.0]
  def change
    create_table :classspells do |t|
      t.integer :characterclass_id
      t.integer :spell_id
    end
  end
end
