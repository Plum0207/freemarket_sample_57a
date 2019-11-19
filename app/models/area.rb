class Area < ApplicationRecord
  has_many :items
  has_many :user_addresses
  has_many :identity_informations
end
