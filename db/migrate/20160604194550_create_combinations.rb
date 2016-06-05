class CreateCombinations < ActiveRecord::Migration
  def change
    create_table :combinations do |t|
      t.references :sensor, index: true, foreign_key: true
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
