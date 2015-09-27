class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :label
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
