class CreateKlassAbilities < ActiveRecord::Migration
  def change
    create_table :klass_abilities do |t|
      t.references :klass, index: true, foreign_key: true
      t.references :ability, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
