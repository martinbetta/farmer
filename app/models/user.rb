class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum status: [ :user, :producer ]
  
  has_many :orders
  has_many :products
  has_one :vendor_info
  validates :first_name, :last_name, :address, :role, presence: true

  enum role: [ :buyer, :vendor ]
end
