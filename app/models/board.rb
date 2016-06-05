class Board < ActiveRecord::Base

  has_many :combinations
  has_many :pictures, as: :pic
  has_many :attachments, as: :doc

  translates :name, :descr

end
