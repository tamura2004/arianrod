class CreateMainKlasses < ActiveRecord::Migration
  def change
    create_table :main_klasses do |t|
      t.references :charactor, index: true, foreign_key: true
      t.references :klass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
