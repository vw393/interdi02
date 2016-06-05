class CreateSensorFamilies < ActiveRecord::Migration
  def up
    create_table :sensor_families do |t|
      t.string :name
      t.text :descr
      t.references :technology, index: true, foreign_key: true

      t.timestamps null: false
    end
    SensorFamily.create_translation_table! :name => :string, :descr => :text
  end

  def down
    drop_table :sensor_families
    SensorFamily.drop_translation_table!
  end

end
