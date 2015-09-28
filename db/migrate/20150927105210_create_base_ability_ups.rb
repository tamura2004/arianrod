class CreateBaseAbilityUps < ActiveRecord::Migration
  def change
    create_table :base_ability_ups do |t|
      t.references :level_up, index: true, foreign_key: true
      t.references :ability, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
