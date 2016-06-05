class CreateBoards < ActiveRecord::Migration

  def up
    create_table :boards do |t|
      t.string :pn
      t.string :name
      t.text :descr

      t.timestamps null: false
    end
    Board.create_translation_table! :name => :string, :descr => :text
  end

  def down
    drop_table :boards
    Board.drop_translation_table!
  end

end
