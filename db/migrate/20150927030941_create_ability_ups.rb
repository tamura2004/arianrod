class CreateAbilityUps < ActiveRecord::Migration
  def change
    create_table :ability_ups do |t|
      t.references :level_up, index: true, foreign_key: true
      t.references :ability, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
