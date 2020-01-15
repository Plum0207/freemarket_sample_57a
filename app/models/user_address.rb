class UserAddress < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, inverse_of: :user_address
  belongs_to_active_hash :pref
  
  validates :telephone, length: { maximum: 11, too_long: 'は11文字以内で記入してください'}, presence: true
  validates :last_name, presence: true, on: :create
  validates :first_name, presence: true, on: :create
  validates :last_name_kana, presence: true, on: :create
  validates :first_name_kana, presence: true, on: :create
  validates :prefecture, presence: true, on: :create
  validates :city, presence: true, on: :create
  validates :postal_code, length: { maximum: 8, too_long: 'は8文字以内で記入してください'}, presence: true, on: :create
  validates :address, presence: true, on: :create
end
