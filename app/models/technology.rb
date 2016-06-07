class Technology < ActiveRecord::Base

  has_many :sensor_families

  has_many :sensors, :through => :sensor_families 

end
