class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :user_address
  accepts_nested_attributes_for :user_address
  has_many :items

  validates :nickname, length: { maximum: 15, message: 'は15文字以内で記入してください', allow_blank: true}, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/,  allow_blank: true}, presence: true
  validates_uniqueness_of :email
  validates :password, length: { minimum: 6, allow_blank: true}, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :birthday, presence: true
end
