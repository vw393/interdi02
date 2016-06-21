class CreateCombinations < ActiveRecord::Migration

  def up
    create_table :combinations do |t|
      t.references :sensor, index: true, foreign_key: true
      t.references :board, index: true, foreign_key: true
      t.text :descr

      t.timestamps null: false
    end
    Combination.create_translation_table! :descr => :text
  end

  def down
    drop_table :combinations
    Combination.drop_translation_table!
  end

end
