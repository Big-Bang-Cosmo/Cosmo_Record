class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
<<<<<<< HEAD
  has_many :cart_items, dependent: :destroy

=======
  has_many :deliveries, dependent: :destroy
  accepts_nested_attributes_for :deliveries, allow_destroy: true
>>>>>>> b3929e532b7ba2906ebd271bea9cf82334691810
end
