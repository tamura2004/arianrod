class CreateCharactorItems < ActiveRecord::Migration
  def change
    create_table :charactor_items do |t|
      t.references :charactor, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
