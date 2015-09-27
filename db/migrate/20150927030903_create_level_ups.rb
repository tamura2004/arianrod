class CreateLevelUps < ActiveRecord::Migration
  def change
    create_table :level_ups do |t|
      t.references :charactor, index: true, foreign_key: true
      t.integer :level

      t.timestamps null: false
    end
  end
end
