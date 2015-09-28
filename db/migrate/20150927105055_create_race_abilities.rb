class CreateRaceAbilities < ActiveRecord::Migration
  def change
    create_table :race_abilities do |t|
      t.references :race, index: true, foreign_key: true
      t.references :ability, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
