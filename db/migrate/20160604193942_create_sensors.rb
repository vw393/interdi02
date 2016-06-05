class CreateSensors < ActiveRecord::Migration

  def up
    create_table :sensors do |t|
      t.string :pn
      t.string :name
      t.text :descr
      t.string :size
      t.references :manufacturer, index: true, foreign_key: true
      t.references :sensor_family, index: true, foreign_key: true

      t.timestamps null: false
    end
    Sensor.create_translation_table! :name => :string, :descr => :text
  end

  def down
    drop_table :sensors
    Sensor.drop_translation_table!
  end

end
