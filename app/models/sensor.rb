class Sensor < ActiveRecord::Base
  
  has_many :combinations
  has_many :pictures, as: :pic
  has_many :attachments, as: :doc

  belongs_to :manufacturer
  belongs_to :sensor_family

  translates :name, :descr

end
