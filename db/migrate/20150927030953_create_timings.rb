class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.string :label
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
