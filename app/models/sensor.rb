class Sensor < ActiveRecord::Base
  
  has_many :combinations

  has_many :attachments, as: :doc, :dependent => :destroy

  belongs_to :manufacturer
  belongs_to :sensor_family

  translates :name, :descr

  accepts_nested_attributes_for :attachments

end
