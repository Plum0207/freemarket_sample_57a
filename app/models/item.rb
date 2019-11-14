class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  belongs_to :brand
  belongs_to :category
end
