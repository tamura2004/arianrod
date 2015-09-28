class CreateCharactors < ActiveRecord::Migration
  def change
    create_table :charactors do |t|
      t.references :race, index: true, foreign_key: true
      t.string :name
      t.integer :age
      t.string :sex
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
