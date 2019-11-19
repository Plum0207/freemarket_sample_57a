class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :body, length: { in: 1..1000}, presence: true
end
