class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :deliveries, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :deliveries, allow_destroy: true

  validates :last_name, presence: :true
  validates :first_name, presence: :true
  validates :last_name_ruby, presence: :true
  validates :first_name_ruby, presence: :true
  validates :gender, presence: :true

end
