class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.text :descr

      t.integer :pic_id
      t.string  :pic_type

      t.timestamps null: false
    end
  end
end
