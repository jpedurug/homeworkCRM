class Contact < ApplicationRecord
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: false }
end
