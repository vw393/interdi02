class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.text :descr

      t.integer :doc_id
      t.string  :doc_type

      t.timestamps null: false
    end
  end
end
