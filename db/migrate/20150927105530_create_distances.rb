class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
