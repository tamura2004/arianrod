class CreateItemBonus < ActiveRecord::Migration
  def change
    create_table :item_bonus do |t|
      t.references :item, index: true, foreign_key: true
      t.references :bonus, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
