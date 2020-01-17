class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :item

  #バリデーション
  validates :image, presence: true

end
