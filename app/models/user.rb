class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :products
  has_one :vendor_info
  validates :first_name, :last_name, :address, :role, presence: true

  enum role: [ :buyer, :vendor ]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
