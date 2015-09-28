class CreateCriticals < ActiveRecord::Migration
  def change
    create_table :criticals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
