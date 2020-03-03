class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :dm_id

      t.timestamps
    end
  end
end
