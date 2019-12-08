class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to :brand
  belongs_to :category

  enum size: { XXS: 0, XS: 1, S: 2, M: 3, L: 4, XL: 5, XXL: 6, XXXL: 7, XXXXXL: 8, free_size: 9 }
  enum condition: { unused: 0, like_new: 1, invisibly_damaged: 2, slightly_damaged: 3, damaged: 4, bad: 5 }
  enum postage_burden: { including_postage: 0, cash_on_delivery: 1 }
  enum sending_method: { undecided: 0, mercari_bin: 1, yu_mail: 2, letter_pack: 3, post: 4, kuroneko: 5, yu_pack: 6, click_post: 7, yu_packet: 8 }
  enum shipping_date: { within_two_days: 0, within_three_days: 1, within_seven_days: 2 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :pref
end
