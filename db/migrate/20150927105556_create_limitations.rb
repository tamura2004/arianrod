class CreateLimitations < ActiveRecord::Migration
  def change
    create_table :limitations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
