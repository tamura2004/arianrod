class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.references :timing, index: true, foreign_key: true
      t.references :roll_type, index: true, foreign_key: true
      t.references :target, index: true, foreign_key: true
      t.references :range, index: true, foreign_key: true
      t.integer :cost
      t.integer :sl_limit
      t.text :effect
      t.references :critical, index: true, foreign_key: true
      t.boolean :is_magic
      t.references :klass, index: true, foreign_key: true
      t.references :race, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
