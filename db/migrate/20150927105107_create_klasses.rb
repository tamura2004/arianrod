class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.boolean :is_main
      t.integer :initial_hp
      t.integer :initial_mp
      t.integer :level_up_hp
      t.integer :level_up_mp

      t.timestamps null: false
    end
  end
end
