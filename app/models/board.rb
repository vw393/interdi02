class Board < ActiveRecord::Base


  has_many :combinations
  has_many :sensord, through: :combinations

  has_many :attachments, as: :doc

  translates :name, :descr

end
