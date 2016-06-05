class Manufacturer < ActiveRecord::Base
  has_many :sensors
end
