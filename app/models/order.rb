class Order < ApplicationRecord

  belongs_to :user
  has_many :order_items
  monetize :total_price_cents
  
end
