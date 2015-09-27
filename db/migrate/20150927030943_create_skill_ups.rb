class CreateSkillUps < ActiveRecord::Migration
  def change
    create_table :skill_ups do |t|
      t.references :level_up, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
