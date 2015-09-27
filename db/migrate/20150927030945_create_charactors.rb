class CreateCharactors < ActiveRecord::Migration
  def change
    create_table :charactors do |t|

      t.timestamps null: false
    end
  end
end
