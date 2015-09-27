class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.integer :level
      t.integer :weight
      t.references :equiped, index: true, foreign_key: true
      t.integer :price
      t.string :inspect_rate
      t.boolean :is_consumued
      t.references :timing, index: true, foreign_key: true
      t.text :comment

      t.timestamps null: false
    end
  end
end
