class Contact < ApplicationRecord
  validates :name,              presence: true
  validates :ruby,              presence: true
  validates :email,             presence: true
  validates :item,              presence: true
  validates :content,           presence: true
end
