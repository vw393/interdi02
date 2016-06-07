class SensorFamily < ActiveRecord::Base

  has_many :sensors

  belongs_to :technology

  translates :name, :descr

  scope :resistive,  -> { where(sensor_family_id: 1) }
  scope :capacitive, -> { where(sensor_family_id: 2) }
  scope :saw,        -> { where(sensor_family_id: 3) }
  scope :infrared,   -> { where(sensor_family_id: 4) }

end
