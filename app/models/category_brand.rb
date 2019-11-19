class CategoryBrand < ApplicationRecord
  belongs_to :categories
  belongs_to :brands
end
