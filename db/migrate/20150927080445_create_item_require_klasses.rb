class CreateItemRequireKlasses < ActiveRecord::Migration
  def change
    create_table :item_require_klasses do |t|
      t.references :item, index: true, foreign_key: true
      t.references :klass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
