class CreateBonuses < ActiveRecord::Migration
  def change
    create_table :bonuses do |t|
      t.references :bonus_type, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
