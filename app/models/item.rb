class Item < ApplicationRecord
  #アソシエーション
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to :brand
  belongs_to :category

  # enumの定義
  enum size: { XXS: 0, XS: 1, S: 2, M: 3, L: 4, XL: 5, XXL: 6, XXXL: 7, XXXXXL: 8, free_size: 9 }
  enum condition: { unused: 0, like_new: 1, invisibly_damaged: 2, slightly_damaged: 3, damaged: 4, bad: 5 }
  enum postage_burden: { including_postage: 0, cash_on_delivery: 1 }
  enum sending_method: { undecided: 0, mercari_bin: 1, yu_mail: 2, letter_pack: 3, post: 4, kuroneko: 5, yu_pack: 6, click_post: 7, yu_packet: 8 }
  enum shipping_date: { within_two_days: 0, within_three_days: 1, within_seven_days: 2 }

  # 都道府県のactive_hash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :pref

  # # 今後実装：孫カテゴリーのみを許可する検証
  # カテゴリの孫idを取得
  # grand_children_ids = Category.where("ancestry LIKE ?", "%/%").pluck(:id)

  # バリデーション
  validates :seller_id, presence: true
  validates :name, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :category_id, presence: true
            # 今後実装：孫カテゴリーのみを許可する検証
            #, inclusion: { in: grand_children_ids }
  validates :condition, presence: true
  validates :postage_burden, presence: true
  validates :sending_method, presence: true
  validates :prefecture_from, presence: true
  validates :shipping_date, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
end