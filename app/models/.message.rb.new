class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :phone, :subject, :industry, :content

  validates :name,
    presence: true

  validates :email,
    presence: true

  validates :phone,
    presence: false

  validates :subject,
    presence: true

  validates :industry,
    presence: false

  validates :content,
    presence: true

end
