class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :user_address
  accepts_nested_attributes_for :user_address
  has_many :items

  validates :nickname, length: { maximum: 15, message: '15文字以内で記入してください'}, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/, message: "フォーマットが不適切です"}, presence: true
  validates_uniqueness_of :email, message: '既に登録されています' 
  validates :password, length: { minimum: 6, message: '6文字以上で記入してください'}, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :birthday, presence: true
end
