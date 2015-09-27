class CreateSkillBonus < ActiveRecord::Migration
  def change
    create_table :skill_bonus do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :bonus, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
