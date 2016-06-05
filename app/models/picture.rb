class Picture < ActiveRecord::Base

  belongs_to :pic, polymorphic: true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
