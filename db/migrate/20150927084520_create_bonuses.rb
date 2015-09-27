class CreateBonuses < ActiveRecord::Migration
  def change
    create_table :bonuses do |t|
      t.string :label
      t.string :name

      t.timestamps null: false
    end
  end
end
