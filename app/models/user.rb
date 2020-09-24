class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # enum status: [ :user, :producer ]


  has_many :orders
  has_many :products
  has_one :vendor_info
  validates :first_name, :last_name, :address, :role, presence: true

  #delegate :company_name, to: :vendor_info
  enum role: [ :buyer, :vendor ]

  # accepts_nested_attributes_for :vendor_info

  # delegate :company_name, to: :vendor_info
end
