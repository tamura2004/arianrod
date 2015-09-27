class CreateRollTypes < ActiveRecord::Migration
  def change
    create_table :roll_types do |t|
      t.string :label
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
