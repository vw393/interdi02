class Combination < ActiveRecord::Base

  belongs_to :sensor
  belongs_to :board

  translates :descr

end
