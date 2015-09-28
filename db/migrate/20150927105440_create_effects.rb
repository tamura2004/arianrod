class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.references :timing, index: true, foreign_key: true
      t.references :roll_type, index: true, foreign_key: true
      t.references :target, index: true, foreign_key: true
      t.references :distance, index: true, foreign_key: true
      t.references :limitation, index: true, foreign_key: true
      t.references :bonus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
