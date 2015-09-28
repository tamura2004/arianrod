class CreateRollTypes < ActiveRecord::Migration
  def change
    create_table :roll_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
