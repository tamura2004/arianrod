class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :label
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
