class Attachment < ActiveRecord::Base

  belongs_to :doc, polymorphic: true

  has_attached_file :document,
    :path => ":rails_root/public/documents/:id/:filename",
    :url  => "/documents/:id/:filename"
  validates_attachment :document, content_type: { content_type: [ %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document text/plain image/jpg  image/jpeg  image/png  image/gif) ] }

end
