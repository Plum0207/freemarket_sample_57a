class UserAddress < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, inverse_of: :user_address
  belongs_to_active_hash :pref
  
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :city, presence: true
  validates :postal_code, length: { maximum: 9, too_long: 'は8文字以内で記入してください'}, presence: true
  validates :address, presence: true
end

# たぶん上記で合ってるので要確認
